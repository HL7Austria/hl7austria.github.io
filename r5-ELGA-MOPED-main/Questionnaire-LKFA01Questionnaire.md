# ELGA.MOPED\LKF A01 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF A01 Questionnaire**

## Questionnaire: LKF A01 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFA01Questionnaire | *Version*:0.1.0 | |
| Active as of 2026-01-26 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
LKF A01 Questionnaire - Antiinfectiva-Abrufe 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFA01Questionnaire",
  "url" : "https://elga.moped.at/Questionnaire/LKFA01Questionnaire",
  "version" : "0.1.0",
  "title" : "LKF A01 Questionnaire",
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
  "description" : "LKF A01 Questionnaire - Antiinfectiva-Abrufe",
  "item" : [
    {
      "linkId" : "satzartenkennzeichen",
      "text" : "Satzartenkennzeichen",
      "type" : "string",
      "readOnly" : true,
      "maxLength" : 3,
      "initial" : [
        {
          "valueString" : "A01"
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
      "linkId" : "monat",
      "text" : "Monat",
      "type" : "integer",
      "maxLength" : 2
    },
    {
      "linkId" : "krankenanstaltennummer",
      "text" : "Krankenanstaltennummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "bettenfuehrend-funktionscode",
      "text" : "Bettenführende bzw. nicht-bettenführende Hauptkostenstelle – Funktionscode",
      "type" : "integer",
      "maxLength" : 8
    },
    {
      "linkId" : "bezugsland",
      "text" : "Bezugsland",
      "type" : "string",
      "maxLength" : 2
    },
    {
      "linkId" : "pharmazentralnummer",
      "text" : "Pharmazentralnummer",
      "type" : "string",
      "maxLength" : 10
    },
    {
      "linkId" : "handelsname",
      "text" : "Handelsname",
      "type" : "string",
      "maxLength" : 100
    },
    {
      "linkId" : "abgerufene-packungen",
      "text" : "Abgerufene Packungen",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "menge-pro-packungseinheit",
      "text" : "Menge je Packungseinheit",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "packungseinheit",
      "text" : "Packungseinheit",
      "type" : "string",
      "maxLength" : 10
    },
    {
      "linkId" : "atc-code",
      "text" : "ATC-Code",
      "type" : "string",
      "maxLength" : 10
    }
  ]
}

```
