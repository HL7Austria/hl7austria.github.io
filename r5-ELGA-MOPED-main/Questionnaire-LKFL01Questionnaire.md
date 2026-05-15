# ELGA.MOPED\LKF L01 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF L01 Questionnaire**

## Questionnaire: LKF L01 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFL01Questionnaire | *Version*:0.1.0 | |
| Active as of 2026-05-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
LKF L01 Questionnaire - Spezielle Leistungsbereiche 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFL01Questionnaire",
  "url" : "https://elga.moped.at/Questionnaire/LKFL01Questionnaire",
  "version" : "0.1.0",
  "title" : "LKF L01 Questionnaire",
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
  "description" : "LKF L01 Questionnaire - Spezielle Leistungsbereiche",
  "item" : [{
    "linkId" : "satzartenkennzeichen",
    "text" : "Satzartenkennzeichen",
    "type" : "string",
    "readOnly" : true,
    "maxLength" : 3,
    "initial" : [{
      "valueString" : "L01"
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
    "linkId" : "hauptkostenstelle-funktionscode",
    "text" : "Hauptkostenstelle – Funktionscode",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "leistungsbereich",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "M",
        "display" : "Spezielle Leistungen"
      }
    }],
    "maxLength" : 8
  },
  {
    "linkId" : "leistungsbereich",
    "text" : "Leistungsbereich",
    "type" : "coding",
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "I",
        "display" : "Intensivüberwachungs-/behandlungseinheiten (Erwachsene/Kinder)"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "G",
        "display" : "Akutgeriatrie/Remobilisation"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "L",
        "display" : "Palliativmedizinische Einrichtungen"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "N",
        "display" : "Neurologische Akut-Nachbehandlung"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "J",
        "display" : "Kinder- und Jugendpsychiatrie"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "P",
        "display" : "Psychiatrie"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "S",
        "display" : "Stroke Unit"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A",
        "display" : "Alkohol- und Drogenentwöhnung"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "M",
        "display" : "Spezielle Leistungen"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "R",
        "display" : "Remobilisation/Nachsorge"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "O",
        "display" : "Psychosomatik"
      }
    }]
  },
  {
    "linkId" : "gruppe-stufe",
    "text" : "Gruppe/Stufe",
    "type" : "string",
    "maxLength" : 2
  },
  {
    "linkId" : "punkte",
    "text" : "Punkte",
    "type" : "integer",
    "maxLength" : 6
  }]
}

```
