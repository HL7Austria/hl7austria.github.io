# ELGA.MOPED\LKF K01 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF K01 Questionnaire**

## Questionnaire: LKF K01 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFK01Questionnaire | *Version*:0.1.0 | |
| Active as of 2026-01-26 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
K01 Questionnaire - den Kostenstellenplan 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFK01Questionnaire",
  "url" : "https://elga.moped.at/Questionnaire/LKFK01Questionnaire",
  "version" : "0.1.0",
  "title" : "LKF K01 Questionnaire",
  "status" : "active",
  "date" : "2026-01-26T07:12:25+00:00",
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
  "description" : "K01 Questionnaire - den Kostenstellenplan",
  "item" : [
    {
      "linkId" : "satzartenkennzeichen",
      "text" : "Satzartenkennzeichen",
      "type" : "string",
      "readOnly" : true,
      "maxLength" : 3,
      "initial" : [
        {
          "valueString" : "K01"
        }
      ]
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
      "linkId" : "funktionscode",
      "text" : "Funktionscode",
      "type" : "integer",
      "maxLength" : 8
    },
    {
      "linkId" : "interne-kostenstellennummer",
      "text" : "Interne Kostenstellennummer",
      "type" : "string",
      "maxLength" : 8
    },
    {
      "linkId" : "interne-kostenstellenbezeichnung",
      "text" : "Interne Kostenstellenbezeichnung",
      "type" : "string",
      "maxLength" : 50
    },
    {
      "linkId" : "spezielle-organisationsform",
      "text" : "Spezielle Organisationsform",
      "type" : "coding",
      "answerOption" : [
        {
          "valueCoding" : {
            "code" : "A",
            "display" : "Abteilung"
          }
        },
        {
          "valueCoding" : {
            "code" : "R",
            "display" : "Referenzzentrum – ohne Versorgungsstufengliederung"
          }
        },
        {
          "valueCoding" : {
            "code" : "Z",
            "display" : "Referenzzentrum – höchste Versorgungsstufe"
          }
        }
      ]
    }
  ]
}

```
