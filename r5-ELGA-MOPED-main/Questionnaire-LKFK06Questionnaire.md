# ELGA.MOPED\LKF K06 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF K06 Questionnaire**

## Questionnaire: LKF K06 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFK06Questionnaire | *Version*:0.1.0 | |
| Active as of 2026-01-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
LKF K06 Questionnaire - KA-Statistik (Konsiliarärztlicher Dienst) 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFK06Questionnaire",
  "url" : "https://elga.moped.at/Questionnaire/LKFK06Questionnaire",
  "version" : "0.1.0",
  "title" : "LKF K06 Questionnaire",
  "status" : "active",
  "date" : "2026-01-07T10:11:40+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://elga.gv.at"
        }
      ]
    }
  ],
  "description" : "LKF K06 Questionnaire - KA-Statistik (Konsiliarärztlicher Dienst)",
  "item" : [
    {
      "linkId" : "satzartenkennzeichen",
      "text" : "Satzartenkennzeichen",
      "type" : "string",
      "readOnly" : true,
      "maxLength" : 3,
      "initial" : [
        {
          "valueString" : "K06"
        }
      ]
    },
    {
      "linkId" : "jahr",
      "text" : "Jahr",
      "type" : "integer",
      "repeats" : false,
      "maxLength" : 6
    },
    {
      "linkId" : "krankenanstaltennummer",
      "text" : "Krankenanstaltennummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "fachrichtungsindex",
      "text" : "Fachrichtungsindex",
      "type" : "coding",
      "answerOption" : [
        {
          "valueCoding" : {
            "code" : "00",
            "display" : "Allgemeinmedizin"
          }
        },
        {
          "valueCoding" : {
            "code" : "01",
            "display" : "Anästhesiologie und Intensivmedizin"
          }
        },
        {
          "valueCoding" : {
            "code" : "02",
            "display" : "Augenheilkunde und Optometrie"
          }
        }
      ]
    },
    {
      "linkId" : "konsiliarärztinnen-kopfzahl",
      "text" : "Konsiliarärzte/-ärztinnen – Kopfzahl",
      "type" : "integer",
      "maxLength" : 6
    }
  ]
}

```
