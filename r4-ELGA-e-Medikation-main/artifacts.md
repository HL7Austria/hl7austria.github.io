# HL7.AT.FHIR.ELGA.EMED.R4\Artifacts Summary - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ELGA e-Medikation Abgabe](StructureDefinition-at-emed-medicationdispense.md) | Abgabe |
| [ELGA e-Medikation Composition Medikationsplan](StructureDefinition-at-emed-composition-medikationsplan.md) | **Beschreibung:** Composition legt Inhalte des Medikationsplans (Dokument) fest. Beinhaltet:* Medikationsplan (List)
* Medikationsplaneinträge (MedicationRequest)
* Referenzen zu geplanten Abgaben (entsprechen Rezepten)
Bundle (type=document) ├─ Composition ├─ MedicationRequest 1 ├─ MedicationRequest 2 └─ List (referenziert 1+2) |
| [ELGA e-Medikation Document Bundle Medikationsplan](StructureDefinition-at-emed-bundle-document-medikationsplan.md) | **Beschreibung:** ELGA e-Medikation Document Bundle zur Anzeige des Medikationsplans mit allen Medikationsplaneinträgen. Beinhaltet:* Medikationsplan (List)
* Medikationsplaneinträge (MedicationRequest)
* Referenzen zu geplanten Abgaben (entsprechen Rezepten)
Bundle (type=document) ├─ Composition (AtEmedCompositionMedikationsplan) ├─ MedicationRequest 1 (AtEmedMedicationRequestPlaneintrag) ├─ MedicationRequest 2 (AtEmedMedicationRequestPlaneintrag) └─ List (referenziert 1+2) (AtEmedListMedikationsplan) |
| [ELGA e-Medikation Geplante Abgabe](StructureDefinition-at-emed-medicationrequest-geplanteAbgabe.md) | **Beschreibung:** Bildet eine geplante Abgabe eines Arzneimittels aus dem zugrundeliegenden Medikationsplaneintrag des ELGA-Teilnehmers ab. Sie enthält das verordnete Arzneimittel und dessen Dosierung und spielgelt die Inhalte des e-Rezepts wider. Geplante Abgaben dienen somit der Nachvollziehbarkeit der rezeptierten Arzneimittel in der e-Medikation. Als groupIdentifier dient die Geplante-Abgabe-ID (früher eMED-ID), die auch im e-Rezept mitgeführt wird. Werden mehrere Arzneimittel gleichzeitig verordnet, wird für jedes Arzneimittel eine geplante Abgabe mit demselben groupIdentifier erstellt (bildet 'Rezept-Klammer'). Verwendet R5 Backport Extensions. |
| [ELGA e-Medikation Medication](StructureDefinition-at-emed-medication.md) | Arzneimittel |
| [ELGA e-Medikation Medikationsplan](StructureDefinition-at-emed-list-medikationsplan.md) | **Beschreibung:** Bildet den Medikationsplan eines ELGA Teilnehmers ab. Enthält verordnete Arzneimittel und deren Dosierung in Form von 0..* Medikationsplaneinträgen (AtEmedMedicationRequestPlaneintrag). Die Reihenfolge der Einträge ist fachlich relevant. |
| [ELGA e-Medikation Planeintrag](StructureDefinition-at-emed-medicationrequest-planeintrag.md) | **Beschreibung:** Bildet einen Medikationsplaneintrag im Medikationsplan eines ELGA Teilnehmers ab. Er enthält genau ein Arzneimittel und dessen Dosierung. Kann in weiterer Folge dazu dienen, eine geplante Abgabe zu erstellen (AtEmedMedicationRequestGeplanteAbgabe). |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ELGA e-Medikation MedicationRequest Kategorie ValueSet](ValueSet-MedicationRequestCategoryVS.md) | ValueSet für Zulässige Ausprägungen der MedicationRequest Kategorie. Dient der Unterscheidung von geplanten Abgaben und Medikationsplaneinträgen |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ELGA e-Medikation MedicationRequest Kategorie CodeSystem](CodeSystem-MedicationRequestCategoryCS.md) | Zulässige Ausprägungen der MedicationRequest Kategorie. Dient der Unterscheidung von geplanten Abgaben und Medikationsplaneinträgen. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [AtEmedExamplePatient01](Patient-AtEmedExamplePatient01.md) |  |
| [Beispiel Durchgeführte Abgabe 1](MedicationDispense-AtEmedExampleDurchgefuehrteAbgabe01.md) | Beispiel Durchgeführte Abgabe 1 |
| [Beispiel Geplante Abgabe 1](MedicationRequest-AtEmedExampleGeplanteAbgabe01.md) | Beispiel Geplante Abgabe 1 |
| [Beispiel Medication Cefuroxime](Medication-AtEmedExampleMedicationCefuroxime.md) | Beispiel Medication Cefuroxime |
| [Beispiel Medikationsplaneintrag 1](MedicationRequest-AtEmedExamplePlaneintrag01.md) | Beispiel Medikationsplaneintrag 1 |
| [Beispiel eines Document Bundles Medikationsplan 1](Bundle-AtEmedExampleBundleDocumentMedikationsplan01.md) | Beispiel eines Document Bundles Medikationsplan 1 |
| [Example Medikationsplan 1](List-AtEmedExampleMedikationsplan01.md) | Example Medikationsplan 1 |
| [ExampleArzt](Practitioner-ExampleArzt.md) |  |
| [ExampleMedikationsplanList](List-ExampleMedikationsplanList.md) |  |
| [ExamplePatient](Patient-ExamplePatient.md) |  |
| [ExamplePlaneintragMed1](MedicationRequest-ExamplePlaneintragMed1.md) |  |
| [ExamplePlaneintragMed2](MedicationRequest-ExamplePlaneintragMed2.md) |  |
| [HL7ATCorePractitioner](Practitioner-at-emed-example-practitioner-01.md) | Beispiel eines behandelnden Arztes |
| [Medikationsplan](Composition-ExampleMedikationsplanComposition.md) |  |

