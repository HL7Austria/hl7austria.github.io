# ELGA.MOPED\LKF G02 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF G02 Questionnaire**

## Questionnaire: LKF G02 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFG02Questionnaire | *Version*:0.1.0 | |
| Active as of 2026-03-24 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
G02 Questionnaire - Großgeräteleistungsdaten 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFG02Questionnaire",
  "url" : "https://elga.moped.at/Questionnaire/LKFG02Questionnaire",
  "version" : "0.1.0",
  "title" : "LKF G02 Questionnaire",
  "status" : "active",
  "date" : "2026-03-24T19:35:33+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "G02 Questionnaire - Großgeräteleistungsdaten",
  "item" : [{
    "linkId" : "satzartenkennzeichen",
    "text" : "Satzartenkennzeichen",
    "type" : "string",
    "readOnly" : true,
    "maxLength" : 3,
    "initial" : [{
      "valueString" : "G02"
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
    "linkId" : "grosgeraet-positionsnummer",
    "text" : "Großgerät – Positionsnummer",
    "type" : "string",
    "maxLength" : 4
  },
  {
    "linkId" : "grosgeraet-leistungsindex",
    "text" : "Großgerät – Leistungsindex",
    "type" : "coding",
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "C50",
        "display" : "Computertomographie (CT) – Alle Leistungen"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "M50",
        "display" : "Magnetresonanz-Tomographie (MR) – Alle Leistungen"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "H51",
        "display" : "Coronarangiographie (COR)"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "H52",
        "display" : "Coronarangiographie - PTCA ein Gefäß"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "H53",
        "display" : "Coronarangiographie - PTCA mehr als ein Gefäß"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "H54",
        "display" : "Coronarangiographie - Stentimplantation"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "H55",
        "display" : "Coronarangiographie - Ablation"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "H56",
        "display" : "Coronarangiographie - Elektrophysiologie"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "H99",
        "display" : "Coronarangiographie - Sonstige Eingriffe bei strukturellen Herzerkrankungen"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "S54",
        "display" : "Strahlentherapie - Bestrahlungstermine für strahlentherapeutische Leistungen"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "S55",
        "display" : "Strahlentherapie - Bestrahlungstermine für radiochirurgische Leistungen"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "S56",
        "display" : "Strahlentherapie - Bestrahlungstermine für intensitätsmodulierte Strahlentherapie (IMRT)"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E51",
        "display" : "Emissions-Computertomographie (ECT) – Untersuchungen mit planarer Technik"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E52",
        "display" : "Emissions-Computertomographie (ECT) – Untersuchungen mit Schichttechnik"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "P51",
        "display" : "Positronenemissions-Tomographie (PET) – Untersuchungen mit 18-FDG"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "P99",
        "display" : "Positronenemissions-Tomographie (PET) – Untersuchungen mit sonstigen Tracern"
      }
    }]
  },
  {
    "linkId" : "ambulante-frequenzen",
    "text" : "Ambulante Frequenzen",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "stationaere-frequenzen",
    "text" : "Stationäre Frequenzen",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "durchschnittliche-dauer-je-frequenz",
    "text" : "Durchschnittliche Dauer je Frequenz in Minuten",
    "type" : "integer",
    "maxLength" : 4
  }]
}

```
