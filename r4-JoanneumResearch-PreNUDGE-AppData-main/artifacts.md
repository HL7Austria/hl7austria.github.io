# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Artifacts Summary - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Questionnaires 

These define forms used by systems conforming to this implementation guide to capture or expose data to end users.

| | |
| :--- | :--- |
| [Alkoholkonsum-Frequenz (letztes Jahr)](Questionnaire-AtPrenudgeQuestionnaireAlcoholUse.md) | Categorical variable for the frequency of alcohol consumption in the last year (IPS-compatible). |
| [Schrittanzahl (täglich)](Questionnaire-StepCountQuestionnaire.md) | A simple questionnaire for asking how many steps have been done today. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AT PreNUDGE Observation Alcohol Use](StructureDefinition-at-prenudge-alcoholuse-observation.md) | This FHIR profile is currently derived from the APS Observation Alcohol Use profile without introducing any additional constraints or changes. It serves as a prepared extension point so that future adaptations can be made independently if required. |
| [AT PreNUDGE Observation Step Count](StructureDefinition-at-prenudge-stepcount-observation.md) | This FHIR profile is defining the Step Count Observation, similar to the Observation Social History - Alcohol Use from the IPS. |
| [MyPatient](StructureDefinition-MyPatient.md) | An example profile of the Patient resource. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| |
| :--- |
| [SNOMED CT AlcoholUse-Frequency](ValueSet-at-prenudge-alcoholuse-valueset-frequency.md) |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [PatientExample](Patient-PatientExample.md) | An example of a patient with a license to krill. |

