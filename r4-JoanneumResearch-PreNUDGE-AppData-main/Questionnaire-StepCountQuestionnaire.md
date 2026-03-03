# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Schrittzahl am heutigen Tag - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Schrittzahl am heutigen Tag**

## Questionnaire: Schrittzahl am heutigen Tag 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/StepCountQuestionnaire | *Version*:0.1.0 | |
| Active as of 2026-03-03 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:StepCountQuestionnaire |

 
A simple questionnaire for asking how many steps the patient has taken today. Only allows values inbetween 0 and 150,000. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "StepCountQuestionnaire",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire"]
  },
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/StepCountQuestionnaire",
  "version" : "0.1.0",
  "name" : "StepCountQuestionnaire",
  "title" : "Schrittzahl am heutigen Tag",
  "status" : "active",
  "experimental" : false,
  "subjectType" : ["Patient"],
  "date" : "2026-03-03T16:09:57+00:00",
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
  "description" : "A simple questionnaire for asking how many steps the patient has taken today. Only allows values inbetween 0 and 150,000.",
  "item" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption",
      "valueCoding" : {
        "system" : "http://unitsofmeasure.org",
        "code" : "{steps}/d",
        "display" : "{steps}/d"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueDecimal" : 0
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
      "valueDecimal" : 150000
    }],
    "linkId" : "step-count-today",
    "code" : [{
      "system" : "http://loinc.org",
      "code" : "41950-7"
    }],
    "text" : "Wie viele Schritte sind Sie heute gegangen?",
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
