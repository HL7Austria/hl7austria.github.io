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
| [Arbeitsbezogenes Kohärenzgefühl (Work-SoC)](Questionnaire-WorkSocQuestionnaire.md) | Work-related Sense of Coherence (Work-SoC) questionnaire. The raw item responses are collected in the QuestionnaireResponse. Category scores are defined as SDC calculated expressions and may be mapped to a Work-SoC score Observation. |
| [Arbeitsfähigkeit (WAI Kurzmodul)](Questionnaire-WorkAbilityIndexQuestionnaire.md) | Short Work Ability Index (WAI) questionnaire module based on Tuomi et al. 1998. The raw answers are collected as QuestionnaireResponse. |
| [Blutzucker bei der letzten Messung](Questionnaire-BloodGlucoseQuestionnaire.md) | A simple questionnaire for asking how high the blood glucose level is right now. The blood glucose option only allows values inbetween 0 and 999 mg/dL. |
| [Durchschnittliche Schlafdauer pro Nacht](Questionnaire-SleepDurationQuestionnaire.md) | A simple questionnaire for self-reporting average sleep duration per night in hours. Only allows values between 0 and 24 hours. |
| [EHIS-PAQ: Zu-Fuß-Gehen](Questionnaire-StepCountEhisPaqQuestionnaire.md) | The questions Q2 and Q3 from the EHIS-PAQ about the number of days and duration of walking (for transport) in a typical week. |
| [Höchster abgeschlossener Bildungsabschluss](Questionnaire-EducationQuestionnaire.md) | A simple questionnaire asking for the person's highest completed education level using ISCED 2011 levels. |
| [Körpergröße, Körpergewicht und Body Mass Index (BMI)](Questionnaire-BmiQuestionnaire.md) | Questionnaire for self-reporting body height and body weight. The Body Mass Index (BMI) is defined as an SDC calculated expression based on height in cm and weight in kg. The QuestionnaireResponse may be mapped to separate body height, body weight and BMI Observations. |
| [Rauchstatus und Nikotinkonsum](Questionnaire-SmokingStatusQuestionnaire.md) | ATHIS 2025-based questionnaire module for smoking status, cigarette consumption, duration of daily smoking, tobacco heaters, electronic cigarettes or similar electronic products, and nicotine pouches. A derived IPS-compatible Observation can be created from SK1 and the past tobacco smoking question. |
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
| [AT PreNUDGE Observation Alcohol Use](StructureDefinition-at-prenudge-alcoholuse-observation.md) | This FHIR profile is derived from the APS Observation Alcohol Use profile. Additional fields from the PreNUDGE Observation profile are added. |
| [AT PreNUDGE Observation Blood Glucose (only in mg/dL)](StructureDefinition-at-prenudge-bloodglucose-observation.md) | This FHIR profile is defining the Blood Glucose Observation, similar to the Observation Social History - Alcohol Use from the IPS. The blood glucose option only allows values inbetween 0 and 999 mg/dL. |
| [AT PreNUDGE Observation Body Height](StructureDefinition-at-prenudge-bodyheight-observation.md) | This FHIR profile defines a body height Observation based on the FHIR R4 Vital Signs body height concept. Body height is represented using LOINC 8302-2 and UCUM cm. |
| [AT PreNUDGE Observation Body Mass Index](StructureDefinition-at-prenudge-bmi-observation.md) | This FHIR profile defines a Body Mass Index (BMI) Observation based on the FHIR R4 Vital Signs BMI concept. BMI is represented using LOINC 39156-5 and UCUM kg/m2. |
| [AT PreNUDGE Observation Body Weight](StructureDefinition-at-prenudge-bodyweight-observation.md) | This FHIR profile defines a body weight Observation based on the FHIR R4 Vital Signs body weight concept. Body weight is represented using LOINC 29463-7 and UCUM kg. |
| [AT PreNUDGE Observation Highest Completed Education](StructureDefinition-at-prenudge-education-observation.md) | This FHIR profile defines the person's highest completed education level using ISCED 2011. It is intended for sociodemographic data collected by a simple questionnaire. |
| [AT PreNUDGE Observation Other Quantities](StructureDefinition-at-prenudge-observation-other-quantities.md) | This FHIR profile can be used for all the other Observations for PreNUDGE, beeing quantities and not fitting the existing narrow standardized observations. If some code for specifying a new Observation is missing, please contact prenudge@joanneum.at. |
| [AT PreNUDGE Observation Other not Quantities](StructureDefinition-at-prenudge-observation-other-not-quantities.md) | This FHIR profile can be used for all the other Observations for PreNUDGE, not being an quantity and not fitting the existing narrow standardized observations. |
| [AT PreNUDGE Observation Sleep Duration](StructureDefinition-at-prenudge-sleep-duration-observation.md) | This FHIR profile defines the Sleep Duration Observation recording average nightly sleep in hours. Applicable for both automated wearable measurements (method = automated) and self-reported values derived from a questionnaire (method = manual). |
| [AT PreNUDGE Observation Sleep Quality](StructureDefinition-at-prenudge-sleep-quality-observation.md) | Records the self-assessed sleep quality from PROMIS (My sleep quality was…in past 7 days). Also used to map WHOQOL-BREF Q16 from standalone SleepQualityQuestionnaire or the full WhoQolBrefQuestionnaire. |
| [AT PreNUDGE Observation Smoking Status](StructureDefinition-at-prenudge-smokingstatus-observation.md) | This FHIR profile is defining the current smoking status observation for PreNUDGE. It is derived from the APS Observation Tobacco Use profile, which imposes the IPS Observation Social History - Tobacco Use profile. The value is derived from the ATHIS-based SmokingStatusQuestionnaire, primarily from SK1 and, if SK1 is negative, from the past tobacco smoking question. Additional fields from the PreNUDGE Observation profile are added. |
| [AT PreNUDGE Observation Step Count](StructureDefinition-at-prenudge-stepcount-observation.md) | This FHIR profile is defining the Step Count Observation. The step count only allows values inbetween 0 and 150,000 steps per 24 hours. |
| [AT PreNUDGE Observation WHOQOL-BREF Score](StructureDefinition-at-prenudge-whoqol-bref-score-observation.md) | Observation profile for recording WHOQOL-BREF domain scores. The overall score is represented in Observation.value, individual domain scores are recorded as components. |
| [AT PreNUDGE Observation Work-SoC Category Score](StructureDefinition-at-prenudge-work-soc-score-observation.md) | This FHIR profile defines the calculated work-related sense of coherence (Work-SoC) category score observation. It contains the category scores for comprehensibility, manageability and meaningfulness as Observation components. The raw Work-SoC item answers are represented in the source QuestionnaireResponse. |
| [AT PreNUDGE Questionnaire Response](StructureDefinition-at-prenudge-questionnaireresponse.md) | This FHIR profile is defining the overall Questionnaire Response for PreNUDGE. Be aware that if the user enters values from a device into a questionnaire, it is still considered a manual input. Please keep in mind that all questionnaire responses must comply with the qualification matrix on https://prenudge.at/qualificationmatrix/. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AT PreNUDGE Alcohol Use Frequency](ValueSet-prenudge-alcoholuse-frequency.md) | Frequencies used in the PreNUDGE alcoholuse questionnaire. |
| [AT PreNUDGE Blood Glucose Meal Context](ValueSet-prenudge-bloodglucose-mealcontext.md) | Meal context used in the PreNUDGE Blood Glucose questionnaire and observation. |
| [AT PreNUDGE ISCED 2011 Education Level ValueSet](ValueSet-prenudge-isced-2011-education-level.md) | Permitted answer values for the highest completed education level according to ISCED 2011. |
| [AT PreNUDGE Observation Methods](ValueSet-prenudge-observation-method.md) | ValueSet containing SNOMED CT codes for differentiating methods used in the PreNUDGE observation. |
| [AT PreNUDGE Other Observations Codes](ValueSet-prenudge-other-observations-codes.md) | Allowed observation codes for the 'Other' observation profile. |
| [AT PreNUDGE Other Observations Units](ValueSet-prenudge-other-observations-units.md) | Allowed UCUM units for the 'Other' observation profile. |
| [AT PreNUDGE WAI Physical Demands Answer ValueSet](ValueSet-prenudge-wai-physical-demands-answer.md) | Permitted categorical answers for current work ability in relation to physical work demands. |
| [AT PreNUDGE WHOQOL-BREF Score Type ValueSet](ValueSet-prenudge-whoqol-bref-score-type.md) | ValueSet containing SNOMED CT codes for differentiating WHOQOL-BREF overall and domain scores. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AT PreNUDGE ISCED 2011 Education Level Codes](CodeSystem-prenudge-isced-2011-education-level.md) | Local representation of ISCED 2011 education levels for the highest completed education level used in PreNUDGE. Austrian levels are described at https://bildungssystem.oead.at/isced-klassifikation |
| [AT PreNUDGE WAI Answer Codes](CodeSystem-prenudge-wai-answer.md) | Local answer codes for categorical Work Ability Index answer options. |
| [AT PreNUDGE WHOQOL-BREF Answer Scales](CodeSystem-whoqol-bref-scale.md) | Consolidated CodeSystem for all answer scales of the WHOQOL-BREF questionnaire. |
| [AT PreNUDGE Workability Codes](CodeSystem-prenudge-workability.md) | Local PreNUDGE codes for workability questionnaires and derived Work-SoC score observations. Work-SoC source DOI: https://doi.org/10.4102/sajip.v39i1.1111 |
| [ATHIS – Antwortmöglichkeiten](CodeSystem-athis-answers.md) | Vollständige Antwortmöglichkeiten aus dem ATHIS Fragebogen (Österreichische Gesundheitsbefragung, STATISTIK AUSTRIA, Version 31.03.2025). Codes sind englisch; Display-Werte bleiben deutsch. Gruppiert nach Skalentypen. Hinweis: Bestehende PreNUDGE CodeSystems bleiben gültig – whoqol-bref-scale (LQ16-Zufriedenheitsskala), prenudge-nutrition-consumption-frequency (DH1/DH3 numerische Codes), prenudge-alcoholuse-frequency (AL1 SNOMED-basiert). |

### Terminology: Structure Maps 

These define transformations to convert between data structures used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ATHIS-based Smoking Status Q to O](StructureMap-SmokingStatusQuestionnaireResponseToObservation.md) | ATHIS-based Smoking Status Q to O |
| [Alcohol Use Q mapping frequency to O drinks per day](StructureMap-AlcoholQuestionnaireResponseToObservation.md) | Alcohol Use Q mapping frequency to O drinks per day |
| [BMI Q to Body Height, Body Weight and BMI Observations Bundle](StructureMap-BmiQuestionnaireResponseToObservations.md) | BMI Q to Body Height, Body Weight and BMI Observations Bundle |
| [Blood Glucose Q to O](StructureMap-BloodGlucoseQuestionnaireResponseToObservation.md) | Blood Glucose Q to O |
| [Highest Completed Education Q to O](StructureMap-EducationQuestionnaireResponseToObservation.md) | Highest Completed Education Q to O |
| [Shared base for Q to O](StructureMap-QuestionnaireResponseToObservationBase.md) | Shared base for Q to O |
| [Sleep Duration Q to O](StructureMap-SleepDurationQuestionnaireResponseToObservation.md) | Sleep Duration Q to O |
| [Sleep Quality Base (WHOQOL-BREF scale to LOINC)](StructureMap-SleepQualityBase.md) | Sleep Quality Base (WHOQOL-BREF scale to LOINC) |
| [Step Count Q to O](StructureMap-StepCountQuestionnaireResponseToObservation.md) | Step Count Q to O |
| [WHOQOL-BREF Q score to O score](StructureMap-WHOQOLBrefQuestionnaireResponseToObservation.md) | WHOQOL-BREF Q score to O score |
| [Work-SoC Q score to O score](StructureMap-WorkSocQuestionnaireResponseToObservation.md) | Work-SoC Q score to O score |

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
| [BMI Questionnaire Response Example](QuestionnaireResponse-bmi-questionnaire-response-example.md) | Example of a BMI questionnaire response with body height, body weight and a calculated BMI value. |
| [Blood Glucose O - Low Example](Observation-bloodglucose-low-example.md) | Example of a low fasting blood glucose measurement (62 mg/dL), indicating hypoglycemia. |
| [Blood Glucose O mapped from Q - Elevated Example](Observation-bloodglucose-elevated-example.md) | Example of an elevated fasting blood glucose measurement (142 mg/dL), indicating diabetes mellitus. |
| [Blood Glucose O mapped from Q - Normal Example](Observation-bloodglucose-normal-example.md) | Example of a normal fasting blood glucose measurement (95 mg/dL). |
| [Blood Glucose Q - Elevated Example](QuestionnaireResponse-bloodglucose-response-elevated-example.md) | Example of an elevated fasting blood glucose measurement (142 mg/dL), indicating diabetes mellitus. |
| [Blood Glucose Q - Normal Example](QuestionnaireResponse-bloodglucose-response-normal-example.md) | Example of a normal fasting blood glucose measurement (95 mg/dL). |
| [Body Height O - Example](Observation-bodyheight-example.md) | Example body height Observation derived from a BMI questionnaire response. |
| [Body Mass Index O - Example](Observation-bmi-example.md) | Example BMI Observation derived from a BMI questionnaire response. |
| [Body Weight O - Example](Observation-bodyweight-example.md) | Example body weight Observation derived from a BMI questionnaire response. |
| [Education O mapped from Q - Bachelor's Level Example](Observation-education-bachelor-example.md) | Example of a highest completed education observation mapped from the EducationQuestionnaire. |
| [Education O mapped from Q - Upper Secondary Education Example](Observation-education-upper-secondary-example.md) | Example of a highest completed education observation mapped from the EducationQuestionnaire. |
| [Education Q - Bachelor's Level Example](QuestionnaireResponse-education-response-bachelor-example.md) | Example of a highest completed education questionnaire response using ISCED 2011 level 6. |
| [Education Q - Upper Secondary Education Example](QuestionnaireResponse-education-response-upper-secondary-example.md) | Example of a highest completed education questionnaire response using ISCED 2011 level 3. |
| [Sleep Duration O - Normal Automated Example](Observation-sleep-duration-normal-automated-example.md) | Example of a normal average sleep duration (7.5 h) measured by a wearable device. |
| [Sleep Duration O - Short Automated Example](Observation-sleep-duration-short-automated-example.md) | Example of a short average sleep duration (5.5 h) measured by a wearable device, indicating insufficient sleep. |
| [Sleep Duration O mapped from Q - Normal Example](Observation-sleep-duration-normal-manual-example.md) | Example of a self-reported average sleep duration (7 h) derived from a questionnaire response. |
| [Sleep Duration Q - Normal Example](QuestionnaireResponse-sleep-duration-response-normal-example.md) | Example of a self-reported normal average sleep duration (7 h per night). |
| [Sleep Duration Q - Short Example](QuestionnaireResponse-sleep-duration-response-short-example.md) | Example of a self-reported short average sleep duration (5.5 h per night). |
| [Sleep Quality O mapped from Q - Dissatisfied Example](Observation-sleep-quality-dissatisfied-example.md) | Example of a sleep quality observation indicating poor sleep satisfaction (LA8969-3 - Poor), derived from the standalone SleepQualityQuestionnaire (S2 - Unzufrieden mapped to LOINC). |
| [Sleep Quality O mapped from Q - Satisfied Example](Observation-sleep-quality-satisfied-example.md) | Example of a sleep quality observation indicating good sleep satisfaction (LA8967-7 - Good), derived from the standalone SleepQualityQuestionnaire (S4 - Zufrieden mapped to LOINC). |
| [Sleep Quality Q - Dissatisfied Example](QuestionnaireResponse-sleep-quality-response-dissatisfied-example.md) | Example of a standalone sleep quality questionnaire response indicating dissatisfaction with sleep (S2 - Unzufrieden). |
| [Sleep Quality Q - Satisfied Example](QuestionnaireResponse-sleep-quality-response-satisfied-example.md) | Example of a standalone sleep quality questionnaire response indicating satisfaction with sleep (S4 - Zufrieden). |
| [Smoking Status O - Not Stated Example](Observation-smokingstatus-not-stated-example.md) | Example of a smoking status observation where no clinically meaningful smoking status could be derived because the respondent declined to answer. |
| [Smoking Status O mapped from ATHIS Q - Current Daily Tobacco Smoker Example](Observation-smokingstatus-current-every-day-example.md) | Example of a smoking status observation for a current daily tobacco smoker, mapped from SK1 of the ATHIS-based SmokingStatusQuestionnaire. |
| [Smoking Status O mapped from ATHIS Q - Former Tobacco Smoker Example](Observation-smokingstatus-former-example.md) | Example of a smoking status observation for a former tobacco smoker, mapped from SK1 and the past tobacco smoking question of the ATHIS-based SmokingStatusQuestionnaire. |
| [Smoking Status O mapped from ATHIS Q - Never Tobacco Smoker Example](Observation-smokingstatus-never-example.md) | Example of a smoking status observation for a person who never smoked tobacco, mapped from SK1 and the past tobacco smoking question of the ATHIS-based SmokingStatusQuestionnaire. |
| [Smoking Status Q ATHIS - Current Daily Tobacco Smoker Example](QuestionnaireResponse-SmokingStatusResponseCurrentEveryDay.md) | Example of an ATHIS-based smoking status questionnaire response for a current daily tobacco smoker. The derived observation maps SK1 daily to SNOMED CT 449868002. |
| [Smoking Status Q ATHIS - Former Tobacco Smoker Example](QuestionnaireResponse-SmokingStatusResponseFormer.md) | Example of an ATHIS-based smoking status questionnaire response for a former tobacco smoker. The derived observation maps SK1 no and past tobacco smoking to SNOMED CT 8517006. |
| [Smoking Status Q ATHIS - Never Tobacco Smoker Example](QuestionnaireResponse-SmokingStatusResponseNever.md) | Example of an ATHIS-based smoking status questionnaire response for a person who never smoked tobacco. The derived observation maps SK1 no and past tobacco smoking no to SNOMED CT 266919005. |
| [Smoking Status Q ATHIS - Not Stated Example](QuestionnaireResponse-SmokingStatusResponseNotStated.md) | Example of an ATHIS-based smoking status questionnaire response where the respondent declined to answer the current tobacco smoking question. The derived observation uses dataAbsentReason asked-declined. |
| [Step Count EHIS PAQ Q - High Example](QuestionnaireResponse-stepcount-ehispaq-high.md) | Example of a high step count (7 times a week with 2-3 hours). |
| [Step Count EHIS PAQ Q - Normal Example](QuestionnaireResponse-stepcount-ehispaq-normal.md) | Example of a normal step count (5 times a week with 30-59 minutes). |
| [Step Count O - Sedentary Example](Observation-stepcount-sedentary-example.md) | Example of a low step count (1,204 steps per day), typical for a mostly sedentary day. |
| [Step Count O mapped from Q - High Example](Observation-stepcount-high-example.md) | Example of a high step count (133,519 steps per day). |
| [Step Count O mapped from Q - Normal Example](Observation-stepcount-normal-example.md) | Example of a normal step count (8,432 steps per day). |
| [Step Count Q - High Example](QuestionnaireResponse-stepcount-quantity-response-high-example.md) | Example of a high step count (133,519 steps per day). |
| [Step Count Q - Normal Example](QuestionnaireResponse-stepcount-quantity-response-normal-example.md) | Example of a normal step count (8,432 steps per day). |
| [WAI Q - Example](QuestionnaireResponse-wai-response-example.md) | Example of a short Work Ability Index questionnaire response. |
| [WHOQOL-BREF O Score only mapped from Q](Observation-whoqol-bref-score-example.md) | Example of a WHOQOL-BREF score observation with a general score and all four domain scores. |
| [WHOQOL-BREF Q](QuestionnaireResponse-whoqol-bref-response-example.md) | Example of a completed WHOQOL-BREF QuestionnaireResponse including all 26 items and calculated scores. |
| [Work-SoC Q - Example](QuestionnaireResponse-work-soc-response-example.md) | Example of a Work-SoC questionnaire response with nine raw item answers. |
| [Work-SoC Score O mapped from Q - Example](Observation-work-soc-score-example.md) | Example of a calculated Work-SoC category score observation derived from the WorkSocQuestionnaire. |

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-06-24

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)