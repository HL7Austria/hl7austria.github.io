# ELGA.MOPED\LKF L03 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF L03 Questionnaire**

## Questionnaire: LKF L03 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFL03Questionnaire | *Version*:0.1.0 | |
| Active as of 2026-03-24 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
LKF L03 Questionnaire - Exklusionen medizinischer Leistungen 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFL03Questionnaire",
  "url" : "https://elga.moped.at/Questionnaire/LKFL03Questionnaire",
  "version" : "0.1.0",
  "title" : "LKF L03 Questionnaire",
  "status" : "active",
  "date" : "2026-03-24T20:07:54+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "LKF L03 Questionnaire - Exklusionen medizinischer Leistungen",
  "item" : [{
    "linkId" : "satzartenkennzeichen",
    "text" : "Satzartenkennzeichen",
    "type" : "string",
    "readOnly" : true,
    "maxLength" : 3,
    "initial" : [{
      "valueString" : "L03"
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
