# ELGA.MOPED\LKF B06 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF B06 Questionnaire**

## Questionnaire: LKF B06 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFB06Questionnaire | *Version*:0.1.0 | |
| Active as of 2026-03-29 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
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
  "date" : "2026-03-29T16:14:43+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "B06 Questionnaire - Zuschussstruktur (ZS)",
  "item" : [{
    "linkId" : "satzartenkennzeichen",
    "text" : "Satzartenkennzeichen",
    "type" : "string",
    "readOnly" : true,
    "maxLength" : 3,
    "initial" : [{
      "valueString" : "B06"
    }]
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
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "K",
        "display" : "KA-Ebene – Gesamtdarstellung/-bericht"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "G",
        "display" : "Trägerebene – krankenanstaltenübergreifender (gemeinsamer) Bereich"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A",
        "display" : "Trägerebene – krankenanstaltenfremder Bereich"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "T",
        "display" : "Trägerebene – Gesamtdarstellung/-bericht (KA-übergeordnete Institution)"
      }
    }]
  },
  {
    "linkId" : "finanzierungstraegerindex",
    "text" : "FinanzierungsträgerIndex",
    "type" : "coding",
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "LF",
        "display" : "Landesgesundheitsfonds"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "LD",
        "display" : "Land"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "GM",
        "display" : "Gemeinde(n)"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "RT",
        "display" : "Rechtsträger"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "SO",
        "display" : "Sonstige"
      }
    }]
  },
  {
    "linkId" : "zuschussartindex",
    "text" : "ZuschussartIndex",
    "type" : "coding",
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "Z01",
        "display" : "Zuschüsse zum Betriebsabgang"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "Z02",
        "display" : "Sonstige Betriebszuschüsse"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "Z03",
        "display" : "Betriebszuschüsse"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "Z04",
        "display" : "Investitionszuschüsse"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "Z05",
        "display" : "Zins- und Annuitätenzuschüsse"
      }
    }]
  },
  {
    "linkId" : "zuschuss",
    "text" : "Zuschuss",
    "type" : "integer",
    "maxLength" : 10
  }]
}

```
