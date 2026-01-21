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
| [ELGA e-Medikation Geplante Abgabe](StructureDefinition-at-emed-medicationrequest-geplanteAbgabe.md) | **Beschreibung:** Bildet eine geplante Abgabe eines Arzneimittels aus dem zugrundeliegenden Medikationsplaneintrag des ELGA-Teilnehmers ab. Sie enthält das verordnete Arzneimittel und dessen Dosierung und spielgelt die Inhalte des e-Rezepts wider. Geplante Abgaben dienen somit der Nachvollziehbarkeit der rezeptierten Arzneimittel in der e-Medikation. Als groupIdentifier dient die Geplante-Abgabe-ID (früher eMED-ID), die auch im e-Rezept mitgeführt wird. Werden mehrere Arzneimittel gleichzeitig verordnet, wird für jedes Arzneimittel eine geplante Abgabe mit demselben groupIdentifier erstellt (bildet 'Rezept-Klammer'). |
| [ELGA e-Medikation Medication](StructureDefinition-at-emed-medication.md) | Arzneimittel |
| [ELGA e-Medikation Medikationsplan](StructureDefinition-at-emed-list-medikationsplan.md) | **Beschreibung:** Bildet den Medikationsplan eines ELGA Teilnehmers ab. Enthält verordnete Arzneimittel und deren Dosierung in Form von 0..* Medikationsplaneinträgen (AtEmedMedicationRequestPlaneintrag). |
| [ELGA e-Medikation Planeintrag](StructureDefinition-at-emed-medicationrequest-planeintrag.md) | **Beschreibung:** Bildet einen Eintrag eines Medikationsplans eines ELGA Teilnehmers ab. Er enthält genau ein verordnetes Arzneimittel und dessen Dosierung. Dient in weiterer Folge dazu, eine geplante Abgabe zu erstellen (AtEmedMedicationRequestGeplanteAbgabe). |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [AtEmedExamplePatient01](Patient-AtEmedExamplePatient01.md) |  |
| [AtEmedListMedikationsplan-Beispiel](List-AtEmedExampleListMedikationsplan01.md) | AtEmedListMedikationsplan-Beispiel |
| [AtEmedMedication-Beispiel](Medication-AtEmedMedicationExampleCefuroxime.md) | AtEmedMedication-Beispiel |
| [AtEmedMedicationDispense-Beispiel](MedicationDispense-AtEmedExampleMedicationDispense01.md) | Medication Dispense |
| [AtEmedMedicationRequestGeplanteAbgabe-Beispiel](MedicationRequest-AtEmedExampleMedicationRequestGeplanteAbgabe01.md) | AtEmedMedicationRequestGeplanteAbgabe-Beispiel |
| [AtEmedMedicationRequestPlaneintrag-Beispiel](MedicationRequest-AtEmedExampleMedicationRequestPlaneintrag01.md) | AtEmedMedicationRequestPlaneintrag-Beispiel |
| [HL7ATCorePractitioner](Practitioner-at-emed-example-practitioner-01.md) | Beispiel eines behandelnden Arztes |

