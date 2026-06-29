# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Alkoholkonsum im letzten Jahr - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Alkoholkonsum im letzten Jahr**

## Questionnaire: Alkoholkonsum im letzten Jahr 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/AlcoholUseQuestionnaire | *Version*:0.1.0 | |
| Active as of 2026-06-29 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AlcoholUseQuestionnaire |

 
Categorical variable for the frequency of alcohol consumption in the last year (IPS compatible). 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-06-29

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "AlcoholUseQuestionnaire",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire"]
  },
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/AlcoholUseQuestionnaire",
  "version" : "0.1.0",
  "name" : "AlcoholUseQuestionnaire",
  "title" : "Alkoholkonsum im letzten Jahr",
  "status" : "active",
  "subjectType" : ["Patient"],
  "date" : "2026-06-29T17:35:07+00:00",
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
  "description" : "Categorical variable for the frequency of alcohol consumption in the last year (IPS compatible).",
  "item" : [{
    "linkId" : "alcohol-frequency",
    "text" : "Wie oft haben Sie in den letzten 12 Monaten Alkohol getrunken?",
    "type" : "choice",
    "required" : true,
    "answerValueSet" : "https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/prenudge-alcoholuse-frequency",
    "item" : [{
      "linkId" : "comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  }]
}

```
