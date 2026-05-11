# HL7.AT.FHIR.ELGA.EMED.R4\​Technische Use Cases für Geplante Abgabe schreiben (UC_eMed_08) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Overview Use Case**](overview_use_case.md)
* **​Technische Use Cases für Geplante Abgabe schreiben (UC_eMed_08)**

## ​Technische Use Cases für Geplante Abgabe schreiben (UC_eMed_08)

#### Sub_UC_eMed_08_01 - Geplante Abgabe basierend auf bestehenden Planeintrag erfassen (unverändert)

Ein GDA kann basierend auf einem bestehenden Medikationsplaneintrag ein oder mehrere geplanten Abgaben erstellen und das Erzeugen eines e-Rezepts auslösen.

Sollte für die geplante Abgabe noch kein zugehöriger Medikationsplaneintrag existieren, muss dieser zuerst erstellt werden (siehe [Sub_UC_eMed_06_03 - Medikationsplaneintrag in Medikationsplan hinzufügen](Sub_UC_eMed_06.md#sub_uc_emed_06_03---medikationsplaneintrag-in-medikationsplan-hinzufügen)).

Ist keine Anpassung des Medikationsplaneintrags erforderlich, führt der GDA ein [$readtowrite](interactions.md#read-to-write-zugriff) aus und erhält von der Fachanwendung das aktuelle Collection Bundle (AtEmedBundleMedikationsplan), das den Medikationsplan mit allen relevanten Ressourcen enthält. Basierend auf vorhandenen Planeinträgen (AtElgaEmedMedicationRequestPlaneintrag) erstellt der GDA neue geplante Abgaben (AtElgaEmedMedicationRequestGeplanteAbgabe) wie folgt:

* Der Status der neuen geplanten Abgabe ist offen (**active**)
* Die Rezeptart muss verpflichtend ausgewählt werden (**Kassenrezept, Privatrezept** oder **Substitutionsrezept**)
* Die Medikation ist gemäß Planeintrag zu übernehmen. Enthält der Planeintrag ausschließlich Wirkstoffe, ist ein entsprechendes Medikament aus der ASP-Liste (inkl. PZN) bzw. eine magistrale Zubereitung zu dokumentieren. 
* Werden mehrere geplante Abgaben zeitgleich erstellt, können diese mittels gleichem **e-Med groupIdentifier** versehen werden ("Rezeptklammer", die auch im e-Rezept mitgeführt wird). Diese eindeutige Kennung kann von der Fachanwendung über eine Schnittstelle angefordert werden und ermöglicht berechtigten Akteuren eine gezielte Suche nach geplanten Abgaben.
* Dosierangaben können angepasst werden
* Der Gültigkeitszeitraum (**dispenseRequest.validityPeriod**), innerhalb dessen geplante Abgaben eingelöst werden können,
* sowie die Anzahl möglicher weiterer Einlösungen (**dispenseRequest.numberOfRepeatsAllowed**) ist abhängig von der ausgewählten **Rezeptart** (siehe Status der geplanten Abgabe)
* Die Menge des Medikaments, die bei jeder Abgabe bereitgestellt werden soll, ist zu dokumentieren (**dispenseRequest.quantity**). 

##### Ablauf

##### Relevante Elemente (MedicationRequest)

```
AtElgaEmedMedicationRequestGeplanteAbgabe
    status: active 
    category:recipetype                     // Verpflichtende Angabe der Rezeptart
    medicationReference.reference: Medikation mit PZN oder Magistrale Anwendung // Contained Medication, diese muss der Medikation aus dem Medikationsplaneintrag entsprechen
    authoredOn: Datum der Erstellung des Medikationsplaneintrags    
    requester: veranwortlicher GDA         // wird auf Übereinstimmung mit List.source geprüft
    basedOn: Referenz auf den zugehörigen Medikationsplaneintrag 
    groupIdentifier: e-Med-ID              // Rezeptklammer 
    dosageInstruction: Dosierung + Einnahmezeitraum (ab sofort | in der Zukunft) 
    dispenseRequest.validityPeriod         // abhängig von Rezeptart, bzw. verkürzt durch gda
    dispenseRequest.numberOfRepeatsAllowed // abhängig von Rezeptart
    dispenseRequest.quantity

```

#### Sub_UC_eMed_08_02 - Geplante Abgabe basierend auf neuem Planeintrag erfassen

##### Ablauf

#### Sub_UC_eMed_08_02 - Geplante Abgabe beenden

#### Beispiel

#### Technische Hinweise

#### Relevante Profile

#### Relevante Invarianten

#### Mögliche Notifications

