# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Artifacts Summary - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Questionnaires 

These define forms used by systems conforming to this implementation guide to capture or expose data to end users.

| | |
| :--- | :--- |
| [Alkoholkonsum-Frequenz (letztes Jahr)](Questionnaire-AtPrenudgeQuestionnaireAlcoholUse.md) | Categorical variable for the frequency of alcohol consumption in the last year (IPS compatible). |
| [Blutzucker](Questionnaire-BloodGlucoseQuestionnaire.md) | A simple questionnaire for asking how high the blood glucose level is right now. The blood glucose option only allowes values inbetween 12 and 1200. |
| [Quality of life by RAND 36-Item Health Survey 1.0 (SF-36)](Questionnaire-QolQuestionnaire.md) |  |
| [Schrittanzahl (täglich)](Questionnaire-StepCountQuestionnaire.md) | A simple questionnaire for asking how many steps have been done today. The step count option only allowes values inbetween 0 and 300 000. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AT PreNUDGE Observation](StructureDefinition-at-prenudge-observation.md) | This FHIR profile is defining the overall Observation for PreNUDGE. |
| [AT PreNUDGE Observation Alcohol Use](StructureDefinition-at-prenudge-alcoholuse-observation.md) | This FHIR profile is currently derived from the APS Observation Alcohol Use profile without introducing any additional constraints or changes. It serves as a prepared extension point so that future adaptations can be made independently if required. |
| [AT PreNUDGE Observation Blood Glucose (only in mg/dL)](StructureDefinition-at-prenudge-bloodglucose-observation.md) | This FHIR profile is defining the Blood Glucose Observation, similar to the Observation Social History - Alcohol Use from the IPS. The blood glucose option only allowes values inbetween 12 and 1200 mg/dL. |
| [AT PreNUDGE Observation Step Count](StructureDefinition-at-prenudge-stepcount-observation.md) | This FHIR profile is defining the Step Count Observation, similar to the Observation Social History - Alcohol Use from the IPS. The step count option only allowes values inbetween 0 and 300 000. |
| [AT PreNUDGE Questionnaire](StructureDefinition-at-prenudge-questionnaire.md) | This FHIR profile is defining the overall Questionnaire for PreNUDGE. Every top level item requires one comment subitem, with the linkId ending or equal 'comment'. |
| [AT PreNUDGE Questionnaire Response](StructureDefinition-at-prenudge-questionnaireresponse.md) | This FHIR profile is defining the overall Questionnaire Response for PreNUDGE. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| |
| :--- |
| [AtPrenudgeValueSetMethodManualAutomated](ValueSet-at-prenudge-observation-valueset-method-manual-automated.md) |
| [SNOMED CT AlcoholUse-Frequency](ValueSet-at-prenudge-alcoholuse-valueset-frequency.md) |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [RAND SF-36 answer options in german](CodeSystem-rand-sf36-answers.md) | Answer options for den RAND SF-36 Health Survey, translated to german |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [AlcoholResponseDaily](QuestionnaireResponse-AlcoholResponseDaily.md) |  |
| [AlcoholResponseNever](QuestionnaireResponse-AlcoholResponseNever.md) |  |
| [BloodGlucoseQuestionnaireResponse1](QuestionnaireResponse-BloodGlucoseQuestionnaireResponse1.md) |  |
| [BloodGlucoseQuestionnaireResponse2](QuestionnaireResponse-BloodGlucoseQuestionnaireResponse2.md) |  |
| [PatientExample](Patient-example.md) | An example of a patient with a license to krill. |
| [StepCountResponseActive](QuestionnaireResponse-StepCountResponseActive.md) |  |
| [StepCountResponseExtreme](QuestionnaireResponse-StepCountResponseExtreme.md) |  |

