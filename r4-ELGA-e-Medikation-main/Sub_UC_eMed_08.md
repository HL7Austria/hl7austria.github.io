# HL7.AT.FHIR.ELGA.EMED.R4\​Technische Use Cases für Geplante Abgabe schreiben (UC_eMed_08) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Overview Use Case**](overview_use_case.md)
* **​Technische Use Cases für Geplante Abgabe schreiben (UC_eMed_08)**

## ​Technische Use Cases für Geplante Abgabe schreiben (UC_eMed_08)

### Sub_UC_eMed_08_01 - Geplante Abgabe erfassen

Ein GDA kann basierend auf einem **bestehenden** [Medikationsplaneintrag](design_choices.md#medikationsplaneintrag-bzw-planeintrag-atelgaemedmedicationrequestplaneintrag-medicationrequest) eine oder mehrere [Geplanten Abgaben](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md) erstellen. Je verordnetes Medikament **muss** eine **Geplante Abgabe** erstellt werden.

Sollte für eine **Geplante Abgabe** noch kein Medikationsplaneintrag existieren, muss dieser zuerst erstellt werden (siehe [Sub_UC_eMed_06_03 - Medikationsplaneintrag in Medikationsplan hinzufügen](Sub_UC_eMed_06.md#sub_uc_emed_06_03---medikationsplaneintrag-in-medikationsplan-hinzufügen)). Bei Bedarf kann ein bestehender Medikationsplaneintrag angepasst werden (siehe [Sub_UC_eMed_06_06 - Medikationsplaneintrag im Medikationsplan ändern](Sub_UC_eMed_06.md#sub_uc_emed_06_06---medikationsplaneintrag-im-medikationsplan-ändern)).

Ist keine Anpassung des Medikationsplaneintrags erforderlich, führt der GDA ein [$plan-read](interactions.md#plan-read) aus und erhält von der Fachanwendung das [Auslieferungs-Collection-Bundle](design_choices.md#auslieferungs-medikationsplan-collection-bundle), das den Medikationsplan mit allen relevanten Ressourcen enthält.

Basierend auf darin vorhandenen Planeinträgen erstellt der GDA neue **Geplante Abgabe**n wie folgt:

* Der Status der neuen geplanten Abgabe muss **offen** sein (**active**, siehe [Status des MedicationRequests in der geplanten Abgabe](workflowmanagement.md#status-des-medicationrequests-in-der-geplanten-abgabe))
* Die **Rezeptart** muss verpflichtend ausgewählt werden (**Kassenrezept, Privatrezept** oder **Substitutionsrezept**)
* Die **Medikation** soll fachlich jener des Planeintrags entsprechen. Enthält der Planeintrag ausschließlich Wirkstoffe, ist verpflichtend ein entsprechendes Medikament aus der ASP-Liste (inkl. PZN) bzw. eine magistrale Zubereitung zu dokumentieren.
* Werden mehrere Medikamente gleichzeitig verordnet und sollen demselben e-Rezept zugeordnet werden, muss jede erstellte **Geplante Abgabe** mit demselben **groupIdentifier** versehen werden. Mithilfe dieser eindeutigen Kennung ('Rezept-Klammer') können berechtigte Akteure später gezielt nach zusammengehörenden **Geplanten Abgaben** suchen. Der hierfür verwendete **e-Med GroupIdentifier** kann über unterschiedliche Varianten bezogen werden (siehe [Ablauf und Bezug e-Med GroupIdentifier](Sub_UC_eMed_08.md#ablauf-und-bezug-e-med-groupidentifier)). In einem Bundle dürfen nur **Geplanten Abgaben** mit dem gleichen **e-Med GroupIdentifier** enthalten sein.
* **Dosierangaben** können optional angepasst werden.
* Abhängig von der ausgewählten **Rezeptart** (siehe [Gültigkeit von Geplanten Abgaben basierend auf der Rezeptart](workflowmanagement.md#gültigkeit-von-geplanten-abgaben-basierend-auf-der-rezeptart)) können: 
* der **Gültigkeitszeitraum** (**dispenseRequest.validityPeriod**), innerhalb dessen die **Geplante Abgabe** eingelöst werden kann, sowie
* die Anzahl möglicher weiterer **Einlösungen** (**dispenseRequest.numberOfRepeatsAllowed**) festgelegt werden
 
* Die **Menge** (Anzahl Packungen), die bei jeder Abgabe bereitgestellt werden soll, ist verpflichtend zu dokumentieren (**dispenseRequest.quantity**).

Die erstellten **Geplanten Abgaben** werden in einem Bundle vom Typ Transaction mittels [Prescription-Write](interactions.md#prescription-write) an die Fachanwendung übermittelt wird.

#### Ablauf und Bezug e-Med GroupIdentifier

Der Ablauf zur Erstellung von **Geplanten Abgaben** und der Bezug des **e-Med GroupIdentifiers** kann unterschiedlich erfolgen. Exemplarisch werden 3 Varianten angeführt.

##### Variante A: Vorab-Ermittlung des e-Med GroupIdentifiers

Der **e-Med GroupIdentifier** ("Rezeptklammer") wird via POST $groupidentifier-create vorab von der Fachanwendung bezogen, in den **Geplanten Abgaben** ergänzt und zur Erstellung des e-Rezepts an die e-Rezept-Anwendung mitgegeben, um dieses mit den **Geplanten Abgaben** zu verknüpfen. Der Trigger zu Erstellung des e-Rezepts und [Prescription-Write](interactions.md#prescription-write) können parallel erfolgen (siehe Normalfall).

Liefert e-Rezept einen Fehler zurück, können mittels POST $prescription-discard bereits in der e-Medikation erstellte **Geplante Abgaben** verworfen werden (siehe Sub_UC_eMed_08_04 - Geplante Abgabe verwerfen). Liefert die e-Medikation Fachanwendung einen Fehler zurück, kann nach Fehlerkorrektur erneut ein **Prescription-Write** erfolgen oder ein bereits durch den **e-Med groupIdentifer** verknüpftes e-Rezept wieder von den **Geplanten Abgaben** "entkoppelt" werden (siehe Fehlerfall). 

###### Variante A: Normalfall

###### Variante A: Fehlerfall

##### Variante B: Sequentielles Erstellen von Geplanter Abgabe und e-Rezept

Alternativ kann der **e-Med GroupIdentifier** durch die Fachanwendung automatisch ergänzt werden, wenn dieser beim Prescription-Write nicht in den **Geplanten Abgaben** im Transaction Bundle enthalten ist. Dadurch bleibt das Verhalten konsistent zur bestehenden e-Medikations-Implementierung. Hierfür müssen die Geplanten Abgaben zuerst an die e-Medikation Fachanwendung übermittelt werden. Der Server ergänzt den **e-Med GroupIdentifier** während der Transaktionsverarbeitung. Die persistierten Ressourcen einschließlich des erzeugten groupIdentifiers werden im Response an den Client zurückgegeben. Im Anschluss kann der Trigger zur Erstellung des e-Rezepts inkl. **e-Med GroupIdentifier** erfolgen.

##### Variante C: Nachträgliche Verknüpfung des e-Rezepts mit dem e-Med GroupIdentifier

Der Trigger zu Erstellung des e-Rezepts und [Prescription-Write](interactions.md#prescription-write) können parallel erfolgen (Variante A), allerdings noch ohne **e-Med GroupIdentifier**. Die e-Medikation Fachanwendung ergänzt diesen und liefert ihn an den Client zurück (wie in Variante B), der Client führt im Anschluss eine nachträgliche Verknüfung des bereits erstellten e-Rezepts mit den geplanten Abgaben mittels **e-Med GroupIdentifier** durch.

#### Relevante Elemente (MedicationRequest)

```
AtElgaEmedMedicationRequestGeplanteAbgabe
    status: active 
    category: recipetype                     // Verpflichtende Angabe der Rezeptart
    medicationReference.reference: Medikation gemäß zugehörigem Planeintrag // Contained Medication
    authoredOn: Datum der Erstellung der Geplanten Abgabe
    requester: veranwortlicher GDA für die Geplante Abgabe  // wird auf Übereinstimmung mit List.source geprüft
    basedOn: id des zugehörigen Medikationsplaneintrags
    groupIdentifier: e-Med GroupIdentifier  // optionale Rezeptklammer 
    dosageInstruction: Dosierung + Einnahmezeitraum (ab sofort | in der Zukunft) 
    dispenseRequest.validityPeriod: Gültigkeitszeitraum // abhängig von Rezeptart bzw. verkürzt durch GDA
    dispenseRequest.numberOfRepeatsAllowed: Anzahl weiterer Einlösungen // abhängig von Rezeptart
    dispenseRequest.quantity: Abzugebende Menge (Packungen) je Abgabe

```

### Sub_UC_eMed_08_04 - Geplante Abgabe verwerfen

Ein GDA kann von ihm erstellte **Geplante Abgaben** aufgrund eines Fehlers verwerfen, solange noch **keine Abgaben durchgeführt** wurden. Die verworfene **Geplante Abgabe** wird damit abgeschlossen, kann aber über die Historie der **Geplanten Abgaben** eingesehen werden. 

Um eine **Geplante Abgabe** zu verwerfen, führt der GDA die Operation [$prescription-discard​](interactions.md#prescription-discard) aus:

* Der Status der **Geplante Abgaben** wird auf **entered-in-error** gesetzt (siehe [Status des MedicationRequests in der geplanten Abgabe](workflowmanagement.md#status-des-medicationrequests-in-der-geplanten-abgabe)),
* das Datum in **authoredOn** wird aktualisiert.

#### Relevante Elemente (MedicationRequest)

```
AtElgaEmedMedicationRequestGeplanteAbgabe
    status: entered-in-error 
    authoredOn: Datum des Verwerfens der Geplanten Abgabe
    requester: veranwortlicher GDA für das Verwerfen der Geplanten Abgabe // ursprünglicher Ersteller

```

### Sub_UC_eMed_08_02 - Geplante Abgabe beenden (durch Fachanwendung)

Wurden alle möglichen Einlösungen einer **Geplanten Abgabe** planmäßig durchgeführt (gemäß dem ausgewählten Rezepttyp oder den Einschränkungen des GDAs), setzt die Fachanwendung die **Geplante Abgabe** automatisch auf den Status **completed** (siehe [Status des MedicationRequests in der geplanten Abgabe](workflowmanagement.md#status-des-medicationrequests-in-der-geplanten-abgabe)). Die **Geplante Abgabe** ist damit abgeschlossen.

Sonderfall: Wenn die letzte durchgeführte Abgabe danach verworfen wird (Status **entered-in-error**), wird der Status der **Geplanten Abgabe** durch die Fachanwendung wieder auf **active** gesetzt.

#### Relevante Elemente (MedicationRequest)

```
AtElgaEmedMedicationRequestGeplanteAbgabe
    status: completed
    authoredOn: Datum der Erstellung der geplanten Abgabe  // bleibt unverändert
    requester: Ursprünglicher Ersteller                    // bleibt unverändert

```

### Sub_UC_eMed_08_03 - Geplante Abgabe abgelaufen (durch Fachanwendung)

Ist der Einlösezeitraum der **Geplanten Abgabe** gemäß der ausgewählten Rezeptart (category:recipetype) oder den Einschränkungen des GDAs überschritten, setzt die Fachanwendung die **Geplante Abgabe** automatisch auf den Status **stopped** (siehe [Status des MedicationRequests in der geplanten Abgabe](workflowmanagement.md#status-des-medicationrequests-in-der-geplanten-abgabe)). Die **Geplanten Abgabe** ist damit abgeschlossen.

#### Relevante Elemente (MedicationRequest)

```
AtElgaEmedMedicationRequestGeplanteAbgabe
    status: stopped
    authoredOn: Datum der Erstellung der geplanten Abgabe  // bleibt unverändert
    requester: Ursprünglicher Ersteller                    // bleibt unverändert

```

### Sub_UC_eMed_08_03 - Geplante Abgabe gecancelt (durch Fachanwendung)

Eine **Geplante Abgabe** erhält automatisch den Status **cancelled** (siehe [Status des MedicationRequests in der geplanten Abgabe](workflowmanagement.md#status-des-medicationrequests-in-der-geplanten-abgabe)), wenn alle **Durchgeführten Abgaben** (jede Einlösung) den Status **cancelled** erhalten haben ("Leerabgabe", d.h. keine Abgabe durchgeführt). Die **Geplanten Abgabe** ist damit abgeschlossen.

Sonderfall: Wenn die letzte **Durchgeführte Abgabe** danach verworfen wird (Status **entered-in-error**), wird der Status der **Geplanten Abgabe** durch die Fachanwendung wieder auf **active** gesetzt.

#### Relevante Elemente (MedicationRequest)

```
AtElgaEmedMedicationRequestGeplanteAbgabe
    status: cancelled
    authoredOn: Datum der Erstellung der geplanten Abgabe  // bleibt unverändert
    requester: Ursprünglicher Ersteller                    // bleibt unverändert

```

### Sub_UC_eMed_08_05 - Geplante Abgabe löschen (durch ELGA-Teilnehmer)

Der ELGA-Teilnehmer kann eine **Geplante Abgabe** endgültig löschen. Bereits dokumentierte **Durchgeführte Abgaben** sowie bestehende Planeinträge bleiben davon unberührt.

Die Löschung der **Geplanten Abgabe** umfasst:

* die fachliche Entfernung der betreffenden MedicationRequest-Ressource sowie
* die Entfernung aller zugehörigen historischen Ressourcen-Versionen (_history).

Zum Löschen einer **Geplanten Abgabe** ruft der ELGA-Teilnehmer diese im ELGA-Portal auf. Dieses führt zunächst eine Leseoperation auf die betreffende MedicationRequest-Ressource aus (GET MedicationRequest/[id]) und löscht anschließend die betreffende **Geplante Abgabe** mittels DELETE (DELETE [base]/MedicationRequest/[id]).

Die Ressource einschließlich aller historischen Versionen darf nach erfolgreicher Löschung weder über reguläre FHIR-Interaktionen noch über administrative Schnittstellen abrufbar sein.

