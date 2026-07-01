# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\EHIS-PAQ/ATHIS: Körperliche Aktivität - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EHIS-PAQ/ATHIS: Körperliche Aktivität**

## Questionnaire: EHIS-PAQ/ATHIS: Körperliche Aktivität 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/EhisPaqPhysicalActivityQuestionnaire | *Version*:0.1.0 | |
| Active as of 2026-07-01 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:EhisPaqPhysicalActivityQuestionnaire |

 
EHIS-PAQ Q4–Q7 (equivalent to ATHIS PE4–PE7). Q7 only is mapped to the AT PreNUDGE Observation Physical Activity profile. 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-07-01

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "EhisPaqPhysicalActivityQuestionnaire",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire"]
  },
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/EhisPaqPhysicalActivityQuestionnaire",
  "version" : "0.1.0",
  "name" : "EhisPaqPhysicalActivityQuestionnaire",
  "title" : "EHIS-PAQ/ATHIS: Körperliche Aktivität",
  "status" : "active",
  "date" : "2026-07-01T10:20:10+00:00",
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
  "description" : "EHIS-PAQ Q4–Q7 (equivalent to ATHIS PE4–PE7). Q7 only is mapped to the AT PreNUDGE Observation Physical Activity profile.",
  "item" : [{
    "linkId" : "Q4",
    "text" : "An wie vielen Tagen in einer typischen Woche fahren Sie mindestens 10 Minuten ohne Unterbrechung mit dem Fahrrad, um von Ort zu Ort zu gelangen?",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
        "code" : "activity-never-or-rarely",
        "display" : "Nie oder seltener als einmal pro Woche"
      }
    },
    {
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
      "linkId" : "Q4-comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string",
      "required" : false
    }]
  },
  {
    "linkId" : "Q5",
    "text" : "Wie lange fahren Sie an einem typischen Tag mit dem Fahrrad, um von Ort zu Ort zu gelangen?",
    "type" : "choice",
    "required" : true,
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
      "linkId" : "Q5-comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string",
      "required" : false
    }]
  },
  {
    "linkId" : "Q6",
    "text" : "An wie vielen Tagen in einer typischen Woche üben Sie mindestens 10 Minuten ohne Unterbrechung Sport, Fitness oder körperliche Aktivität in der Freizeit aus? Zum Beispiel (Nordic-)Walking, Ballsport, Joggen, Fahrradfahren, Schwimmen, Aerobic, Rudern oder Badminton",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
        "code" : "activity-never-or-rarely",
        "display" : "Nie oder seltener als einmal pro Woche"
      }
    },
    {
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
      "linkId" : "Q6-comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string",
      "required" : false
    }]
  },
  {
    "linkId" : "Q7",
    "text" : "Wie viel Zeit verbringen Sie insgesamt in einer typischen Woche mit Sport, Fitness oder körperlicher Aktivität in der Freizeit?",
    "type" : "group",
    "required" : true,
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueInteger" : 0
      }],
      "linkId" : "Q7-hours",
      "text" : "Stunden pro Woche",
      "type" : "integer",
      "required" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueInteger" : 0
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueInteger" : 59
      }],
      "linkId" : "Q7-minutes",
      "text" : "Minuten pro Woche (zusätzlich zu den Stunden)",
      "type" : "integer",
      "required" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "(%resource.item.where(linkId='Q7').item.where(linkId='Q7-hours').answer.valueInteger * 60) + %resource.item.where(linkId='Q7').item.where(linkId='Q7-minutes').answer.valueInteger"
        }
      }],
      "linkId" : "Q7-total-minutes",
      "text" : "Gesamtminuten pro Woche (berechnet)",
      "type" : "integer",
      "readOnly" : true
    },
    {
      "linkId" : "Q7-comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string",
      "required" : false
    }]
  }]
}

```
