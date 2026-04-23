# ELGA.MOPED\LKF K13 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF K13 Questionnaire**

## Questionnaire: LKF K13 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFK13Questionnaire | *Version*:0.1.0 | |
| Draft as of 2026-04-23 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
LKF K13 Questionnaire - Kalkulatorischer Anhang – Kostenminderungen 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFK13Questionnaire",
  "url" : "https://elga.moped.at/Questionnaire/LKFK13Questionnaire",
  "version" : "0.1.0",
  "title" : "LKF K13 Questionnaire",
  "status" : "draft",
  "date" : "2026-04-23T07:59:48+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "LKF K13 Questionnaire - Kalkulatorischer Anhang – Kostenminderungen",
  "item" : [{
    "linkId" : "satzartenkennzeichen",
    "text" : "Satzartenkennzeichen",
    "type" : "string",
    "readOnly" : true,
    "maxLength" : 3,
    "initial" : [{
      "valueString" : "K13"
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
    "linkId" : "index-kostenminderungsart",
    "text" : "Index Kostenminderungsart",
    "type" : "coding",
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A",
        "display" : "GSBG-Beihilfen"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "B",
        "display" : "Klinischer Mehraufwand"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "C",
        "display" : "Kostenersätze für Schulen und Akademien"
      }
    }]
  },
  {
    "linkId" : "kostenminderungen",
    "text" : "Kostenminderungen",
    "type" : "integer",
    "maxLength" : 10
  }]
}

```
