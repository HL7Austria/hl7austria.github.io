# ELGA.MOPED\LKF B06 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF B06 Questionnaire**

## Questionnaire: LKF B06 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFB06Questionnaire | *Version*:0.1.0 | |
| Active as of 2026-01-26 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
B06 Questionnaire - Zuschussstruktur (ZS) 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFB06Questionnaire",
  "url" : "https://elga.moped.at/Questionnaire/LKFB06Questionnaire",
  "version" : "0.1.0",
  "title" : "LKF B06 Questionnaire",
  "status" : "active",
  "date" : "2026-01-26T07:23:42+00:00",
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
  "description" : "B06 Questionnaire - Zuschussstruktur (ZS)",
  "item" : [
    {
      "linkId" : "satzartenkennzeichen",
      "text" : "Satzartenkennzeichen",
      "type" : "string",
      "readOnly" : true,
      "maxLength" : 3,
      "initial" : [
        {
          "valueString" : "B06"
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
      "linkId" : "finanzierungstraegerindex",
      "text" : "FinanzierungsträgerIndex",
      "type" : "coding",
      "answerOption" : [
        {
          "valueCoding" : {
            "code" : "LF",
            "display" : "Landesgesundheitsfonds"
          }
        },
        {
          "valueCoding" : {
            "code" : "LD",
            "display" : "Land"
          }
        },
        {
          "valueCoding" : {
            "code" : "GM",
            "display" : "Gemeinde(n)"
          }
        },
        {
          "valueCoding" : {
            "code" : "RT",
            "display" : "Rechtsträger"
          }
        },
        {
          "valueCoding" : {
            "code" : "SO",
            "display" : "Sonstige"
          }
        }
      ]
    },
    {
      "linkId" : "zuschussartindex",
      "text" : "ZuschussartIndex",
      "type" : "coding",
      "answerOption" : [
        {
          "valueCoding" : {
            "code" : "Z01",
            "display" : "Zuschüsse zum Betriebsabgang"
          }
        },
        {
          "valueCoding" : {
            "code" : "Z02",
            "display" : "Sonstige Betriebszuschüsse"
          }
        },
        {
          "valueCoding" : {
            "code" : "Z03",
            "display" : "Betriebszuschüsse"
          }
        },
        {
          "valueCoding" : {
            "code" : "Z04",
            "display" : "Investitionszuschüsse"
          }
        },
        {
          "valueCoding" : {
            "code" : "Z05",
            "display" : "Zins- und Annuitätenzuschüsse"
          }
        }
      ]
    },
    {
      "linkId" : "zuschuss",
      "text" : "Zuschuss",
      "type" : "integer",
      "maxLength" : 10
    }
  ]
}

```
