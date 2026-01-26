# ELGA.MOPED\LKF B05 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF B05 Questionnaire**

## Questionnaire: LKF B05 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFB05Questionnaire | *Version*:0.1.0 | |
| Active as of 2026-01-26 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
B05 Questionnaire - Erlösstruktur (ES) 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFB05Questionnaire",
  "url" : "https://elga.moped.at/Questionnaire/LKFB05Questionnaire",
  "version" : "0.1.0",
  "title" : "LKF B05 Questionnaire",
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
  "description" : "B05 Questionnaire - Erlösstruktur (ES)",
  "item" : [
    {
      "linkId" : "satzartenkennzeichen",
      "text" : "Satzartenkennzeichen",
      "type" : "string",
      "readOnly" : true,
      "maxLength" : 3,
      "initial" : [
        {
          "valueString" : "B05"
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
      "linkId" : "erloesindex",
      "text" : "ErlösIndex",
      "type" : "coding",
      "answerOption" : [
        {
          "valueCoding" : {
            "code" : "U01",
            "display" : "LKF-Gebührenersätze"
          }
        },
        {
          "valueCoding" : {
            "code" : "U02",
            "display" : "LKF-Gebühren"
          }
        },
        {
          "valueCoding" : {
            "code" : "U03",
            "display" : "Pflegegebührenersätze"
          }
        },
        {
          "valueCoding" : {
            "code" : "U04",
            "display" : "Amtliche Pflegegebühren"
          }
        },
        {
          "valueCoding" : {
            "code" : "U05",
            "display" : "Anstaltsgebühren inkl. Anteile an Arzthonoraren"
          }
        },
        {
          "valueCoding" : {
            "code" : "U06",
            "display" : "Kostenbeiträge (§ 27a KAKuG)"
          }
        },
        {
          "valueCoding" : {
            "code" : "U07",
            "display" : "Sonstige Erlöse akutstationärer Bereich (Pauschalabgeltungen)"
          }
        },
        {
          "valueCoding" : {
            "code" : "U08",
            "display" : "Stationäre Erlöse Gesamt"
          }
        },
        {
          "valueCoding" : {
            "code" : "U20",
            "display" : "LKF-Gebührenersätze (leistungsbezogen/ambulant)"
          }
        },
        {
          "valueCoding" : {
            "code" : "U21",
            "display" : "LKF-Gebührenersätze (Pauschalabgeltungen/ambulant)"
          }
        },
        {
          "valueCoding" : {
            "code" : "U09",
            "display" : "Leistungsbezogene Vergütung"
          }
        },
        {
          "valueCoding" : {
            "code" : "U10",
            "display" : "Zeitraumbezogene Vergütung (Pauschalabgeltungen)"
          }
        },
        {
          "valueCoding" : {
            "code" : "U11",
            "display" : "Sonstige Erlöse ambulanter Bereich"
          }
        },
        {
          "valueCoding" : {
            "code" : "U12",
            "display" : "Ambulante Erlöse Gesamt"
          }
        },
        {
          "valueCoding" : {
            "code" : "U13",
            "display" : "Erlöse aus sonstigen Patientenversorgungsleistungen"
          }
        },
        {
          "valueCoding" : {
            "code" : "U14",
            "display" : "Begleitpersonen (§ 27a KAKuG)"
          }
        },
        {
          "valueCoding" : {
            "code" : "U15",
            "display" : "Erlöse aus dem Pflege-/Rehabilitations-/Heilstättenbereich"
          }
        },
        {
          "valueCoding" : {
            "code" : "U16",
            "display" : "Sonstige Umsatzerlöse Gesamt"
          }
        },
        {
          "valueCoding" : {
            "code" : "U22",
            "display" : "Vorhaltekostenabgeltung stationär und ambulant (Pauschalabgeltungen)"
          }
        },
        {
          "valueCoding" : {
            "code" : "U17",
            "display" : "Umsatzerlöse"
          }
        },
        {
          "valueCoding" : {
            "code" : "U18",
            "display" : "Ersatz für klinischen Mehraufwand (laufender Betrieb)"
          }
        },
        {
          "valueCoding" : {
            "code" : "U19",
            "display" : "Sonstige betriebliche Erträge"
          }
        }
      ]
    },
    {
      "linkId" : "wert-gesamt",
      "text" : "Wert Gesamt",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "wert-lgf",
      "text" : "Wert LGF",
      "type" : "integer",
      "maxLength" : 10
    }
  ]
}

```
