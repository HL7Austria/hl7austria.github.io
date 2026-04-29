# ELGA.MOPED\LKF K04 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF K04 Questionnaire**

## Questionnaire: LKF K04 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFK04Questionnaire | *Version*:0.1.0 | |
| Active as of 2026-04-29 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
K04 Questionnaire - KA-Statistik (Personal-Vollzeitäquivalente nach Funktionsgruppen und Dienstverhältnis) 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFK04Questionnaire",
  "url" : "https://elga.moped.at/Questionnaire/LKFK04Questionnaire",
  "version" : "0.1.0",
  "title" : "LKF K04 Questionnaire",
  "status" : "active",
  "date" : "2026-04-29T09:14:27+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "K04 Questionnaire - KA-Statistik (Personal-Vollzeitäquivalente nach Funktionsgruppen und Dienstverhältnis)",
  "item" : [{
    "linkId" : "satzartenkennzeichen",
    "text" : "Satzartenkennzeichen",
    "type" : "string",
    "readOnly" : true,
    "maxLength" : 3,
    "initial" : [{
      "valueString" : "K04"
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
    "linkId" : "personalgruppenindex",
    "text" : "Personalgruppenindex",
    "type" : "coding",
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "111",
        "display" : "Ärzte/Ärztinnen"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "112",
        "display" : "Apotheker:innen, Chemiker:innen, Physiker:innen u.ä."
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "113",
        "display" : "Hebammen (inkl. Schüler:innen)"
      }
    }]
  },
  {
    "linkId" : "personal-vollzeitäquivalente",
    "text" : "Personal – Vollzeitäquivalente",
    "type" : "decimal",
    "maxLength" : 9
  }]
}

```
