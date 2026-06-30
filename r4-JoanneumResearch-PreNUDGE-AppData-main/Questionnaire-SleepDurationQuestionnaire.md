# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Durchschnittliche Schlafdauer pro Nacht - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Durchschnittliche Schlafdauer pro Nacht**

## Questionnaire: Durchschnittliche Schlafdauer pro Nacht 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/SleepDurationQuestionnaire | *Version*:0.1.0 | |
| Active as of 2026-06-30 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:SleepDurationQuestionnaire |

 
A simple questionnaire for self-reporting average sleep duration per night in hours. Only allows values between 0 and 24 hours. 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-06-30

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "SleepDurationQuestionnaire",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire"]
  },
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/SleepDurationQuestionnaire",
  "version" : "0.1.0",
  "name" : "SleepDurationQuestionnaire",
  "title" : "Durchschnittliche Schlafdauer pro Nacht",
  "status" : "active",
  "experimental" : false,
  "subjectType" : ["Patient"],
  "date" : "2026-06-30T14:49:39+00:00",
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
  "description" : "A simple questionnaire for self-reporting average sleep duration per night in hours. Only allows values between 0 and 24 hours.",
  "item" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption",
      "valueCoding" : {
        "system" : "http://unitsofmeasure.org",
        "code" : "h",
        "display" : "h"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueDecimal" : 0
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
      "valueDecimal" : 24
    }],
    "linkId" : "sleep-duration",
    "code" : [{
      "system" : "http://loinc.org",
      "code" : "93832-4",
      "display" : "Sleep duration"
    }],
    "text" : "Effektive Schlafzeit (Stunden) pro Nacht (0-24): Wie viele Stunden haben Sie während der letzten 4 Wochen pro Nacht (oder wann Sie üblicherweise schlafen) tatsächlich geschlafen? Das muss nicht mit der Anzahl der Stunden, die Sie im Bett verbracht haben, übereinstimmen.",
    "type" : "quantity",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  }]
}

```
