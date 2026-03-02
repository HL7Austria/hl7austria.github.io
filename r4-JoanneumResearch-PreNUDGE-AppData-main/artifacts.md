# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Artifacts Summary - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Questionnaires 

These define forms used by systems conforming to this implementation guide to capture or expose data to end users.

| | |
| :--- | :--- |
| [Alkoholkonsum im letzten Jahr](Questionnaire-AtPrenudgeQuestionnaireAlcoholUse.md) | Categorical variable for the frequency of alcohol consumption in the last year (IPS compatible). |
| [Blutzucker bei der letzten Messung](Questionnaire-BloodGlucoseQuestionnaire.md) | A simple questionnaire for asking how high the blood glucose level is right now. The blood glucose option only allows values inbetween 12 and 1200 mg/dL. |
| [Lebensstil Selbsteinschätzung](Questionnaire-QolQuestionnaire.md) | The WHOQOL-BREF is a 26-item instrument for assessing subjective quality of life in four domains: physical, psychological, social relationships, and environment. Developed by the WHO. |
| [Schrittzahl am heutigen Tag](Questionnaire-StepCountQuestionnaire.md) | A simple questionnaire for asking how many steps the patient has taken today. Only allows values inbetween 0 and 150,000. |

### Structures: Abstract Profiles 

These are profiles on resources or data types that describe patterns used by other profiles, but cannot be instantiated directly. I.e. instances can conform to profiles **based** on these abstract profiles but do not declare conformance to the abstract profiles themselves.

| | |
| :--- | :--- |
| [AT PreNUDGE Observation](StructureDefinition-at-prenudge-observation.md) | This FHIR profile is defining the overall Observation for PreNUDGE. It is abstract, so no instances of this profile directly are allowed. |
| [AT PreNUDGE Questionnaire](StructureDefinition-at-prenudge-questionnaire.md) | This FHIR profile is defining the overall Questionnaire for PreNUDGE. Every top level item requires one comment subitem, with the linkId ending or equal 'comment'. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AT PreNUDGE Observation Alcohol Use](StructureDefinition-at-prenudge-alcoholuse-observation.md) | This FHIR profile is currently derived from the APS Observation Alcohol Use profile without introducing any additional constraints or changes. It serves as a prepared extension point so that future adaptations can be made independently if required. |
| [AT PreNUDGE Observation Blood Glucose (only in mg/dL)](StructureDefinition-at-prenudge-bloodglucose-observation.md) | This FHIR profile is defining the Blood Glucose Observation, similar to the Observation Social History - Alcohol Use from the IPS. The blood glucose option only allowes values inbetween 12 and 1200 mg/dL. |
| [AT PreNUDGE Observation Other](StructureDefinition-at-prenudge-observation-other.md) | This FHIR profile can be used for all the other Observations for PreNUDGE, not fitting the existing narrow standardized observations. If some code for specifing a new Observation are missing, please contact prenudge@joanneum.at. |
| [AT PreNUDGE Observation Step Count](StructureDefinition-at-prenudge-stepcount-observation.md) | This FHIR profile is defining the Step Count Observation. The step count only allows values inbetween 0 and 150,000 steps per 24 hours. |
| [AT PreNUDGE Observation WHOQOL-BREF Score](StructureDefinition-at-prenudge-whoqol-bref-score-observation.md) | Observation profile for recording WHOQOL-BREF domain scores. The overall score is represented in Observation.value, individual domain scores are recorded as components. |
| [AT PreNUDGE Questionnaire Response](StructureDefinition-at-prenudge-questionnaireresponse.md) | This FHIR profile is defining the overall Questionnaire Response for PreNUDGE. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AT PreNUDGE Alcohol Use Frequency](ValueSet-prenudge-alcoholuse-frequency.md) | Frequencies used in the PreNUDGE alcoholuse questionnaire. |
| [AT PreNUDGE Observation Methods](ValueSet-prenudge-observation-method.md) | ValueSet containing SNOMED CT codes for differentiating methods used in the PreNUDGE observation. |
| [AT PreNUDGE Other Observations Codes](ValueSet-prenudge-other-observations-codes.md) | Allowed observation codes for the 'Other' observation profile. |
| [AT PreNUDGE Other Observations Units](ValueSet-prenudge-other-observations-units.md) | Allowed UCUM units for the 'Other' observation profile. |
| [AT PreNUDGE WHOQOL-BREF Score Type ValueSet](ValueSet-prenudge-whoqol-bref-score-type.md) | ValueSet containing SNOMED CT codes for differentiating WHOQOL-BREF overall and domain scores. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AT PreNUDGE WHOQOL-BREF Answer Scales](CodeSystem-whoqol-bref-scale.md) | Consolidated CodeSystem for all answer scales of the WHOQOL-BREF questionnaire. |

### Terminology: Structure Maps 

These define transformations to convert between data structures used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Alcohol Use Q mapping frequency to O drinks per day](StructureMap-AlcoholQuestionnaireResponseToObservation.md) | Alcohol Use Q mapping frequency to O drinks per day |
| [Blood Glucose Q to O](StructureMap-BloodGlucoseQuestionnaireResponseToObservation.md) | Blood Glucose Q to O |
| [WHOQOL-BREF Q score to O score](StructureMap-WHOQOLBrefQuestionnaireResponseToObservation.md) | WHOQOL-BREF Q score to O score |

### Terminology: Concept Maps 

These define transformations to convert between codes by systems conforming with this implementation guide.

| | |
| :--- | :--- |
| [AT PreNUDGE Code-to-Unit Mapping](ConceptMap-AtPrenudgeCodeUnitMap.md) | Maps observation codes to their expected UCUM units for the 'Other' observation profile. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Alcohol Use O - Daily](Observation-alcoholuse-occasional-example.md) | Observation example of an alcohol use observation for a daily drinker (1 drink per day). |
| [Alcohol Use O - Non-Drinker](Observation-alcoholuse-never-example.md) | Observation example of an alcohol use observation for a lifetime non-drinker (0 drinks per day). |
| [Alcohol Use Q - Daily](QuestionnaireResponse-AlcoholResponseDaily.md) | QuestionnaireResponse example of an alcohol use observation for a daily drinker. |
| [Alcohol Use Q - Non-Drinker](QuestionnaireResponse-AlcoholResponseNever.md) | QuestionnaireResponse example of an alcohol use observation for a lifetime non-drinker. |
| [AtApsPatient-example](Patient-example.md) | An example of a patient with a license to krill. |
| [Blood Glucose O - Elevated Example](Observation-bloodglucose-elevated-example.md) | Beispiel einer erhöhten Nüchtern-Blutzucker-Messung (142 mg/dL), hinweisend auf Diabetes mellitus. |
| [Blood Glucose O - Normal Example](Observation-bloodglucose-normal-example.md) | Beispiel einer normalen Nüchtern-Blutzucker-Messung (95 mg/dL). |
| [Blood Glucose Q - Elevated Example](QuestionnaireResponse-bloodglucose-response-elevated-example.md) | Beispiel einer erhöhten Nüchtern-Blutzucker-Messung (142 mg/dL) als QuestionnaireResponse. |
| [Blood Glucose Q - Normal Example](QuestionnaireResponse-bloodglucose-response-normal-example.md) | Beispiel einer normalen Nüchtern-Blutzucker-Messung (95 mg/dL) als QuestionnaireResponse. |
| [Step Count O - High Example](Observation-stepcount-low-example.md) | Beispiel einer hohen Schrittzahl (133,519 Schritte pro Tag). |
| [Step Count O - Normal Example](Observation-stepcount-normal-example.md) | Beispiel einer normalen Schrittzahl (8,432 Schritte pro Tag). |
| [Step Count Q - High Example](QuestionnaireResponse-stepcount-response-low-example.md) | Beispiel einer hohen Schrittzahl (133,519 Schritte) als QuestionnaireResponse. |
| [Step Count Q - Normal Example](QuestionnaireResponse-stepcount-response-normal-example.md) | Beispiel einer normalen Schrittzahl (8,432 Schritte) als QuestionnaireResponse. |
| [WHOQOL-BREF O Score only](Observation-whoqol-bref-score-example.md) | Example of a WHOQOL-BREF score observation with a general score and all four domain scores. |
| [WHOQOL-BREF Q](QuestionnaireResponse-whoqol-bref-response-example.md) | Example of a completed WHOQOL-BREF QuestionnaireResponse including all 26 items and calculated scores. |

