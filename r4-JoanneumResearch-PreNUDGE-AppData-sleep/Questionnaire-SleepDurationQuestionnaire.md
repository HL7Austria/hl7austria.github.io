# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Durchschnittliche Schlafdauer pro Nacht - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Durchschnittliche Schlafdauer pro Nacht**

## Questionnaire: Durchschnittliche Schlafdauer pro Nacht 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/SleepDurationQuestionnaire | *Version*:0.1.0 | |
| Active as of 2026-05-27 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:SleepDurationQuestionnaire |

 
A simple questionnaire for self-reporting average sleep duration per night in hours. Only allows values between 0 and 24 hours. 



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
  "date" : "2026-05-27T15:35:26+00:00",
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
    "text" : "Wie viele Stunden haben Sie durchschnittlich pro Nacht geschlafen?",
    "type" : "quantity",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "today().subtract(1).toString()"
        }
      }],
      "linkId" : "date",
      "text" : "Für welchen Zeitraum gilt dieser Wert?",
      "type" : "date",
      "required" : true,
      "repeats" : false
    },
    {
      "linkId" : "comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  }]
}

```
