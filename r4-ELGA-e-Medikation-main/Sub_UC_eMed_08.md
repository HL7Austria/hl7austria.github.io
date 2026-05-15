# HL7.AT.FHIR.ELGA.EMED.R4\​Technische Use Cases für Geplante Abgabe schreiben (UC_eMed_08) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Overview Use Case**](overview_use_case.md)
* **​Technische Use Cases für Geplante Abgabe schreiben (UC_eMed_08)**

## ​Technische Use Cases für Geplante Abgabe schreiben (UC_eMed_08)

### Sub_UC_eMed_08_01 - Geplante Abgabe basierend auf Planeintrag erfassen

Ein GDA kann basierend auf einem bestehenden [Medikationsplaneintrag](design_choices.md#medikationsplaneintrag-bzw-planeintrag-atelgaemedmedicationrequestplaneintrag-medicationrequest) ein oder mehrere [geplanten Abgaben](design_choices.md#geplante-abgabe-atelgaemedmedicationrequestgeplanteabgabe-medicationrequest) erstellen und das Erzeugen eines e-Rezepts auslösen.

Sollte für die geplante Abgabe noch kein zugehöriger Medikationsplaneintrag existieren, muss dieser zuerst erstellt werden (siehe [Sub_UC_eMed_06_03 - Medikationsplaneintrag in Medikationsplan hinzufügen](Sub_UC_eMed_06.md#sub_uc_emed_06_03---medikationsplaneintrag-in-medikationsplan-hinzufügen)).

Ist keine Anpassung des Medikationsplaneintrags erforderlich, führt der GDA ein [$readtowrite](interactions.md#read-to-write-zugriff) aus und erhält von der Fachanwendung das [Medikationsplan-Collection-Bundle](design_choices.md#medikationsplan-collection-bundle-atemedbundlemedikationsplan-collection-bundle) ("Auslieferungs-Collection-Bundle"), das den Medikationsplan mit allen relevanten Ressourcen enthält. Basierend auf vorhandenen Planeinträgen erstellt der GDA neue geplante Abgaben wie folgt:

* Der Status der neuen geplanten Abgabe ist offen (**active**)
* Die Rezeptart muss verpflichtend ausgewählt werden (**Kassenrezept, Privatrezept** oder **Substitutionsrezept**)
* Die Medikation soll jener des Planeintrags entsprechen. Enthält der Planeintrag ausschließlich Wirkstoffe, ist ein entsprechendes Medikament aus der ASP-Liste (inkl. PZN) bzw. eine magistrale Zubereitung zu dokumentieren.
* Werden mehrere geplante Abgaben erstellt, können diese mittels gleichem **groupIdentifier** versehen werden ("Rezeptklammer", die auch im e-Rezept mitgeführt wird). Diese eindeutige Kennung ermöglicht berechtigten Akteuren eine gezielte Suche nach zusammengehörenden geplanten Abgaben. 
* Hierfür wird der **groupIdentifier** bei der Übermittlung der ersten geplanten Abgabe leer belassen und von der Fachanwendung mit einem **e-Med groupIdentifier** ergänzt.
* Der GDA kann diesen **e-Med groupIdentifier** weiteren geplanten Abgaben hinzufügen.
 
* Dosierangaben können angepasst werden.
* Der Gültigkeitszeitraum (**dispenseRequest.validityPeriod**), innerhalb dessen geplante Abgaben eingelöst werden können,
* sowie die Anzahl möglicher weiterer Einlösungen (**dispenseRequest.numberOfRepeatsAllowed**) ist abhängig von der ausgewählten **Rezeptart** (siehe [Gültigkeit von Geplanten Abgaben basierend auf der Rezeptart](workflowmanagement.md#gültigkeit-von-geplanten-abgaben-basierend-auf-der-rezeptart))
* Die Menge (Anzahl Packungen), die bei jeder Abgabe bereitgestellt werden soll, ist zu dokumentieren (**dispenseRequest.quantity**).

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

### Sub_UC_eMed_08_04 - Geplante Abgabe stornieren (verwerfen)

Ein GDA kann jede bestehende [geplanten Abgabe](design_choices.md#geplante-abgabe-atelgaemedmedicationrequestgeplanteabgabe-medicationrequest) aufgrund einer fehlerhaften Eingabe stornieren (auch wenn er diese nicht selbst erstellt hat), solange noch keine **Abgaben durchgeführt** wurden. Die stornierte Geplante Abgabe wird damit abgeschlossen, kann aber über die Historie der geplanten Abgaben eingesehen werden.   

Um eine geplante Abgabe zu stornieren, ruft der GDA diese mittels GET MedicationRequest ab und bearbeitet diesen wie folgt:

* Der Status wird auf **entered-in-error** gesetzt,
* der verantwortliche GDA (**requester**) und das Datum in **authoredOn** werden entsprechend aktualisiert.

Der GDA übermittelt (via POST MedicationRequest) den aktualisierten Medikationsplan der Fachanwendung.

#### Relevante Elemente (MedicationRequest)

```
AtElgaEmedMedicationRequestGeplanteAbgabe
    status: entered-in-error 
    authoredOn: Datum der Stornierung der Geplanten Abgabe
    requester: veranwortlicher GDA für die Stornierung der Geplante Abgabe  // wird auf Übereinstimmung mit List.source geprüft

```

### Sub_UC_eMed_08_02 - Geplante Abgabe beenden (durch Fachanwendung)

Wurden alle geplanten Abgaben planmäßig durchgeführt (gemäß dem ausgewählten Rezepttyp oder den Einschränkungen des GDAs), setzt die Fachanwendung die geplante Abgabe auf den Status **completed**.

#### Relevante Elemente (MedicationRequest)

```
AtElgaEmedMedicationRequestGeplanteAbgabe
    status: completed
    authoredOn: Datum der Erstellung der geplanten Abgabe  // bleibt unverändert
    requester: Ursprünglicher Ersteller                    // bleibt unverändert

```

### Sub_UC_eMed_08_03 - Geplante Abgabe abgelaufen (durch Fachanwendung)

Ist der Einlösezeitraum der geplanten Abgaben gemäß dem ausgewählten Rezepttyp oder den Einschränkungen des GDAs überschritten, setzt die Fachanwendung die geplante Abgabe auf den Status **stopped**.

#### Relevante Elemente (MedicationRequest)

```
AtElgaEmedMedicationRequestGeplanteAbgabe
    status: stopped
    authoredOn: Datum der Erstellung der geplanten Abgabe  // bleibt unverändert
    requester: Ursprünglicher Ersteller                    // bleibt unverändert

```

### Sub_UC_eMed_08_05 - Geplante Abgabe löschen (durch ELGA-Teilnehmer)

In Arbeit.

