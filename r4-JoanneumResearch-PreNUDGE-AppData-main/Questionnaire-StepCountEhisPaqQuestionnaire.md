# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\EHIS-PAQ/ATHIS: Zu-Fuß-Gehen - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EHIS-PAQ/ATHIS: Zu-Fuß-Gehen**

## Questionnaire: EHIS-PAQ/ATHIS: Zu-Fuß-Gehen 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/StepCountEhisPaqQuestionnaire | *Version*:0.1.0 | |
| Active as of 2026-07-22 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:StepCountEhisPaqQuestionnaire |

 
EHIS-PAQ Q2–Q3 (equivalent to ATHIS PE2–PE3): number of days per week (Q2/PE2) and duration per day (Q3/PE3) of walking for transport in a typical week. 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-07-22

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "StepCountEhisPaqQuestionnaire",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire"]
  },
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/StepCountEhisPaqQuestionnaire",
  "version" : "0.1.0",
  "name" : "StepCountEhisPaqQuestionnaire",
  "title" : "EHIS-PAQ/ATHIS: Zu-Fuß-Gehen",
  "status" : "active",
  "experimental" : false,
  "subjectType" : ["Patient"],
  "date" : "2026-07-22T11:37:23+00:00",
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
  "description" : "EHIS-PAQ Q2–Q3 (equivalent to ATHIS PE2–PE3): number of days per week (Q2/PE2) and duration per day (Q3/PE3) of walking for transport in a typical week.",
  "item" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueDecimal" : 0
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
      "valueDecimal" : 7
    }],
    "linkId" : "Q2-walking-days",
    "text" : "An wie vielen Tagen in einer typischen Woche gehen Sie mindestens 10 Minuten ohne Unterbrechung zu Fuß, um von Ort zu Ort zu gelangen?",
    "type" : "integer",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "Q2-comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  },
  {
    "linkId" : "Q3-walking-duration",
    "text" : "Wie lange gehen Sie an einem typischen Tag zu Fuß, um von Ort zu Ort zu gelangen?",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
        "code" : "activity-10-29-min",
        "display" : "10 bis 29 Minuten pro Tag"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
        "code" : "activity-30-59-min",
        "display" : "30 bis 59 Minuten pro Tag"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
        "code" : "activity-1h-under-2h",
        "display" : "1 Stunde bis unter 2 Stunden pro Tag"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
        "code" : "activity-2h-under-3h",
        "display" : "2 Stunden bis unter 3 Stunden pro Tag"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
        "code" : "activity-3h-or-more",
        "display" : "3 Stunden pro Tag oder mehr"
      }
    }],
    "item" : [{
      "linkId" : "Q3-comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  }]
}

```
