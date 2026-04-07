# ELGA.MOPED\LKF L02 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF L02 Questionnaire**

## Questionnaire: LKF L02 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFL02Questionnaire | *Version*:0.1.0 | |
| Active as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
LKF L02 Questionnaire - Abrechnungsrelevante Kostenträger 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFL02Questionnaire",
  "url" : "https://elga.moped.at/Questionnaire/LKFL02Questionnaire",
  "version" : "0.1.0",
  "title" : "LKF L02 Questionnaire",
  "status" : "active",
  "date" : "2026-04-07T19:20:35+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "LKF L02 Questionnaire - Abrechnungsrelevante Kostenträger",
  "item" : [{
    "linkId" : "satzartenkennzeichen",
    "text" : "Satzartenkennzeichen",
    "type" : "string",
    "readOnly" : true,
    "maxLength" : 3,
    "initial" : [{
      "valueString" : "L02"
    }]
  },
  {
    "linkId" : "jahr",
    "text" : "Jahr",
    "type" : "integer",
    "maxLength" : 4
  },
  {
    "linkId" : "krankenanstaltennummer",
    "text" : "Krankenanstaltennummer",
    "type" : "string",
    "maxLength" : 6
  },
  {
    "linkId" : "kostentraeger-code",
    "text" : "Kostenträger – Code",
    "type" : "string",
    "maxLength" : 2
  },
  {
    "linkId" : "lgf-relevanz",
    "text" : "LGF – Relevanz",
    "type" : "coding",
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "J",
        "display" : "Ja – LKF-relevant"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "N",
        "display" : "Nein – nicht LKF-relevant"
      }
    }]
  }]
}

```
