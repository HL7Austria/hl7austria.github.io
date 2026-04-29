# ELGA.MOPED\LKF K07 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF K07 Questionnaire**

## Questionnaire: LKF K07 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFK07Questionnaire | *Version*:0.1.0 | |
| Active as of 2026-04-29 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
LKF K07 Questionnaire - KA-Statistik (Personal der nicht-ärztlichen Gesundheitsberufe) 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFK07Questionnaire",
  "url" : "https://elga.moped.at/Questionnaire/LKFK07Questionnaire",
  "version" : "0.1.0",
  "title" : "LKF K07 Questionnaire",
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
  "description" : "LKF K07 Questionnaire - KA-Statistik (Personal der nicht-ärztlichen Gesundheitsberufe)",
  "item" : [{
    "linkId" : "satzartenkennzeichen",
    "text" : "Satzartenkennzeichen",
    "type" : "string",
    "readOnly" : true,
    "maxLength" : 3,
    "initial" : [{
      "valueString" : "K07"
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
    "linkId" : "index-nicht-ärztliche-gesundheitsberufe",
    "text" : "Index nicht-ärztliche Gesundheitsberufe",
    "type" : "coding",
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "30",
        "display" : "Hebammen"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "41",
        "display" : "Allgemeine Gesundheits- und Krankenpflege"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "42",
        "display" : "Kinder- und Jugendlichenpflege"
      }
    }]
  },
  {
    "linkId" : "personal-männlich – kopfzahl",
    "text" : "Personal männlich – Kopfzahl",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "personal-weiblich-kopfzahl",
    "text" : "Personal weiblich – Kopfzahl",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "kopfzahl-eu-ausländer",
    "text" : "Darunter EU-Ausländer/innen insgesamt – Kopfzahl",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "kopfzahl-nicht-eu-ausländer",
    "text" : "Darunter Nicht-EU-Ausländer/innen insgesamt – Kopfzahl",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "personal-männlich-vollzeitäquivalente",
    "text" : "Personal männlich – Vollzeitäquivalente",
    "type" : "decimal",
    "maxLength" : 9
  },
  {
    "linkId" : "personal-weiblich-vollzeitäquivalente",
    "text" : "Personal weiblich – Vollzeitäquivalente",
    "type" : "decimal",
    "maxLength" : 9
  },
  {
    "linkId" : "vollzeitäquivalente-eu-ausländer",
    "text" : "Darunter EU-Ausländer/innen insgesamt – Vollzeitäquivalente",
    "type" : "decimal",
    "maxLength" : 9
  },
  {
    "linkId" : "vollzeitäquivalente-eu-nicht-ausländer",
    "text" : "Darunter Nicht-EU-Ausländer/innen insgesamt – Vollzeitäquivalente",
    "type" : "decimal",
    "maxLength" : 9
  }]
}

```
