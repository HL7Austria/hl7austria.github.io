# ELGA.MOPED\LKF B01 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF B01 Questionnaire**

## Questionnaire: LKF B01 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFB01Questionnaire | *Version*:0.1.0 | |
| Active as of 2026-01-26 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
B01 Questionnaire - Basisinformation 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFB01Questionnaire",
  "url" : "https://elga.moped.at/Questionnaire/LKFB01Questionnaire",
  "version" : "0.1.0",
  "title" : "LKF B01 Questionnaire",
  "status" : "active",
  "date" : "2026-01-26T07:03:23+00:00",
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
  "description" : "B01 Questionnaire - Basisinformation",
  "item" : [
    {
      "linkId" : "satzartenkennzeichen",
      "text" : "Satzartenkennzeichen",
      "type" : "string",
      "readOnly" : true,
      "maxLength" : 3,
      "initial" : [
        {
          "valueString" : "B01"
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
      "linkId" : "krankenanstalten-traegernummer",
      "text" : "Krankenanstalten-/Trägernummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "berichtstyp",
      "text" : "Berichtstyp",
      "type" : "coding",
      "answerOption" : [
        {
          "valueCoding" : {
            "code" : "K",
            "display" : "KA-Ebene – Gesamtdarstellung/-bericht"
          }
        },
        {
          "valueCoding" : {
            "code" : "G",
            "display" : "Trägerebene – krankenanstaltenübergreifender (gemeinsamer) Bereich"
          }
        },
        {
          "valueCoding" : {
            "code" : "A",
            "display" : "Trägerebene – krankenanstaltenfremder Bereich"
          }
        },
        {
          "valueCoding" : {
            "code" : "T",
            "display" : "Trägerebene – Gesamtdarstellung/-bericht (KA-übergeordnete Institution)"
          }
        }
      ]
    },
    {
      "linkId" : "berechnungstyp",
      "text" : "Berechnungstyp",
      "type" : "coding",
      "answerOption" : [
        {
          "valueCoding" : {
            "code" : "E",
            "display" : "Eigenständig"
          }
        },
        {
          "valueCoding" : {
            "code" : "K",
            "display" : "Konsolidiert"
          }
        },
        {
          "valueCoding" : {
            "code" : "S",
            "display" : "Summiert"
          }
        }
      ]
    },
    {
      "linkId" : "zuordnungsart",
      "text" : "Zuordnungsart",
      "type" : "coding",
      "answerOption" : [
        {
          "valueCoding" : {
            "code" : "D",
            "display" : "Direkt"
          }
        },
        {
          "valueCoding" : {
            "code" : "G",
            "display" : "Geschlüsselt"
          }
        }
      ]
    }
  ]
}

```
