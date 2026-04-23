# ELGA.MOPED\LKF K14 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF K14 Questionnaire**

## Questionnaire: LKF K14 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFK14Questionnaire | *Version*:0.1.0 | |
| Active as of 2026-04-23 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
LKF K14 Questionnaire - Kalkulatorischer Anhang – Kalkulatorischer Anlagenspiegel 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFK14Questionnaire",
  "url" : "https://elga.moped.at/Questionnaire/LKFK14Questionnaire",
  "version" : "0.1.0",
  "title" : "LKF K14 Questionnaire",
  "status" : "active",
  "date" : "2026-04-23T07:59:48+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "LKF K14 Questionnaire - Kalkulatorischer Anhang – Kalkulatorischer Anlagenspiegel",
  "item" : [{
    "linkId" : "satzartenkennzeichen",
    "text" : "Satzartenkennzeichen",
    "type" : "string",
    "readOnly" : true,
    "maxLength" : 3,
    "initial" : [{
      "valueString" : "K14"
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
    "linkId" : "anlagenindex",
    "text" : "Anlagenindex",
    "type" : "coding",
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A",
        "display" : "Grundstücke (MLV-Nr. 91)"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "B",
        "display" : "Bauten (MLV-Nr. 92–99)"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "C",
        "display" : "Anlagen in Bau"
      }
    }]
  },
  {
    "linkId" : "anschaffungs-und-herstellungskosten",
    "text" : "Anschaffungs- und Herstellungskosten",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "zugänge",
    "text" : "Zugänge",
    "type" : "decimal",
    "maxLength" : 10
  },
  {
    "linkId" : "abgänge",
    "text" : "Abgänge",
    "type" : "decimal",
    "maxLength" : 10
  },
  {
    "linkId" : "umbuchungen",
    "text" : "Umbuchungen",
    "type" : "decimal",
    "maxLength" : 10
  },
  {
    "linkId" : "kumulierte-abschreibungen",
    "text" : "Kumulierte Abschreibungen",
    "type" : "decimal",
    "maxLength" : 10
  },
  {
    "linkId" : "buchwerte-ende-berichtsjahres",
    "text" : "Buchwerte am Ende des Berichtsjahres",
    "type" : "decimal",
    "maxLength" : 10
  },
  {
    "linkId" : "buchwerte-vorjahr",
    "text" : "Buchwerte Vorjahr",
    "type" : "decimal",
    "maxLength" : 10
  },
  {
    "linkId" : "abschreibungen-laufendes-berichtsjahr",
    "text" : "Abschreibungen laufendes Berichtsjahr",
    "type" : "decimal",
    "maxLength" : 10
  }]
}

```
