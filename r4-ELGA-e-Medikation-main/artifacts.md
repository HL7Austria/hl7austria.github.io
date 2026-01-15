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
| [ELGA e-Medikation Medication](StructureDefinition-at-emed-medication.md) | Arzneimittel |
| [ELGA e-Medikation Medikationsplan](StructureDefinition-at-emed-list-medikationsplan.md) | **Beschreibung:**Bildet den Medikationsplan eines ELGA Teilnehmers ab. Enthält verordnete Arzneimittel und deren Dosierung in Form von 0..* Medikationsplaneinträgen (AtEmedMedicationRequestPlaneintrag). |
| [ELGA e-Medikation Planeintrag](StructureDefinition-at-emed-medicationrequest-planeintrag.md) | **Beschreibung:**Bildet einen Eintrag eines Medikationsplans eines ELGA Teilnehmers ab. Er enthält genau ein verordnetes Arzneimittel und dessen Dosierung. Dient in weiterer Folge dazu, eine geplante Abgabe zu erstellen (AtEmedMedicationRequestGeplanteAbgabe). |
| [ELGA e-Medikation geplante Abgabe](StructureDefinition-at-emed-medicationrequest-geplanteAbgabe.md) | **Beschreibung:**Bildet eine geplante Abgabe eines Arzneimittels aus dem entsprechendem Medikationsplaneintrag des ELGA Teilnehmers ab (Rezeptierung). Sie enthält das verordnetes Arzneimittel und dessen Dosierung, der Status ist bei Ausstellung aktiv. Als groupIdentifier dient die eMED-ID, die auch im e-Rezept mitgeführt wird. Werden mehrere Arzneimittel gleichzeitig verordnet, so wird für jedes Arzneimittel eine eigene geplante Abgabe erstellt, der groupIdentifier ist aber für diese geplanten Abgaben gleich (Bildet 'Rezept-Klammer'). |

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

