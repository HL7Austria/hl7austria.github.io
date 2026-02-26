# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Blutzucker - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Blutzucker**

## Questionnaire: Blutzucker 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/BloodGlucoseQuestionnaire | *Version*:0.1.0 | |
| Active as of 2026-02-26 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:BloodGlucoseQuestionnaire |

 
A simple questionnaire for asking how high the blood glucose level is right now. The blood glucose option only allowes values inbetween 12 and 1200. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "BloodGlucoseQuestionnaire",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire"]
  },
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/BloodGlucoseQuestionnaire",
  "version" : "0.1.0",
  "name" : "BloodGlucoseQuestionnaire",
  "title" : "Blutzucker",
  "status" : "active",
  "experimental" : false,
  "subjectType" : ["Patient"],
  "date" : "2026-02-26T10:01:13+00:00",
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
  "description" : "A simple questionnaire for asking how high the blood glucose level is right now. The blood glucose option only allowes values inbetween 12 and 1200.",
  "item" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueInteger" : 12
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
      "valueInteger" : 1200
    }],
    "linkId" : "blood-glucose-now",
    "code" : [{
      "system" : "http://loinc.org",
      "code" : "1556-0"
    }],
    "text" : "Wie hoch ist ihr Blutzucker in mg/dL aktuell?",
    "type" : "integer",
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
