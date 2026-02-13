# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Alkoholkonsum-Frequenz (letztes Jahr) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Alkoholkonsum-Frequenz (letztes Jahr)**

## Questionnaire: Alkoholkonsum-Frequenz (letztes Jahr) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.at/prenudge/Questionnaire/alcohol-frequency | *Version*:0.1.0 | |
| Active as of 2026-02-13 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeQuestionnaireAlcoholUse |

 
Categorical variable for the frequency of alcohol consumption in the last year (IPS-compatible). 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "AtPrenudgeQuestionnaireAlcoholUse",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire"
    ]
  },
  "url" : "http://hl7.at/prenudge/Questionnaire/alcohol-frequency",
  "version" : "0.1.0",
  "name" : "AtPrenudgeQuestionnaireAlcoholUse",
  "title" : "Alkoholkonsum-Frequenz (letztes Jahr)",
  "status" : "active",
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
  "description" : "Categorical variable for the frequency of alcohol consumption in the last year (IPS-compatible).",
  "item" : [
    {
      "linkId" : "alcohol-frequency",
      "text" : "Wie oft haben Sie in den letzten 12 Monaten Alkohol getrunken?",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/at-prenudge-alcoholuse-valueset-frequency"
    }
  ]
}

```
