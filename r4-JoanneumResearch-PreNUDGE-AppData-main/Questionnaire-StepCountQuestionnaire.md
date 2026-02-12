# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Schrittanzahl (täglich) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Schrittanzahl (täglich)**

## Questionnaire: Schrittanzahl (täglich) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://example.org/fhir/Questionnaire/step-count | *Version*:0.1.0 | |
| Active as of 2026-02-12 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:StepCountQuestionnaire |

 
A simple questionnaire for asking how many steps have been done today. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "StepCountQuestionnaire",
  "url" : "http://example.org/fhir/Questionnaire/step-count",
  "version" : "0.1.0",
  "name" : "StepCountQuestionnaire",
  "title" : "Schrittanzahl (täglich)",
  "status" : "active",
  "experimental" : false,
  "subjectType" : ["Patient"],
  "date" : "2026-02-12T15:14:29+00:00",
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
  "description" : "A simple questionnaire for asking how many steps have been done today.",
  "item" : [
    {
      "linkId" : "step-count-today",
      "text" : "Wie viele Schritte sind Sie heute gegangen?",
      "type" : "integer",
      "required" : true,
      "repeats" : false
    }
  ]
}

```
