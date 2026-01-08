# ELGA.MOPED\LKF B03 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF B03 Questionnaire**

## Questionnaire: LKF B03 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFB03Questionnaire | *Version*:0.1.0 | |
| Active as of 2026-01-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
B03 Questionnaire - Eigenmittelverteilungsrechnung (EVR) 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFB03Questionnaire",
  "url" : "https://elga.moped.at/Questionnaire/LKFB03Questionnaire",
  "version" : "0.1.0",
  "title" : "LKF B03 Questionnaire",
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
  "description" : "B03 Questionnaire - Eigenmittelverteilungsrechnung (EVR)",
  "item" : [
    {
      "linkId" : "satzartenkennzeichen",
      "text" : "Satzartenkennzeichen",
      "type" : "string",
      "readOnly" : true,
      "maxLength" : 3,
      "initial" : [
        {
          "valueString" : "B03"
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
      "linkId" : "evr-index",
      "text" : "EVRIndex",
      "type" : "coding",
      "answerOption" : [
        {
          "valueCoding" : {
            "code" : "R01",
            "display" : "Eigenmittel i.w.S. + Mezzaninkapital"
          }
        },
        {
          "valueCoding" : {
            "code" : "R02",
            "display" : "Mezzaninkapital"
          }
        },
        {
          "valueCoding" : {
            "code" : "R03",
            "display" : "Eigenmittel i.w.S."
          }
        },
        {
          "valueCoding" : {
            "code" : "R04",
            "display" : "Investitionszuschüsse zum Anlagevermögen, verbraucht"
          }
        },
        {
          "valueCoding" : {
            "code" : "R05",
            "display" : "Investitionszuschüsse zum Anlagevermögen, nicht verbraucht"
          }
        },
        {
          "valueCoding" : {
            "code" : "R06",
            "display" : "Eigenmittel gem. §23 URG"
          }
        },
        {
          "valueCoding" : {
            "code" : "R07",
            "display" : "Unversteuerte Rücklagen"
          }
        },
        {
          "valueCoding" : {
            "code" : "R08",
            "display" : "Eigenkapital"
          }
        },
        {
          "valueCoding" : {
            "code" : "R09",
            "display" : "Kapitalrücklagen"
          }
        },
        {
          "valueCoding" : {
            "code" : "R10",
            "display" : "Gewinnrücklagen"
          }
        },
        {
          "valueCoding" : {
            "code" : "R11",
            "display" : "Bilanzgewinn/Bilanzverlust"
          }
        },
        {
          "valueCoding" : {
            "code" : "R12",
            "display" : "Nenn-Kapital (Grund-, Stammkapital)"
          }
        }
      ]
    },
    {
      "linkId" : "wert-berichtsjahr",
      "text" : "Wert Berichtsjahr",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "wert-vorjahr",
      "text" : "Wert Vorjahr",
      "type" : "integer",
      "maxLength" : 10
    }
  ]
}

```
