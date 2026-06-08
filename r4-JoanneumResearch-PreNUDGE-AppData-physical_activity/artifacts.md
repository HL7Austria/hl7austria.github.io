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
| [EHIS-PAQ Q8 / ATHIS PE8: Muskelkräftigungsübungen](Questionnaire-EhisPaqMuscleStrengtheningQuestionnaire.md) | EHIS-PAQ Q8 / ATHIS PE8: number of days per week on which the respondent performs physical activities specifically aimed at building or strengthening muscles (e.g. weight training, resistance-band exercises, bodyweight exercises, squats, push-ups, sit-ups). Answer options use existing ATHIS CodeSystem codes activity-1-day through activity-7-days. Two mapping paths to AtPrenudgeObservationMuscleStrengthening are available: (1) directly from this questionnaire via MuscleStrengtheningEhisPaqQuestionnaireResponseToObservation (translates coded day-count to numeric sessions/wk: 1 day = 1 session/wk, …, 7 days = 7 sessions/wk); (2) via MuscleStrengtheningQuantityQuestionnaire and MuscleStrengtheningQuestionnaireResponseToObservation when a numeric quantity answer is preferred. |
| [EHIS-PAQ Q9 / ATHIS PE9: Sitzen und Ruhen](Questionnaire-EhisPaqSittingHoursQuestionnaire.md) | EHIS-PAQ Q9 / ATHIS PE9: total time spent sitting or resting on a typical day (excluding sleep), captured as two integer sub-items (hours 0–23, minutes 0–60). Mapped to AtPrenudgeObservationSittingHours via SittingHoursQuestionnaireResponseToObservation (hours + minutes/60 → valueQuantity in h). |
| [EHIS-PAQ/ATHIS: Körperliche Aktivität](Questionnaire-EhisPaqPhysicalActivityQuestionnaire.md) | Questions Q4–Q7 from the European Health Interview Survey Physical Activity Questionnaire (EHIS-PAQ), equivalent to ATHIS PE4–PE7: cycling for transport (Q4/PE4: days per week, Q5/PE5: duration per day), leisure sport and physical activity in leisure time (Q6/PE6: days per week, Q7/PE7: total duration per week). Q7 is mapped to Observation via PhysicalActivityMinutesQtoO; Q4–Q6 are captured only. |
| [EHIS-PAQ/ATHIS: Zu-Fuß-Gehen](Questionnaire-StepCountEhisPaqQuestionnaire.md) | Questions Q2–Q3 from the European Health Interview Survey Physical Activity Questionnaire (EHIS-PAQ), equivalent to ATHIS PE2–PE3: number of days per week on which the respondent walks for transport (Q2/PE2, integer 0–7) and the typical duration of that walking per day (Q3/PE3, coded using ATHIS group 9 answer set). |
| [Muskelkräftigungs-Trainingseinheiten pro Woche (numerisch)](Questionnaire-MuscleStrengtheningQuantityQuestionnaire.md) | A numeric questionnaire for directly entering the number of muscle-strengthening exercise sessions per week. Designed for direct FML mapping to the AT PreNUDGE Observation Muscle Strengthening Sessions profile via MuscleStrengtheningQuestionnaireResponseToObservation. Use EhisPaqMuscleStrengtheningQuestionnaire for the categorical EHIS-PAQ Q8 / ATHIS PE8 representation. |
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
| [AT PreNUDGE Observation Muscle Strengthening Sessions](StructureDefinition-at-prenudge-muscle-strengthening-observation.md) | This FHIR profile defines the Muscle Strengthening Sessions Observation recording the number of muscle-strengthening exercise sessions (e.g. weight training, resistance exercises with weights, resistance bands, or bodyweight) per week. Applicable for both automated wearable measurements (method = Automated) and self-reported values derived from MuscleStrengtheningQuantityQuestionnaire (method = Manual). The value must be 0 or greater. |
| [AT PreNUDGE Observation Other Quantities](StructureDefinition-at-prenudge-observation-other-quantities.md) | This FHIR profile can be used for all the other Observations for PreNUDGE, beeing quantities and not fitting the existing narrow standardized observations. If some code for specifing a new Observation is missing, please contact prenudge@joanneum.at. |
| [AT PreNUDGE Observation Other not Quantities](StructureDefinition-at-prenudge-observation-other-not-quantities.md) | This FHIR profile can be used for all the other Observations for PreNUDGE, not beeing an quantity and not fitting the existing narrow standardized observations. |
| [AT PreNUDGE Observation Physical Activity Minutes](StructureDefinition-at-prenudge-physical-activity-minutes-observation.md) | Observation profile for recording physical activity duration as a panel (moderate, vigorous, aggregate components) derived from either a wearable device or the EHIS-PAQ/ATHIS questionnaire (Q7/PE7). Supports four valid component combinations: (a) aggregate only — questionnaire source (Q7/PE7 → aggregateActivity) (b) moderate only — manual source; vigorous implicitly 0, aggregate = moderateActivity (pa-agg-01 warning if aggregateActivity absent) (c) moderate + aggregate — partial wearable or manual source (d) vigorous + aggregate — partial wearable source (e) all three — full wearable source. |
| [AT PreNUDGE Observation Sitting Hours](StructureDefinition-at-prenudge-sitting-hours-observation.md) | This FHIR profile defines the Sitting Hours Observation recording the average number of sitting or resting hours per day (excluding sleep). Applicable for both automated wearable measurements (method = Automated) and self-reported values derived from EhisPaqSittingHoursQuestionnaire via SittingHoursQuestionnaireResponseToObservation (method = Manual). Sleep hours must be subtracted by the originating app before recording the value. |
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
| [AT PreNUDGE Physical Activity Classification Method ValueSet](ValueSet-prenudge-physical-activity-classification-method-vs.md) | ValueSet containing all codes from the AT PreNUDGE Physical Activity Classification Method CodeSystem. Used as the required binding for component[classificationMethod].value[x] in the AT PreNUDGE Observation Physical Activity Minutes profile. |
| [AT PreNUDGE WHOQOL-BREF Score Type ValueSet](ValueSet-prenudge-whoqol-bref-score-type.md) | ValueSet containing SNOMED CT codes for differentiating WHOQOL-BREF overall and domain scores. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AT PreNUDGE EHIS-PAQ Answer Set](CodeSystem-at-prenudge-physicalactivity-codesystem-ehispaq.md) | Consolidated CodeSystem for all options from the EHIS-PAQ questionnaires (European Health Interview Survey Physical Activity Questionnaire) used in PreNUDGE. Contains two answer scales: days per week (Q4, Q6 in EhisPaqPhysicalActivityQuestionnaire; also Q2 in StepCountEhisPaqQuestionnaire) and activity duration per day (Q3 in StepCountEhisPaqQuestionnaire, Q5 in EhisPaqPhysicalActivityQuestionnaire). Codes are in English; display values remain in German. |
| [AT PreNUDGE Physical Activity Classification Method CodeSystem](CodeSystem-at-prenudge-physical-activity-classification-method-cs.md) | Codes for the algorithm or technique used to classify the intensity of a physical activity measurement into moderate / vigorous categories. |
| [AT PreNUDGE WHOQOL-BREF Answer Scales](CodeSystem-whoqol-bref-scale.md) | Consolidated CodeSystem for all answer scales of the WHOQOL-BREF questionnaire. |
| [ATHIS – Antwortmöglichkeiten](CodeSystem-athis-answers.md) | Vollständige Antwortmöglichkeiten aus dem ATHIS Fragebogen (Österreichische Gesundheitsbefragung, STATISTIK AUSTRIA, Version 31.03.2025). Codes sind englisch; Display-Werte bleiben deutsch. Gruppiert nach Skalentypen. Hinweis: Bestehende PreNUDGE CodeSystems bleiben gültig – whoqol-bref-scale (LQ16-Zufriedenheitsskala), prenudge-nutrition-consumption-frequency (DH1/DH3 numerische Codes), prenudge-alcoholuse-frequency (AL1 SNOMED-basiert). |

### Terminology: Structure Maps 

These define transformations to convert between data structures used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Alcohol Use Q mapping frequency to O drinks per day](StructureMap-AlcoholQuestionnaireResponseToObservation.md) | Alcohol Use Q mapping frequency to O drinks per day |
| [Blood Glucose Q to O](StructureMap-BloodGlucoseQuestionnaireResponseToObservation.md) | Blood Glucose Q to O |
| [Muscle Strengthening EHIS-PAQ Q8 / ATHIS PE8 to O](StructureMap-MuscleStrengtheningEhisPaqQuestionnaireResponseToObservation.md) | Muscle Strengthening EHIS-PAQ Q8 / ATHIS PE8 to O |
| [Muscle Strengthening Sessions Q to O](StructureMap-MuscleStrengtheningQuestionnaireResponseToObservation.md) | Muscle Strengthening Sessions Q to O |
| [Physical Activity Minutes Q to O](StructureMap-PhysicalActivityMinutesQtoO.md) | Physical Activity EHIS-PAQ Q7 / ATHIS PE7 to O (aggregate-only variant) |
| [Shared base for Q to O](StructureMap-QuestionnaireResponseToObservationBase.md) | Shared base for Q to O |
| [Sitting Hours Q to O](StructureMap-SittingHoursQuestionnaireResponseToObservation.md) | Sitting Hours EHIS-PAQ Q9 / ATHIS PE9 to O |
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
| [EHIS-PAQ Q7 / ATHIS PE7 Physical Activity - Example Response](QuestionnaireResponse-physical-activity-ehispaq-response-example.md) | Example EHIS-PAQ Q7 / ATHIS PE7 physical activity questionnaire response: Q4 = 3 Tage pro Woche (Fahrrad, Transport), Q5 = 30 bis 59 Minuten pro Tag (Fahrrad), Q6 = 5 Tage pro Woche (Freizeit-Sport), Q7 = 2 Stunden 30 Minuten (= 150 min/Woche). Q7 maps to physical-activity-questionnaire-example via the StructureMap. |
| [EHIS-PAQ Q8 / ATHIS PE8 Muscle Strengthening Q - Example Response](QuestionnaireResponse-muscle-strengthening-ehis-paq-response-example.md) | Example QuestionnaireResponse for EhisPaqMuscleStrengtheningQuestionnaire: respondent selects 3 days per week of muscle-strengthening exercise. |
| [EHIS-PAQ Q9 / ATHIS PE9 Sitting Hours Q – Example Response](QuestionnaireResponse-sitting-hours-ehis-paq-response-example.md) | Example QuestionnaireResponse for EhisPaqSittingHoursQuestionnaire: respondent reports 6 hours and 0 minutes of sitting or resting per day (sleep excluded). Corresponds to sitting-hours-questionnaire-derived-example (6.0 h) via SittingHoursQuestionnaireResponseToObservation. |
| [Muscle Strengthening Sessions O - Wearable Automated Example](Observation-muscle-strengthening-wearable-derived-example.md) | Example of an automatically detected muscle strengthening sessions count (5 sessions per week) measured by a wearable fitness tracker. |
| [Muscle Strengthening Sessions O mapped from EHIS-PAQ Q8 / ATHIS PE8 - Example](Observation-muscle-strengthening-ehis-paq-derived-example.md) | Example of a self-reported muscle strengthening sessions count (3 sessions per week) derived from EhisPaqMuscleStrengtheningQuestionnaire via MuscleStrengtheningEhisPaqQuestionnaireResponseToObservation. ATHIS code activity-3-days is translated to the numeric value 3. |
| [Muscle Strengthening Sessions O mapped from Q - Example](Observation-muscle-strengthening-questionnaire-derived-example.md) | Example of a self-reported muscle strengthening sessions count (3 sessions per week) derived from MuscleStrengtheningQuantityQuestionnaire. |
| [Muscle Strengthening Sessions Q - Example Response](QuestionnaireResponse-muscle-strengthening-quantity-response-example.md) | Example QuestionnaireResponse for MuscleStrengtheningQuantityQuestionnaire: respondent reports 3 muscle-strengthening exercise sessions per week. |
| [Physical Activity Minutes O - (a) Aggregate Only (Manual)](Observation-physical-activity-minutes-aggregate-only-example.md) | Scenario (a): only component[aggregateActivity] is present. Typical for a questionnaire-derived observation that asks only for total activity time without splitting moderate and vigorous. pa-agg-01 passes silently because neither moderate nor vigorous is present. |
| [Physical Activity Minutes O - (b) Moderate Only (Manual, pa-agg-01 warning)](Observation-physical-activity-minutes-moderate-only-example.md) | Scenario (b): only component[moderateActivity] is present; aggregate absent. pa-agg-01 fires a WARNING because moderateActivity is present but aggregateActivity is not. The aggregate should equal moderateActivity + (0 × 2) = 150 min/wk; a sender should add component[aggregateActivity] = 150 min/wk to suppress the warning. This scenario may arise when a source captures moderate activity but omits the aggregate. |
| [Physical Activity Minutes O - (c) Moderate + Aggregate (Manual)](Observation-physical-activity-minutes-moderate-aggregate-example.md) | Scenario (c): component[moderateActivity] and component[aggregateActivity] present; vigorousActivity absent (implicitly 0). aggregateActivity = moderateActivity + (0 × 2) = 90 min/wk. pa-agg-01 is satisfied. Typical for a structured questionnaire that reports moderate-intensity activity separately and includes the computed aggregate. |
| [Physical Activity Minutes O - (d) Vigorous + Aggregate (Automated, HRZ)](Observation-physical-activity-minutes-vigorous-aggregate-example.md) | Scenario (d): component[vigorousActivity] and component[aggregateActivity] present; moderateActivity absent (implicitly 0). aggregateActivity = 0 + (vigorousActivity × 2) = 150 min/wk. classificationMethod = hrz (Heart Rate Zones, moderate 50–70% HRmax; vigorous >70% HRmax). Typical for a wearable that identifies only vigorous bouts via heart rate but does not separately count moderate bouts. |
| [Physical Activity Minutes O - (e) All Three Components (Automated, MET-Cal)](Observation-physical-activity-minutes-all-components-example.md) | Scenario (e): all three Quantity components present. moderateActivity = 120 min/wk, vigorousActivity = 60 min/wk, aggregateActivity = 120 + (60 × 2) = 240 min/wk. classificationMethod = met-cal (MET estimated from accelerometer / VO2 proxy). This is the richest Observation variant, produced by a full wearable pipeline that computes both intensity levels and the WHO/IPAQ weighted aggregate. |
| [Physical Activity Minutes O - (f) EHIS-PAQ/ATHIS Q7/PE7 Mapped (Aggregate Only)](Observation-physical-activity-minutes-ehispaq-q7-mapped-example.md) | Scenario (f): Observation produced by applying PhysicalActivityMinutesQtoO to physical-activity-ehispaq-response-example. Q7/PE7 answer: 2 Stunden + 30 Minuten → aggregateActivity = (2×60)+30 = 150 min/wk. No intensity weighting is applied because Q7 does not separate moderate from vigorous activity. derivedFrom links back to the source QuestionnaireResponse. classificationMethod is absent; pa-manual-comp-01 is satisfied by absence. |
| [PreNUDGE Wearable Device Example](Device-device-wearable-example.md) | Example of a wearable fitness tracker referenced from the physical activity wearable observation example. |
| [Sitting Hours O mapped from EHIS-PAQ Q9 / ATHIS PE9 – Example](Observation-sitting-hours-questionnaire-derived-example.md) | Example of a self-reported sitting/resting duration (6.0 h per day, sleep excluded) derived from EhisPaqSittingHoursQuestionnaire via SittingHoursQuestionnaireResponseToObservation. |
| [Sitting Hours O – Wearable Automated Example](Observation-sitting-hours-wearable-example.md) | Example of an automatically measured sitting/resting duration (6.0 h per day, sleep excluded) derived from a wearable device. |
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

