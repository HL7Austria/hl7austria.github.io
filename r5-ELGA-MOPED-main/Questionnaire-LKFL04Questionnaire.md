# ELGA.MOPED\LKF L04 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF L04 Questionnaire**

## Questionnaire: LKF L04 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFL04Questionnaire | *Version*:0.1.0 | |
| Active as of 2026-05-22 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
LKF L04 Questionnaire - Exklusionen tagesklinischer medizinischer Leistungen 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFL04Questionnaire",
  "url" : "https://elga.moped.at/Questionnaire/LKFL04Questionnaire",
  "version" : "0.1.0",
  "title" : "LKF L04 Questionnaire",
  "status" : "active",
  "date" : "2026-05-22T08:08:56+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "LKF L04 Questionnaire - Exklusionen tagesklinischer medizinischer Leistungen",
  "item" : [{
    "linkId" : "satzartenkennzeichen",
    "text" : "Satzartenkennzeichen",
    "type" : "string",
    "readOnly" : true,
    "maxLength" : 3,
    "initial" : [{
      "valueString" : "L04"
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
    "linkId" : "medizinische-leistung-code",
    "text" : "Medizinische Leistung – Code",
    "type" : "string",
    "maxLength" : 10
  }]
}

```
