# ELGA.MOPED\LKF B04 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF B04 Questionnaire**

## Questionnaire: LKF B04 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFB04Questionnaire | *Version*:0.1.0 | |
| Active as of 2026-01-26 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
B04 Questionnaire - Quellen- und Verwendungsanalyse (QVA) 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFB04Questionnaire",
  "url" : "https://elga.moped.at/Questionnaire/LKFB04Questionnaire",
  "version" : "0.1.0",
  "title" : "LKF B04 Questionnaire",
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
  "description" : "B04 Questionnaire - Quellen- und Verwendungsanalyse (QVA)",
  "item" : [
    {
      "linkId" : "satzartenkennzeichen",
      "text" : "Satzartenkennzeichen",
      "type" : "string",
      "readOnly" : true,
      "maxLength" : 3,
      "initial" : [
        {
          "valueString" : "B04"
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
      "linkId" : "qva-kategorie",
      "text" : "Kategorie des QVAIndex",
      "type" : "coding",
      "answerOption" : [
        {
          "valueCoding" : {
            "code" : "E",
            "display" : "Einnahmen"
          }
        },
        {
          "valueCoding" : {
            "code" : "A",
            "display" : "Ausgaben"
          }
        },
        {
          "valueCoding" : {
            "code" : "S",
            "display" : "Saldo"
          }
        }
      ]
    },
    {
      "linkId" : "qva-index-einnahmen",
      "text" : "QVAIndex – Einnahmen",
      "type" : "coding",
      "enableWhen" : [
        {
          "question" : "qva-kategorie",
          "operator" : "=",
          "answerCoding" : {
            "code" : "E"
          }
        }
      ],
      "answerOption" : [
        {
          "valueCoding" : {
            "code" : "E01",
            "display" : "Umsatzerlöse (Gesamt)"
          }
        },
        {
          "valueCoding" : {
            "code" : "E02",
            "display" : "Umsatzerlöse (stationär)"
          }
        },
        {
          "valueCoding" : {
            "code" : "E03",
            "display" : "Umsatzerlöse (ambulant)"
          }
        },
        {
          "valueCoding" : {
            "code" : "E04",
            "display" : "Umsatzerlöse (sonstige)"
          }
        },
        {
          "valueCoding" : {
            "code" : "E05",
            "display" : "Ersatz klinischer Mehraufwand (laufender Betrieb)"
          }
        },
        {
          "valueCoding" : {
            "code" : "E06",
            "display" : "Sonstige betriebliche Erlöse"
          }
        },
        {
          "valueCoding" : {
            "code" : "E07",
            "display" : "Betriebliche Einnahmen vor Umlage Verwaltungskosten"
          }
        },
        {
          "valueCoding" : {
            "code" : "E08",
            "display" : "Erlöse aus Umlage Verwaltungskosten"
          }
        },
        {
          "valueCoding" : {
            "code" : "E09",
            "display" : "Betriebliche Einnahmen"
          }
        },
        {
          "valueCoding" : {
            "code" : "E10",
            "display" : "Vorläufiges Ergebnis"
          }
        },
        {
          "valueCoding" : {
            "code" : "E11",
            "display" : "Zuschüsse zum Betriebsabgang"
          }
        },
        {
          "valueCoding" : {
            "code" : "E12",
            "display" : "Sonstige Betriebszuschüsse"
          }
        },
        {
          "valueCoding" : {
            "code" : "E13",
            "display" : "GSBG-Beihilfe"
          }
        },
        {
          "valueCoding" : {
            "code" : "E14",
            "display" : "Weiterleitung von Zuschüssen"
          }
        },
        {
          "valueCoding" : {
            "code" : "E15",
            "display" : "Laufende Einnahmen aus Zuschüssen"
          }
        },
        {
          "valueCoding" : {
            "code" : "E16",
            "display" : "Summe laufende Einnahmen"
          }
        },
        {
          "valueCoding" : {
            "code" : "E17",
            "display" : "Laufendes Ergebnis"
          }
        },
        {
          "valueCoding" : {
            "code" : "E18",
            "display" : "Erlöse aus Desinvestitionen"
          }
        },
        {
          "valueCoding" : {
            "code" : "E19",
            "display" : "Investitionszuschüsse"
          }
        },
        {
          "valueCoding" : {
            "code" : "E20",
            "display" : "Ersatz klinischer Mehraufwand (Investitionsmittel)"
          }
        },
        {
          "valueCoding" : {
            "code" : "E21",
            "display" : "Weiterleitung von Zuschüssen"
          }
        },
        {
          "valueCoding" : {
            "code" : "E22",
            "display" : "Einnahmen aus Investitionstätigkeit"
          }
        },
        {
          "valueCoding" : {
            "code" : "E23",
            "display" : "Summe Einnahmen vor Finanzierung"
          }
        },
        {
          "valueCoding" : {
            "code" : "E24",
            "display" : "Ergebnis vor Finanzierung"
          }
        },
        {
          "valueCoding" : {
            "code" : "E25",
            "display" : "Aufnahme verzinsliches Fremdkapital"
          }
        },
        {
          "valueCoding" : {
            "code" : "E26",
            "display" : "Aufnahme Mezzaninkapital"
          }
        },
        {
          "valueCoding" : {
            "code" : "E27",
            "display" : "Zinsen und ähnliche Erträge"
          }
        },
        {
          "valueCoding" : {
            "code" : "E28",
            "display" : "Zins- und Annuitätenzuschüsse"
          }
        },
        {
          "valueCoding" : {
            "code" : "E29",
            "display" : "Einzahlungen Gesellschafter"
          }
        },
        {
          "valueCoding" : {
            "code" : "E30",
            "display" : "Einnahmen Finanzierungstätigkeit"
          }
        },
        {
          "valueCoding" : {
            "code" : "E31",
            "display" : "Summe aller Einnahmen"
          }
        }
      ]
    },
    {
      "linkId" : "qva-index-ausgaben",
      "text" : "QVAIndex – Ausgaben",
      "type" : "coding",
      "enableWhen" : [
        {
          "question" : "qva-kategorie",
          "operator" : "=",
          "answerCoding" : {
            "code" : "A"
          }
        }
      ],
      "answerOption" : [
        {
          "valueCoding" : {
            "code" : "A01",
            "display" : "Materialaufwand und Aufwendungen für bezogene Leistungen"
          }
        },
        {
          "valueCoding" : {
            "code" : "A02",
            "display" : "Personalaufwand"
          }
        },
        {
          "valueCoding" : {
            "code" : "A03",
            "display" : "FLAF-Zuschüsse"
          }
        },
        {
          "valueCoding" : {
            "code" : "A04",
            "display" : "Geringwertige Vermögensgegenstände/GWG"
          }
        },
        {
          "valueCoding" : {
            "code" : "A05",
            "display" : "Miete unbewegliche Vermögensgegenstände"
          }
        },
        {
          "valueCoding" : {
            "code" : "A06",
            "display" : "Sonstige betriebliche Aufwendungen"
          }
        },
        {
          "valueCoding" : {
            "code" : "A07",
            "display" : "Veränderung Bestände fertige/unfertige Erzeugnisse"
          }
        },
        {
          "valueCoding" : {
            "code" : "A08",
            "display" : "Andere aktivierte Eigenleistungen"
          }
        },
        {
          "valueCoding" : {
            "code" : "A09",
            "display" : "Betriebliche Ausgaben vor Umlage Verwaltungskosten"
          }
        },
        {
          "valueCoding" : {
            "code" : "A10",
            "display" : "Aufwendungen aus Umlage Verwaltungskosten"
          }
        },
        {
          "valueCoding" : {
            "code" : "A11",
            "display" : "Betriebliche Ausgaben"
          }
        },
        {
          "valueCoding" : {
            "code" : "A12",
            "display" : "Nicht abzugsfähige Vorsteuer"
          }
        },
        {
          "valueCoding" : {
            "code" : "A13",
            "display" : "Übrige Steuern"
          }
        },
        {
          "valueCoding" : {
            "code" : "A14",
            "display" : "Summe übrige Ausgaben"
          }
        },
        {
          "valueCoding" : {
            "code" : "A15",
            "display" : "Summe laufende Ausgaben"
          }
        },
        {
          "valueCoding" : {
            "code" : "A16",
            "display" : "Investitionen immaterielle Vermögensgegenstände"
          }
        },
        {
          "valueCoding" : {
            "code" : "A17",
            "display" : "Investitionen Sachanlagen"
          }
        },
        {
          "valueCoding" : {
            "code" : "A18",
            "display" : "Investitionen Finanzanlagen"
          }
        },
        {
          "valueCoding" : {
            "code" : "A19",
            "display" : "Summe Ausgaben für Investitionen"
          }
        },
        {
          "valueCoding" : {
            "code" : "A20",
            "display" : "Summe Ausgaben vor Finanzierung"
          }
        },
        {
          "valueCoding" : {
            "code" : "A21",
            "display" : "Tilgung verzinsliches Fremdkapital"
          }
        },
        {
          "valueCoding" : {
            "code" : "A22",
            "display" : "Tilgung Mezzaninkapital"
          }
        },
        {
          "valueCoding" : {
            "code" : "A23",
            "display" : "Zinsen und ähnliche Aufwendungen"
          }
        },
        {
          "valueCoding" : {
            "code" : "A24",
            "display" : "Rückzahlungen Gesellschafter"
          }
        },
        {
          "valueCoding" : {
            "code" : "A25",
            "display" : "Ausgaben Finanzierungstätigkeit"
          }
        },
        {
          "valueCoding" : {
            "code" : "A26",
            "display" : "Summe aller Ausgaben"
          }
        }
      ]
    },
    {
      "linkId" : "qva-index-saldo",
      "text" : "QVAIndex – Saldo",
      "type" : "coding",
      "enableWhen" : [
        {
          "question" : "qva-kategorie",
          "operator" : "=",
          "answerCoding" : {
            "code" : "S"
          }
        }
      ],
      "answerOption" : [
        {
          "valueCoding" : {
            "code" : "S01",
            "display" : "Saldo Einnahmen/Ausgaben"
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
