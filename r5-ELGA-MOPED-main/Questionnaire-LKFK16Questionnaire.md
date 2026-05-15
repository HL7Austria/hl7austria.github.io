# ELGA.MOPED\LKF K16 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF K16 Questionnaire**

## Questionnaire: LKF K16 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFK16Questionnaire | *Version*:0.1.0 | |
| Active as of 2026-05-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
LKF K16 Questionnaire - Kalkulatorischer Anhang – Ausgewählte Kosten 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFK16Questionnaire",
  "url" : "https://elga.moped.at/Questionnaire/LKFK16Questionnaire",
  "version" : "0.1.0",
  "title" : "LKF K16 Questionnaire",
  "status" : "active",
  "date" : "2026-05-15T09:26:31+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "LKF K16 Questionnaire - Kalkulatorischer Anhang – Ausgewählte Kosten",
  "item" : [{
    "linkId" : "satzartenkennzeichen",
    "text" : "Satzartenkennzeichen",
    "type" : "string",
    "readOnly" : true,
    "maxLength" : 3,
    "initial" : [{
      "valueString" : "K16"
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
    "linkId" : "kostenindex",
    "text" : "Kostenindex",
    "type" : "coding",
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "10",
        "display" : "Blut"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "20",
        "display" : "Chirurgisches Nahtmaterial"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "30",
        "display" : "Implantate und Prothesen (Summe)"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "31",
        "display" : "Implantate und Prothesen für Gefäß- und Herzchirurgie"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "32",
        "display" : "Implantate und Prothesen für Knochenchirurgie"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "33",
        "display" : "Implantate und Prothesen für Neurochirurgie"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "34",
        "display" : "Körperersatzteile, andere"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "35",
        "display" : "Implantate für HNO"
      }
    }]
  },
  {
    "linkId" : "kosten",
    "text" : "Kosten",
    "type" : "decimal",
    "maxLength" : 10
  }]
}

```
