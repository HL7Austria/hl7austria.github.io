# ELGA.MOPED\LKF G01 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF G01 Questionnaire**

## Questionnaire: LKF G01 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFG01Questionnaire | *Version*:0.1.0 | |
| Active as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
G01 Questionnaire - Großgerätebasisdaten 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFG01Questionnaire",
  "url" : "https://elga.moped.at/Questionnaire/LKFG01Questionnaire",
  "version" : "0.1.0",
  "title" : "LKF G01 Questionnaire",
  "status" : "active",
  "date" : "2026-04-07T19:20:35+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "G01 Questionnaire - Großgerätebasisdaten",
  "item" : [{
    "linkId" : "satzartenkennzeichen",
    "text" : "Satzartenkennzeichen",
    "type" : "string",
    "readOnly" : true,
    "maxLength" : 3,
    "initial" : [{
      "valueString" : "G01"
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
    "linkId" : "funktionscode",
    "text" : "Funktionscode",
    "type" : "integer",
    "maxLength" : 8
  },
  {
    "linkId" : "grosgeraet_positionsnummer",
    "text" : "Großgerät – Positionsnummer",
    "type" : "string",
    "maxLength" : 4
  },
  {
    "linkId" : "grosgeraet_art",
    "text" : "Großgerät – Art (Geräteindex)",
    "type" : "coding",
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "C10",
        "display" : "Multi-Slice CT <= 16-zeilig"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "C06",
        "display" : "Multi-Slice CT = 64-zeilig"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "C08",
        "display" : "Multi-Slice CT >= 128-zeilig, Dual Source"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "C30",
        "display" : "Funktionsgerät (CT)"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "C49",
        "display" : "Sonstige CT-Geräte"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "M01",
        "display" : "Magnetresonanz-Tomographiegerät (geschlossen) – Feldstärke < 1 Tesla"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "M03",
        "display" : "Magnetresonanz-Tomographiegerät – Feldstärke <= 1,5 Tesla"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "M04",
        "display" : "Magnetresonanz-Tomographiegerät (offen) – Feldstärke < 1 Tesla"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "M05",
        "display" : "Magnetresonanz-Tomographiegerät (offen) – Feldstärke >= 1 Tesla"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "M07",
        "display" : "Magnetresonanz-Tomographiegerät – Feldstärke = 3 Tesla"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "M30",
        "display" : "Funktionsgerät (MR)"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "M49",
        "display" : "Sonstige MR-Geräte"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "H00",
        "display" : "Coronarangiographie – Herzkatheterarbeitsplatz"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "H30",
        "display" : "Funktionsgerät (COR in Hybrid-OP)"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "H49",
        "display" : "Sonstige Herzkatheterarbeitsplätze"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "S01",
        "display" : "Linearbeschleuniger"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "S02",
        "display" : "Linearbeschleuniger inkl. Stereotaxiezusatz"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "S03",
        "display" : "Linearbeschleuniger, geeignet für intraoperativen Einsatz"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "S30",
        "display" : "Funktionsgerät (STR)"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "S49",
        "display" : "Sonstige Hochvolttherapiegeräte"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E02",
        "display" : "Emissions-Computertomographie, SPECT-fähig"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E03",
        "display" : "SPECT-Kamera mit Koinzidenzmessung"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E49",
        "display" : "Sonstige ECT-Geräte"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "P02",
        "display" : "Positronenemissions-Tomographiegeräte – PET-Scanner"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "P03",
        "display" : "PET-CT"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "P49",
        "display" : "Sonstige PET-Geräte"
      }
    }]
  },
  {
    "linkId" : "grosgeraet_type",
    "text" : "Großgerät – Type",
    "type" : "string",
    "maxLength" : 100
  },
  {
    "linkId" : "hersteller",
    "text" : "Hersteller",
    "type" : "string",
    "maxLength" : 100
  },
  {
    "linkId" : "baujahr",
    "text" : "Baujahr",
    "type" : "integer",
    "maxLength" : 4
  },
  {
    "linkId" : "anschaffungskosten",
    "text" : "Anschaffungskosten",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "betriebszeiten",
    "text" : "Betriebszeiten",
    "type" : "string",
    "maxLength" : 200
  },
  {
    "linkId" : "kommentar",
    "text" : "Kommentar",
    "type" : "string",
    "maxLength" : 200
  }]
}

```
