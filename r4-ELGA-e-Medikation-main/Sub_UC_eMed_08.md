# HL7.AT.FHIR.ELGA.EMED.R4\​Technische Use Cases für Geplante Abgabe schreiben (UC_eMed_08) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Overview Use Case**](overview_use_case.md)
* **​Technische Use Cases für Geplante Abgabe schreiben (UC_eMed_08)**

## ​Technische Use Cases für Geplante Abgabe schreiben (UC_eMed_08)

### Sub_UC_eMed_08_01 - Geplante Abgabe erfassen

Ein GDA kann basierend auf einem **bestehenden** [Medikationsplaneintrag](design_choices.md#medikationsplaneintrag-bzw-planeintrag-atelgaemedmedicationrequestplaneintrag-medicationrequest) eine oder mehrere [geplanten Abgaben](design_choices.md#geplante-abgabe-atelgaemedmedicationrequestgeplanteabgabe-medicationrequest) erstellen und das Erzeugen eines e-Rezepts auslösen.

Sollte für die **Geplante Abgabe** noch kein Medikationsplaneintrag existieren, muss dieser zuerst erstellt werden (siehe [Sub_UC_eMed_06_03 - Medikationsplaneintrag in Medikationsplan hinzufügen](Sub_UC_eMed_06.md#sub_uc_emed_06_03---medikationsplaneintrag-in-medikationsplan-hinzufügen)). Bei Bedarf kann ein bestehender Medikationsplaneintrag angepasst werden (siehe [Sub_UC_eMed_06_06 - Medikationsplaneintrag im Medikationsplan ändern](Sub_UC_eMed_06.md#sub_uc_emed_06_06---medikationsplaneintrag-im-medikationsplan-ändern)).

Ist keine Anpassung des Medikationsplaneintrags erforderlich, führt der GDA ein [$readtowrite](interactions.md#read-to-write-zugriff) aus und erhält von der Fachanwendung das [Auslieferungs-Collection-Bundle](design_choices.md#medikationsplan-collection-bundle-zur-auslieferung-des-medikationsplans-bei-einem-read-to-write-zugriff), das den Medikationsplan mit allen relevanten Ressourcen enthält. Basierend auf darin vorhandenen Planeinträgen erstellt der GDA neue **Geplante Abgabe**n wie folgt:

* Der Status der neuen geplanten Abgabe muss **offen** sein (**active**)
* Die **Rezeptart** muss verpflichtend ausgewählt werden (**Kassenrezept, Privatrezept** oder **Substitutionsrezept**)
* Die **Medikation** soll jener des Planeintrags entsprechen. Enthält der Planeintrag ausschließlich Wirkstoffe, ist verpflichtend ein entsprechendes Medikament aus der ASP-Liste (inkl. PZN) bzw. eine magistrale Zubereitung zu dokumentieren.
* Werden mehrere Medikamente gleichzeitig verordnet und sollen demselben e-Rezept zugeordnet werden, wird für jedes Medikament eine **Geplante Abgabe** mit demselben **groupIdentifier** erstellt (bildet 'Rezept-Klammer'). Mithilfe dieser eindeutigen Kennung können berechtigte Akteure gezielt nach zusammengehörenden geplanten Abgaben suchen: 
* Hierfür wird der **e-Med groupIdentifier** von der Fachanwendung bezogen und in den geplanten Abgaben ergänzt.
 
* **Dosierangaben** können optional angepasst werden.
* Der **Gültigkeitszeitraum** (**dispenseRequest.validityPeriod**), innerhalb dessen **Geplante Abgaben** eingelöst werden können, sowie
* die Anzahl möglicher weiterer **Einlösungen** (**dispenseRequest.numberOfRepeatsAllowed**) ist abhängig von der ausgewählten **Rezeptart** (siehe [Gültigkeit von Geplanten Abgaben basierend auf der Rezeptart](workflowmanagement.md#gültigkeit-von-geplanten-abgaben-basierend-auf-der-rezeptart))
* Die **Menge** (Anzahl Packungen), die bei jeder Abgabe bereitgestellt werden soll, ist verpflichtend zu dokumentieren (**dispenseRequest.quantity**).

Im Anschluss wird vom GDA für die Geplanten Abgaben die Erstellung eines e-Rezepts ausgelöst und ein **Transaction Bundle mit den geplanten Abgaben** (mit gleichem **e-Med groupIdentifier**) an die e-Med Fachanwendung übermittelt (via POST [base]/GeplAbgabe/MedicationRequest/).

Wird nur eine einzelne Geplante Abgabe erstellt, kann diese via POST [base]/GeplAbgabe/Bundle/ an die e-Med Fachanwendung übermittelt. 

#### Ablauf

#### Relevante Elemente (MedicationRequest)

```
AtElgaEmedMedicationRequestGeplanteAbgabe
    status: active 
    category: recipetype                     // Verpflichtende Angabe der Rezeptart
    medicationReference.reference: Medikation gemäß zugehörigem Planeintrag // Contained Medication
    authoredOn: Datum der Erstellung der Geplanten Abgabe
    requester: veranwortlicher GDA für die Geplante Abgabe  // wird auf Übereinstimmung mit List.source geprüft
    basedOn: id des zugehörigen Medikationsplaneintrags
    groupIdentifier: e-Med groupIdentifier  // optionale Rezeptklammer 
    dosageInstruction: Dosierung + Einnahmezeitraum (ab sofort | in der Zukunft) 
    dispenseRequest.validityPeriod:         // Gültigkeitszeitraum (abhängig von Rezeptart bzw. verkürzt durch GDA)
    dispenseRequest.numberOfRepeatsAllowed: // Anzahl weiterer Einlösungen (abhängig von Rezeptart)
    dispenseRequest.quantity:               // Abzugebende Menge (Packungen) je Abgabe

```

### Sub_UC_eMed_08_04 - Geplante Abgabe verwerfen

Ein GDA kann jede bestehende [Geplante Abgabe](design_choices.md#geplante-abgabe-atelgaemedmedicationrequestgeplanteabgabe-medicationrequest) aufgrund es Fehlers verwerfen (auch wenn er die **Geplante Abgabe** nicht selbst erstellt hat), solange noch **keine Abgaben durchgeführt** wurden. Die verworfene **Geplante Abgabe** wird damit abgeschlossen, kann aber über die Historie der geplanten Abgaben eingesehen werden.   

Um eine **Geplante Abgabe** zu verwerfen, ruft der GDA diese mittels GET MedicationRequest ab und bearbeitet diesen wie folgt:

* Der Status wird auf **entered-in-error** gesetzt,
* der verantwortliche GDA (**requester**) und das Datum in **authoredOn** werden entsprechend aktualisiert.

Der GDA übermittelt (via POST [base]/GeplAbgabe/Bundle/) den aktualisierten Medikationsplan der Fachanwendung.

#### Relevante Elemente (MedicationRequest)

```
AtElgaEmedMedicationRequestGeplanteAbgabe
    status: entered-in-error 
    authoredOn: Datum des Verwerfens der Geplanten Abgabe
    requester: veranwortlicher GDA für das Verwerfen der Geplanten Abgabe  // wird auf Übereinstimmung mit List.source geprüft

```

### Sub_UC_eMed_08_02 - Geplante Abgabe beenden (durch Fachanwendung)

Wurden alle geplanten Abgaben planmäßig durchgeführt (gemäß dem ausgewählten Rezepttyp oder den Einschränkungen des GDAs), setzt die Fachanwendung die **Geplante Abgabe** automatisch auf den Status **completed**.

Sonderfall: Wenn die letzte durchgeführte Abgabe danach verworfen wird (Status **entered-in-error**), wird der Status der geplanten Abgabe durch die Fachanwendung wieder auf **active** gesetzt.

#### Relevante Elemente (MedicationRequest)

```
AtElgaEmedMedicationRequestGeplanteAbgabe
    status: completed
    authoredOn: Datum der Erstellung der geplanten Abgabe  // bleibt unverändert
    requester: Ursprünglicher Ersteller                    // bleibt unverändert

```

### Sub_UC_eMed_08_03 - Geplante Abgabe abgelaufen (durch Fachanwendung)

Ist der Einlösezeitraum der geplanten Abgaben gemäß dem ausgewählten Rezepttyp oder den Einschränkungen des GDAs überschritten, setzt die Fachanwendung die **Geplante Abgabe** automatisch auf den Status **stopped**.

#### Relevante Elemente (MedicationRequest)

```
AtElgaEmedMedicationRequestGeplanteAbgabe
    status: stopped
    authoredOn: Datum der Erstellung der geplanten Abgabe  // bleibt unverändert
    requester: Ursprünglicher Ersteller                    // bleibt unverändert

```

### Sub_UC_eMed_08_05 - Geplante Abgabe löschen (durch ELGA-Teilnehmer)

Der ELGA-Teilnehmer kann eine **Geplante Abgabe** endgültig löschen. Bereits dokumentierte durchgeführte Abgaben sowie bestehende Planeinträge bleiben davon unberührt.

Die Löschung der geplanten Abgabe umfasst:

* die fachliche Entfernung der betreffenden MedicationRequest-Ressource sowie
* die Entfernung aller zugehörigen historischen Ressourcenversionen (_history).

Zum Löschen einer geplanten Abgabe ruft der ELGA-Teilnehmer die betreffende **Geplante Abgabe** im ELGA-Portal auf. Dieses führt zunächst eine Leseoperation auf die betreffende MedicationRequest-Ressource aus (GET MedicationRequest/[id]) und löscht anschließend die betreffende **Geplante Abgabe** mittels DELETE (DELETE [base]/MedicationRequest/[id]).

Die Ressource einschließlich aller historischen Versionen darf nach erfolgreicher Löschung weder über reguläre FHIR-Interaktionen noch über administrative Schnittstellen abrufbar sein.

