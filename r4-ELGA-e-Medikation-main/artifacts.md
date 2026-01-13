# HL7.AT.FHIR.ELGA.EMED.R4\Artifacts Summary - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ELGA e-Medikation Medication](StructureDefinition-at-emed-medication.md) | **Description:**In the course of treatment, the doctor determines that the ELGA participant must be prescribed one or more medicines. A MedicationRequest always consists of exactly one medication (= one medicine). The e-Medication prescription can consist of several MedicationRequests and thus forms a grouping over them. The prescription and it's MedicationRequests are labelled with one unique, common eMED ID. The doctor is responsible for checking the medicines, e.g. for potential interactions, contraindications, dosages, etc. and this is not part of e-Medication. Storing requests without assigning a prescription is not valid. The prescription is considered to have been checked if the associated prescription is saved in e-Medication.**Beschreibung:**Im Zuge der Behandlung verordnet der GDA dem ELGA Teilnehmer ein Arzneimittel und erstellt einen Medikationsplaneintrag (MedicationRequest). |
| [ELGA e-Medikation MedicationDispense](StructureDefinition-at-emed-medicationdispense.md) | TODO |
| [ELGA e-Medikation MedicationRequest](StructureDefinition-at-emed-medicationrequest.md) | **Description:**In the course of treatment, the doctor determines that the ELGA participant must be prescribed one or more medicines. A MedicationRequest always consists of exactly one medication (= one medicine). The e-Medication prescription can consist of several MedicationRequests and thus forms a grouping over them. The prescription and it's MedicationRequests are labelled with one unique, common eMED ID. The doctor is responsible for checking the medicines, e.g. for potential interactions, contraindications, dosages, etc. and this is not part of e-Medication. Storing requests without assigning a prescription is not valid. The prescription is considered to have been checked if the associated prescription is saved in e-Medication.**Beschreibung:**Im Zuge der Behandlung verordnet der GDA dem ELGA Teilnehmer ein Arzneimittel und erstellt einen Medikationsplaneintrag (MedicationRequest). |
| [MyPatient](StructureDefinition-MyPatient.md) | An example profile of the Patient resource. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [AtEmedMedication-Beispiel](Medication-AtEmedMedicationExample01.md) | Medication |
| [AtEmedMedicationDispense-Beispiel](MedicationDispense-AtEmedExampleMedicationDispense01.md) | Medication Dispense |
| [AtEmedMedicationRequest-Beispiel](MedicationRequest-AtEmedExampleMedicationRequest01.md) | Medication Request |
| [PatientExample](Patient-PatientExample.md) | An example of a patient with a license to krill. |

