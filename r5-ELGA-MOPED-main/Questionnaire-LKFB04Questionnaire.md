# ELGA.MOPED\LKF B04 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF B04 Questionnaire**

## Questionnaire: LKF B04 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFB04Questionnaire | *Version*:0.1.0 | |
| Active as of 2026-05-22 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
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
  "date" : "2026-05-22T08:08:56+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "B04 Questionnaire - Quellen- und Verwendungsanalyse (QVA)",
  "item" : [{
    "linkId" : "satzartenkennzeichen",
    "text" : "Satzartenkennzeichen",
    "type" : "string",
    "readOnly" : true,
    "maxLength" : 3,
    "initial" : [{
      "valueString" : "B04"
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
    "linkId" : "qva-kategorie",
    "text" : "Kategorie des QVAIndex",
    "type" : "coding",
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E",
        "display" : "Einnahmen"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A",
        "display" : "Ausgaben"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "S",
        "display" : "Saldo"
      }
    }]
  },
  {
    "linkId" : "qva-index-einnahmen",
    "text" : "QVAIndex – Einnahmen",
    "type" : "coding",
    "enableWhen" : [{
      "question" : "qva-kategorie",
      "operator" : "=",
      "answerCoding" : {
        "code" : "E"
      }
    }],
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E01",
        "display" : "Umsatzerlöse (Gesamt)"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E02",
        "display" : "Umsatzerlöse (stationär)"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E03",
        "display" : "Umsatzerlöse (ambulant)"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E04",
        "display" : "Umsatzerlöse (sonstige)"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E05",
        "display" : "Ersatz klinischer Mehraufwand (laufender Betrieb)"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E06",
        "display" : "Sonstige betriebliche Erlöse"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E07",
        "display" : "Betriebliche Einnahmen vor Umlage Verwaltungskosten"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E08",
        "display" : "Erlöse aus Umlage Verwaltungskosten"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E09",
        "display" : "Betriebliche Einnahmen"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E10",
        "display" : "Vorläufiges Ergebnis"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E11",
        "display" : "Zuschüsse zum Betriebsabgang"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E12",
        "display" : "Sonstige Betriebszuschüsse"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E13",
        "display" : "GSBG-Beihilfe"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E14",
        "display" : "Weiterleitung von Zuschüssen"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E15",
        "display" : "Laufende Einnahmen aus Zuschüssen"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E16",
        "display" : "Summe laufende Einnahmen"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E17",
        "display" : "Laufendes Ergebnis"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E18",
        "display" : "Erlöse aus Desinvestitionen"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E19",
        "display" : "Investitionszuschüsse"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E20",
        "display" : "Ersatz klinischer Mehraufwand (Investitionsmittel)"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E21",
        "display" : "Weiterleitung von Zuschüssen"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E22",
        "display" : "Einnahmen aus Investitionstätigkeit"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E23",
        "display" : "Summe Einnahmen vor Finanzierung"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E24",
        "display" : "Ergebnis vor Finanzierung"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E25",
        "display" : "Aufnahme verzinsliches Fremdkapital"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E26",
        "display" : "Aufnahme Mezzaninkapital"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E27",
        "display" : "Zinsen und ähnliche Erträge"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E28",
        "display" : "Zins- und Annuitätenzuschüsse"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E29",
        "display" : "Einzahlungen Gesellschafter"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E30",
        "display" : "Einnahmen Finanzierungstätigkeit"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "E31",
        "display" : "Summe aller Einnahmen"
      }
    }]
  },
  {
    "linkId" : "qva-index-ausgaben",
    "text" : "QVAIndex – Ausgaben",
    "type" : "coding",
    "enableWhen" : [{
      "question" : "qva-kategorie",
      "operator" : "=",
      "answerCoding" : {
        "code" : "A"
      }
    }],
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A01",
        "display" : "Materialaufwand und Aufwendungen für bezogene Leistungen"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A02",
        "display" : "Personalaufwand"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A03",
        "display" : "FLAF-Zuschüsse"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A04",
        "display" : "Geringwertige Vermögensgegenstände/GWG"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A05",
        "display" : "Miete unbewegliche Vermögensgegenstände"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A06",
        "display" : "Sonstige betriebliche Aufwendungen"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A07",
        "display" : "Veränderung Bestände fertige/unfertige Erzeugnisse"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A08",
        "display" : "Andere aktivierte Eigenleistungen"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A09",
        "display" : "Betriebliche Ausgaben vor Umlage Verwaltungskosten"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A10",
        "display" : "Aufwendungen aus Umlage Verwaltungskosten"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A11",
        "display" : "Betriebliche Ausgaben"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A12",
        "display" : "Nicht abzugsfähige Vorsteuer"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A13",
        "display" : "Übrige Steuern"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A14",
        "display" : "Summe übrige Ausgaben"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A15",
        "display" : "Summe laufende Ausgaben"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A16",
        "display" : "Investitionen immaterielle Vermögensgegenstände"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A17",
        "display" : "Investitionen Sachanlagen"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A18",
        "display" : "Investitionen Finanzanlagen"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A19",
        "display" : "Summe Ausgaben für Investitionen"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A20",
        "display" : "Summe Ausgaben vor Finanzierung"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A21",
        "display" : "Tilgung verzinsliches Fremdkapital"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A22",
        "display" : "Tilgung Mezzaninkapital"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A23",
        "display" : "Zinsen und ähnliche Aufwendungen"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A24",
        "display" : "Rückzahlungen Gesellschafter"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A25",
        "display" : "Ausgaben Finanzierungstätigkeit"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "A26",
        "display" : "Summe aller Ausgaben"
      }
    }]
  },
  {
    "linkId" : "qva-index-saldo",
    "text" : "QVAIndex – Saldo",
    "type" : "coding",
    "enableWhen" : [{
      "question" : "qva-kategorie",
      "operator" : "=",
      "answerCoding" : {
        "code" : "S"
      }
    }],
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "S01",
        "display" : "Saldo Einnahmen/Ausgaben"
      }
    }]
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
  }]
}

```
