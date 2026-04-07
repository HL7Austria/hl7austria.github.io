# ELGA.MOPED\LKF K12 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF K12 Questionnaire**

## Questionnaire: LKF K12 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFK12Questionnaire | *Version*:0.1.0 | |
| Active as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
LKF K12 Questionnaire - Sammel-Kostennachweis Detailblätter 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFK12Questionnaire",
  "url" : "https://elga.moped.at/Questionnaire/LKFK12Questionnaire",
  "version" : "0.1.0",
  "title" : "LKF K12 Questionnaire",
  "status" : "active",
  "date" : "2026-04-07T10:38:55+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "LKF K12 Questionnaire - Sammel-Kostennachweis Detailblätter",
  "item" : [{
    "linkId" : "satzartenkennzeichen",
    "text" : "Satzartenkennzeichen",
    "type" : "string",
    "readOnly" : true,
    "maxLength" : 3,
    "initial" : [{
      "valueString" : "K12"
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
    "linkId" : "blattnummer",
    "text" : "Blattnummer",
    "type" : "coding",
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "01/11",
        "display" : "Personalkosten (Kostenartennummer 111–119)"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "01/12",
        "display" : "Personalkosten (Kostenartennummer 121–129)"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "01/13",
        "display" : "Personalkosten (Kostenartennummer 131–139)"
      }
    }]
  },
  {
    "linkId" : "mlv-nummer",
    "text" : "MLV-Nummer",
    "type" : "integer",
    "maxLength" : 3
  },
  {
    "linkId" : "aufwand-finanzbuchführung",
    "text" : "Aufwand gemäß Finanzbuchführung",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "neutraler-aufwand",
    "text" : "Neutraler Aufwand",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "kalkulatorische-kosten",
    "text" : "Kalkulatorische Kosten",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "kosten",
    "text" : "Kosten",
    "type" : "integer",
    "maxLength" : 10
  }]
}

```
