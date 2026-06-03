# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Artifacts Summary - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Questionnaires 

These define forms used by systems conforming to this implementation guide to capture or expose data to end users.

| | |
| :--- | :--- |
| [Alkoholkonsum im letzten Jahr](Questionnaire-AlcoholUseQuestionnaire.md) | Categorical variable for the frequency of alcohol consumption in the last year (IPS compatible). |
| [Blutzucker bei der letzten Messung](Questionnaire-BloodGlucoseQuestionnaire.md) | A simple questionnaire for asking how high the blood glucose level is right now. The blood glucose option only allows values inbetween 0 and 999 mg/dL. |
| [Durchschnittliche Schlafdauer pro Nacht](Questionnaire-SleepDurationQuestionnaire.md) | A simple questionnaire for self-reporting average sleep duration per night in hours. Only allows values between 0 and 24 hours. |
| [EHIS-PAQ: Zu-Fuß-Gehen](Questionnaire-StepCountEhisPaqQuestionnaire.md) | The questions Q2 and Q3 from the EHIS-PAQ about the number of days and duration of walking (for transport) in a typical week. |
| [Schlafqualität – Selbsteinschätzung (WHOQOL-BREF Q16)](Questionnaire-SleepQualityQuestionnaire.md) | Standalone questionnaire for self-assessing sleep quality based on WHOQOL-BREF question Q16 ('Wie zufrieden sind Sie mit Ihrem Schlaf?'). |
| [Schrittzahl am heutigen Tag](Questionnaire-StepCountQuantityQuestionnaire.md) | A simple questionnaire for asking how many steps the patient has taken today. Only allows values inbetween 0 and 150,000. |
| [WHOQOL-BREF Lebensstil Selbsteinschätzung](Questionnaire-WhoQolBrefQuestionnaire.md) | The WHOQOL-BREF is a 26-item instrument for assessing subjective quality of life in four domains: physical, psychological, social relationships, and environment. Developed by the WHO. |

### Structures: Abstract Profiles 

These are profiles on resources or data types that describe patterns used by other profiles, but cannot be instantiated directly. I.e. instances can conform to profiles **based** on these abstract profiles but do not declare conformance to the abstract profiles themselves.

| | |
| :--- | :--- |
| [AT PreNUDGE Observation](StructureDefinition-at-prenudge-observation.md) | This FHIR profile is defining the overall Observation for PreNUDGE. It is abstract, so no instances of this profile directly are allowed. Be aware that if the user enters values from a device into a questionnaire, it is still considered a manual input. Please keep in mind that all observations must comply with the qualification matrix on https://prenudge.at/qualificationmatrix/. |
| [AT PreNUDGE Questionnaire](StructureDefinition-at-prenudge-questionnaire.md) | This FHIR profile is defining the overall Questionnaire for PreNUDGE. Every top level item requires one comment subitem, with the linkId ending or equal 'comment'. Be aware that if the user enters values from a device into a questionnaire, it is still considered a manual input. Please keep in mind that all questionnaires must comply with the qualification matrix on https://prenudge.at/qualificationmatrix/. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AT PreNUDGE Observation Alcohol Use](StructureDefinition-at-prenudge-alcoholuse-observation.md) | This FHIR profile is currently derived from the APS Observation Alcohol Use profile without introducing any additional constraints or changes. It serves as a prepared extension point so that future adaptations can be made independently if required. |
| [AT PreNUDGE Observation Blood Glucose (only in mg/dL)](StructureDefinition-at-prenudge-bloodglucose-observation.md) | This FHIR profile is defining the Blood Glucose Observation, similar to the Observation Social History - Alcohol Use from the IPS. The blood glucose option only allows values inbetween 0 and 999 mg/dL. |
| [AT PreNUDGE Observation Other Quantities](StructureDefinition-at-prenudge-observation-other-quantities.md) | This FHIR profile can be used for all the other Observations for PreNUDGE, beeing quantities and not fitting the existing narrow standardized observations. If some code for specifing a new Observation is missing, please contact prenudge@joanneum.at. |
| [AT PreNUDGE Observation Other not Quantities](StructureDefinition-at-prenudge-observation-other-not-quantities.md) | This FHIR profile can be used for all the other Observations for PreNUDGE, not beeing an quantity and not fitting the existing narrow standardized observations. |
| [AT PreNUDGE Observation Sleep Duration](StructureDefinition-at-prenudge-sleep-duration-observation.md) | This FHIR profile defines the Sleep Duration Observation recording average nightly sleep in hours. Applicable for both automated wearable measurements (method = automated) and self-reported values derived from a questionnaire (method = manual). |
| [AT PreNUDGE Observation Sleep Quality](StructureDefinition-at-prenudge-sleep-quality-observation.md) | Records the self-assessed sleep quality from PROMIS (My sleep quality was…in past 7 days). Also used to map WHOQOL-BREF Q16 from standalone SleepQualityQuestionnaire or the full WhoQolBrefQuestionnaire. |
| [AT PreNUDGE Observation Step Count](StructureDefinition-at-prenudge-stepcount-observation.md) | This FHIR profile is defining the Step Count Observation. The step count only allows values inbetween 0 and 150,000 steps per 24 hours. |
| [AT PreNUDGE Observation WHOQOL-BREF Score](StructureDefinition-at-prenudge-whoqol-bref-score-observation.md) | Observation profile for recording WHOQOL-BREF domain scores. The overall score is represented in Observation.value, individual domain scores are recorded as components. |
| [AT PreNUDGE Questionnaire Response](StructureDefinition-at-prenudge-questionnaireresponse.md) | This FHIR profile is defining the overall Questionnaire Response for PreNUDGE. Be aware that if the user enters values from a device into a questionnaire, it is still considered a manual input. Please keep in mind that all questionnaire responses must comply with the qualification matrix on https://prenudge.at/qualificationmatrix/. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AT PreNUDGE Alcohol Use Frequency](ValueSet-prenudge-alcoholuse-frequency.md) | Frequencies used in the PreNUDGE alcoholuse questionnaire. |
| [AT PreNUDGE Blood Glucose Meal Context](ValueSet-prenudge-bloodglucose-mealcontext.md) | Meal context used in the PreNUDGE Blood Glucose questionnaire and observation. |
| [AT PreNUDGE Observation Methods](ValueSet-prenudge-observation-method.md) | ValueSet containing SNOMED CT codes for differentiating methods used in the PreNUDGE observation. |
| [AT PreNUDGE Other Observations Codes](ValueSet-prenudge-other-observations-codes.md) | Allowed observation codes for the 'Other' observation profile. |
| [AT PreNUDGE Other Observations Units](ValueSet-prenudge-other-observations-units.md) | Allowed UCUM units for the 'Other' observation profile. |
| [AT PreNUDGE WHOQOL-BREF Score Type ValueSet](ValueSet-prenudge-whoqol-bref-score-type.md) | ValueSet containing SNOMED CT codes for differentiating WHOQOL-BREF overall and domain scores. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AT PreNUDGE WHOQOL-BREF Answer Scales](CodeSystem-whoqol-bref-scale.md) | Consolidated CodeSystem for all answer scales of the WHOQOL-BREF questionnaire. |
| [ATHIS – Antwortmöglichkeiten](CodeSystem-athis-answers.md) | Vollständige Antwortmöglichkeiten aus dem ATHIS Fragebogen (Österreichische Gesundheitsbefragung, STATISTIK AUSTRIA, Version 31.03.2025). Codes sind englisch; Display-Werte bleiben deutsch. Gruppiert nach Skalentypen. Hinweis: Bestehende PreNUDGE CodeSystems bleiben gültig – whoqol-bref-scale (LQ16-Zufriedenheitsskala), prenudge-nutrition-consumption-frequency (DH1/DH3 numerische Codes), prenudge-alcoholuse-frequency (AL1 SNOMED-basiert). |

### Terminology: Structure Maps 

These define transformations to convert between data structures used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Alcohol Use Q mapping frequency to O drinks per day](StructureMap-AlcoholQuestionnaireResponseToObservation.md) | Alcohol Use Q mapping frequency to O drinks per day |
| [Blood Glucose Q to O](StructureMap-BloodGlucoseQuestionnaireResponseToObservation.md) | Blood Glucose Q to O |
| [Shared base for Q to O](StructureMap-QuestionnaireResponseToObservationBase.md) | Shared base for Q to O |
| [Sleep Duration Q to O](StructureMap-SleepDurationQuestionnaireResponseToObservation.md) | Sleep Duration Q to O |
| [Sleep Quality Base (WHOQOL-BREF scale to LOINC)](StructureMap-SleepQualityBase.md) | Sleep Quality Base (WHOQOL-BREF scale to LOINC) |
| [Step Count Q to O](StructureMap-StepCountQuestionnaireResponseToObservation.md) | Step Count Q to O |
| [WHOQOL-BREF Q score to O score](StructureMap-WHOQOLBrefQuestionnaireResponseToObservation.md) | WHOQOL-BREF Q score to O score |

### Terminology: Concept Maps 

These define transformations to convert between codes by systems conforming with this implementation guide.

| | |
| :--- | :--- |
| [AT PreNUDGE Code-to-Unit Mapping](ConceptMap-AtPrenudgeCodeUnitMap.md) | Maps observation codes to their expected UCUM units for the 'Other Quantities' observation profile. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Alcohol Use O - Moderate (3-4 times weekly)](Observation-alcoholuse-moderate-example.md) | Example of an alcohol use observation for a moderate drinker consuming alcohol 3-4 times per week (0.5 drinks per day). |
| [Alcohol Use O mapped from Q - Daily](Observation-alcoholuse-occasional-example.md) | Example of an alcohol use observation for a daily drinker (1 drink per day). |
| [Alcohol Use O mapped from Q - Non-Drinker](Observation-alcoholuse-never-example.md) | Example of an alcohol use observation for a lifetime non-drinker (0 drinks per day). |
| [Alcohol Use Q - Daily](QuestionnaireResponse-AlcoholResponseDaily.md) | Example of an alcohol use observation for a daily drinker. |
| [Alcohol Use Q - Non-Drinker](QuestionnaireResponse-AlcoholResponseNever.md) | Example of an alcohol use observation for a lifetime non-drinker. |
| [AtApsPatient-example](Patient-example.md) | An example of a patient with a license to krill. |
| [Blood Glucose O - Low Example](Observation-bloodglucose-low-example.md) | Example of a low fasting blood glucose measurement (62 mg/dL), indicating hypoglycemia. |
| [Blood Glucose O mapped from Q - Elevated Example](Observation-bloodglucose-elevated-example.md) | Example of an elevated fasting blood glucose measurement (142 mg/dL), indicating diabetes mellitus. |
| [Blood Glucose O mapped from Q - Normal Example](Observation-bloodglucose-normal-example.md) | Example of a normal fasting blood glucose measurement (95 mg/dL). |
| [Blood Glucose Q - Elevated Example](QuestionnaireResponse-bloodglucose-response-elevated-example.md) | Example of an elevated fasting blood glucose measurement (142 mg/dL), indicating diabetes mellitus. |
| [Blood Glucose Q - Normal Example](QuestionnaireResponse-bloodglucose-response-normal-example.md) | Example of a normal fasting blood glucose measurement (95 mg/dL). |
| [Sleep Duration O - Normal Automated Example](Observation-sleep-duration-normal-automated-example.md) | Example of a normal average sleep duration (7.5 h) measured by a wearable device. |
| [Sleep Duration O - Short Automated Example](Observation-sleep-duration-short-automated-example.md) | Example of a short average sleep duration (5.5 h) measured by a wearable device, indicating insufficient sleep. |
| [Sleep Duration O mapped from Q - Normal Example](Observation-sleep-duration-normal-manual-example.md) | Example of a self-reported average sleep duration (7 h) derived from a questionnaire response. |
| [Sleep Duration Q - Normal Example](QuestionnaireResponse-sleep-duration-response-normal-example.md) | Example of a self-reported normal average sleep duration (7 h per night). |
| [Sleep Duration Q - Short Example](QuestionnaireResponse-sleep-duration-response-short-example.md) | Example of a self-reported short average sleep duration (5.5 h per night). |
| [Sleep Quality O mapped from Q - Dissatisfied Example](Observation-sleep-quality-dissatisfied-example.md) | Example of a sleep quality observation indicating poor sleep satisfaction (LA8969-3 - Poor), derived from the standalone SleepQualityQuestionnaire (S2 - Unzufrieden mapped to LOINC). |
| [Sleep Quality O mapped from Q - Satisfied Example](Observation-sleep-quality-satisfied-example.md) | Example of a sleep quality observation indicating good sleep satisfaction (LA8967-7 - Good), derived from the standalone SleepQualityQuestionnaire (S4 - Zufrieden mapped to LOINC). |
| [Sleep Quality Q - Dissatisfied Example](QuestionnaireResponse-sleep-quality-response-dissatisfied-example.md) | Example of a standalone sleep quality questionnaire response indicating dissatisfaction with sleep (S2 - Unzufrieden). |
| [Sleep Quality Q - Satisfied Example](QuestionnaireResponse-sleep-quality-response-satisfied-example.md) | Example of a standalone sleep quality questionnaire response indicating satisfaction with sleep (S4 - Zufrieden). |
| [Step Count EHIS PAQ Q - High Example](QuestionnaireResponse-stepcount-ehispaq-high.md) | Example of a high step count (7 times a week with 2-3 hours). |
| [Step Count EHIS PAQ Q - Normal Example](QuestionnaireResponse-stepcount-ehispaq-normal.md) | Example of a normal step count (5 times a week with 30-59 minutes). |
| [Step Count O - Sedentary Example](Observation-stepcount-sedentary-example.md) | Example of a low step count (1,204 steps per day), typical for a mostly sedentary day. |
| [Step Count O mapped from Q - High Example](Observation-stepcount-high-example.md) | Example of a high step count (133,519 steps per day). |
| [Step Count O mapped from Q - Normal Example](Observation-stepcount-normal-example.md) | Example of a normal step count (8,432 steps per day). |
| [Step Count Q - High Example](QuestionnaireResponse-stepcount-quantity-response-high-example.md) | Example of a high step count (133,519 steps per day). |
| [Step Count Q - Normal Example](QuestionnaireResponse-stepcount-quantity-response-normal-example.md) | Example of a normal step count (8,432 steps per day). |
| [WHOQOL-BREF O Score only mapped from Q](Observation-whoqol-bref-score-example.md) | Example of a WHOQOL-BREF score observation with a general score and all four domain scores. |
| [WHOQOL-BREF Q](QuestionnaireResponse-whoqol-bref-response-example.md) | Example of a completed WHOQOL-BREF QuestionnaireResponse including all 26 items and calculated scores. |

