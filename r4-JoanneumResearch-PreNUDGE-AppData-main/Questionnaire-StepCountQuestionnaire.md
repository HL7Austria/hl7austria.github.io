# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Schrittanzahl (täglich) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Schrittanzahl (täglich)**

## Questionnaire: Schrittanzahl (täglich) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://example.org/fhir/Questionnaire/step-count | *Version*:0.1.0 | |
| Active as of 2026-02-13 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:StepCountQuestionnaire |

 
A simple questionnaire for asking how many steps have been done today. The step count option only allowes values inbetween 0 and 300 000. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "StepCountQuestionnaire",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire"
    ]
  },
  "url" : "http://example.org/fhir/Questionnaire/step-count",
  "version" : "0.1.0",
  "name" : "StepCountQuestionnaire",
  "title" : "Schrittanzahl (täglich)",
  "status" : "active",
  "experimental" : false,
  "subjectType" : ["Patient"],
  "date" : "2026-02-13T19:47:50+00:00",
  "publisher" : "The PreNUDGE Consortium",
  "contact" : [
    {
      "name" : "The PreNUDGE Consortium",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://prenudge.at"
        }
      ]
    },
    {
      "name" : "The PreNUDGE Consortium",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://prenudge.at",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "A simple questionnaire for asking how many steps have been done today. The step count option only allowes values inbetween 0 and 300 000.",
  "item" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
          "valueInteger" : 0
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
          "valueInteger" : 300000
        }
      ],
      "linkId" : "step-count-today",
      "code" : [
        {
          "system" : "http://loinc.org",
          "code" : "41950-7"
        }
      ],
      "text" : "Wie viele Schritte sind Sie heute gegangen?",
      "type" : "integer",
      "required" : true,
      "repeats" : false
    }
  ]
}

```
