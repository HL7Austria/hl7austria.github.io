# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\EHIS-PAQ Q8 / ATHIS PE8: Muskelkräftigungsübungen - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EHIS-PAQ Q8 / ATHIS PE8: Muskelkräftigungsübungen**

## Questionnaire: EHIS-PAQ Q8 / ATHIS PE8: Muskelkräftigungsübungen 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/EhisPaqMuscleStrengtheningQuestionnaire | *Version*:0.1.0 | |
| Active as of 2026-08-06 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:EhisPaqMuscleStrengtheningQuestionnaire |

 
EHIS-PAQ Q8 / ATHIS PE8: number of days per week on which the respondent performs physical activities specifically aimed at building or strengthening muscles (e.g. weight training, resistance-band exercises, bodyweight exercises, squats, push-ups, sit-ups). Answer options use existing ATHIS CodeSystem codes activity-1-day through activity-7-days. Two mapping paths to AtPrenudgeObservationMuscleStrengthening are available: (1) directly from this questionnaire via MuscleStrengtheningEhisPaqQuestionnaireResponseToObservation (translates coded day-count to numeric sessions/wk: 1 day = 1 session/wk, …, 7 days = 7 sessions/wk); (2) via MuscleStrengtheningQuantityQuestionnaire and MuscleStrengtheningQuestionnaireResponseToObservation when a numeric quantity answer is preferred. 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-08-06

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "EhisPaqMuscleStrengtheningQuestionnaire",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire"]
  },
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/EhisPaqMuscleStrengtheningQuestionnaire",
  "version" : "0.1.0",
  "name" : "EhisPaqMuscleStrengtheningQuestionnaire",
  "title" : "EHIS-PAQ Q8 / ATHIS PE8: Muskelkräftigungsübungen",
  "status" : "active",
  "date" : "2026-08-06T10:54:53+00:00",
  "publisher" : "The PreNUDGE Consortium",
  "contact" : [{
    "name" : "The PreNUDGE Consortium",
    "telecom" : [{
      "system" : "url",
      "value" : "https://prenudge.at"
    }]
  },
  {
    "name" : "The PreNUDGE Consortium",
    "telecom" : [{
      "system" : "url",
      "value" : "https://prenudge.at",
      "use" : "work"
    }]
  }],
  "description" : "EHIS-PAQ Q8 / ATHIS PE8: number of\ndays per week on which the respondent performs physical activities specifically aimed at\nbuilding or strengthening muscles (e.g. weight training, resistance-band exercises,\nbodyweight exercises, squats, push-ups, sit-ups). Answer options use existing ATHIS\nCodeSystem codes activity-1-day through activity-7-days. Two mapping paths to\nAtPrenudgeObservationMuscleStrengthening are available: (1) directly from this\nquestionnaire via MuscleStrengtheningEhisPaqQuestionnaireResponseToObservation\n(translates coded day-count to numeric sessions/wk: 1 day = 1 session/wk, …, 7 days\n= 7 sessions/wk); (2) via MuscleStrengtheningQuantityQuestionnaire and\nMuscleStrengtheningQuestionnaireResponseToObservation when a numeric quantity answer\nis preferred.",
  "item" : [{
    "linkId" : "Q8",
    "text" : "An wie vielen Tagen in einer typischen Woche üben Sie körperliche Aktivitäten aus, die speziell für den Aufbau oder die Kräftigung der Muskulatur gedacht sind? Zum Beispiel Krafttraining oder Kräftigungsübungen (mit Gewichten, Thera-Band, eigenem Körpergewicht), Kniebeugen, Liegestützen oder Sit-ups.",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
        "code" : "activity-1-day",
        "display" : "1 Tag pro Woche"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
        "code" : "activity-2-days",
        "display" : "2 Tage pro Woche"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
        "code" : "activity-3-days",
        "display" : "3 Tage pro Woche"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
        "code" : "activity-4-days",
        "display" : "4 Tage pro Woche"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
        "code" : "activity-5-days",
        "display" : "5 Tage pro Woche"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
        "code" : "activity-6-days",
        "display" : "6 Tage pro Woche"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
        "code" : "activity-7-days",
        "display" : "7 Tage pro Woche"
      }
    }],
    "item" : [{
      "linkId" : "Q8-comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string",
      "required" : false
    }]
  }]
}

```
