# ELGA.MOPED\LKF Jahresstatistikmeldung - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF Jahresstatistikmeldung**

## Questionnaire: LKF Jahresstatistikmeldung 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFJahresstatistikmeldung | *Version*:0.1.0 | |
| Active as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
LKF Jahresstatistikmeldung 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFJahresstatistikmeldung",
  "url" : "https://elga.moped.at/Questionnaire/LKFJahresstatistikmeldung",
  "version" : "0.1.0",
  "title" : "LKF Jahresstatistikmeldung",
  "status" : "active",
  "date" : "2026-06-09T11:53:00+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "LKF Jahresstatistikmeldung",
  "item" : [{
    "linkId" : "jahr",
    "text" : "Jahr",
    "type" : "integer",
    "maxLength" : 4
  },
  {
    "linkId" : "A01",
    "text" : "LKF A01 - Antiinfectiva-Abrufe",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "A01-monat",
      "text" : "Monat",
      "type" : "integer",
      "maxLength" : 2
    },
    {
      "linkId" : "A01-krankenanstaltennummer",
      "text" : "Krankenanstaltennummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "A01-bettenfuehrend-funktionscode",
      "text" : "Bettenführende bzw. nicht-bettenführende Hauptkostenstelle – Funktionscode",
      "type" : "integer",
      "maxLength" : 8
    },
    {
      "linkId" : "A01-bezugsland",
      "text" : "Bezugsland",
      "type" : "string",
      "maxLength" : 2
    },
    {
      "linkId" : "A01-pharmazentralnummer",
      "text" : "Pharmazentralnummer",
      "type" : "string",
      "maxLength" : 10
    },
    {
      "linkId" : "A01-handelsname",
      "text" : "Handelsname",
      "type" : "string",
      "maxLength" : 100
    },
    {
      "linkId" : "A01-abgerufene-packungen",
      "text" : "Abgerufene Packungen",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "A01-menge-pro-packungseinheit",
      "text" : "Menge je Packungseinheit",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "A01-packungseinheit",
      "text" : "Packungseinheit",
      "type" : "string",
      "maxLength" : 10
    },
    {
      "linkId" : "A01-atc-code",
      "text" : "ATC-Code",
      "type" : "string",
      "maxLength" : 10
    }]
  },
  {
    "linkId" : "B01",
    "text" : "LKF B01 - Basisinformation",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "B01-krankenanstalten-traegernummer",
      "text" : "Krankenanstalten-/Trägernummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "B01-berichtstyp",
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
      "linkId" : "B01-berechnungstyp",
      "text" : "Berechnungstyp",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "E",
          "display" : "Eigenständig"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "K",
          "display" : "Konsolidiert"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "S",
          "display" : "Summiert"
        }
      }]
    },
    {
      "linkId" : "B01-zuordnungsart",
      "text" : "Zuordnungsart",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "D",
          "display" : "Direkt"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "G",
          "display" : "Geschlüsselt"
        }
      }]
    }]
  },
  {
    "linkId" : "B02",
    "text" : "LKF B02 - Vermögens- und Kapitalstruktur (VKS)",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "B02-krankenanstalten-traegernummer",
      "text" : "Krankenanstalten-/Trägernummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "B02-berichtstyp",
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
      "linkId" : "B02-vks-kategorie",
      "text" : "Kategorie des VKSIndex",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "V",
          "display" : "Vermögen"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "K",
          "display" : "Kapital"
        }
      }]
    },
    {
      "linkId" : "B02-vks-index-vermoegen",
      "text" : "VKSIndex – Vermögensposten",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "V01",
          "display" : "Aufwendungen für das Ingangsetzen und Erweitern eines Betriebes"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "V02",
          "display" : "Immaterielle Vermögensgegenstände"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "V03",
          "display" : "Grundstücke, grundstücksgleiche Rechte"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "V04",
          "display" : "Bauten, einschließlich der Bauten auf fremdem Grund"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "V05",
          "display" : "Technische Anlagen und Maschinen"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "V06",
          "display" : "Andere Anlagen, Betriebs- und Geschäftsausstattung"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "V07",
          "display" : "Geleistete Anzahlungen und Anlagen in Bau"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "V08",
          "display" : "Finanzanlagen"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "V09",
          "display" : "Anlagevermögen )"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "V10",
          "display" : "Vorräte"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "V11",
          "display" : "Forderungen aus Lieferungen und Leistungen (Gesamt)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "V12",
          "display" : "Forderungen aus Lieferungen und Leistungen (davon Landesgesundheitsfonds)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "V13",
          "display" : "Sonstige Forderungen (Gesamt)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "V14",
          "display" : "Sonstige Forderungen (davon Bund)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "V15",
          "display" : "Sonstige Forderungen (davon Land)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "V16",
          "display" : "Sonstige Forderungen (davon Gemeinde)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "V17",
          "display" : "Sonstige Forderungen (davon Rechtsträger)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "V18",
          "display" : "Sonstige Forderungen (davon Landesträgergesundheitsfonds)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "V19",
          "display" : "Sonstige Vermögensgegenstände und aktive Rechnungsabgrenzungsposten"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "V20",
          "display" : "Liquide Mittel i.w.S."
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "V21",
          "display" : "Umlaufvermögen"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "V22",
          "display" : "Gesamtvermögen"
        }
      }]
    },
    {
      "linkId" : "B02-vks-index-kapital",
      "text" : "VKSIndex – Kapitalposten",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "K01",
          "display" : "Rückstellungen kurzfristige"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "K02",
          "display" : "Verbindlichkeiten gegenüber Kreditinstituten kurzfristige"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "K03",
          "display" : "Verbindlichkeiten aus Lieferungen und Leistungen und sonstige kurzfristige Verbindlichkeiten und passive Rechnungsabgrenzungsposten"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "K04",
          "display" : "Kurzfristiges Fremdkapital"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "K05",
          "display" : "Abfertigungs-, Jubiläums- und Pensionsrückstellungen"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "K06",
          "display" : "Sonstige Rückstellungen langfristige"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "K07",
          "display" : "Anleihen"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "K08",
          "display" : "Verbindlichkeiten gegenüber Kreditinstituten langfristige"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "K09",
          "display" : "Sonstige Verbindlichkeiten langfristige (Gesamt)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "K10",
          "display" : "Sonstige Verbindlichkeiten langfristige (davon Bund)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "K11",
          "display" : "Sonstige Verbindlichkeiten langfristige (davon Land)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "K12",
          "display" : "Sonstige Verbindlichkeiten langfristige (davon Gemeinde)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "K13",
          "display" : "Sonstige Verbindlichkeiten langfristige (davon Rechtsträger)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "K14",
          "display" : "Langfristiges Fremdkapital"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "K15",
          "display" : "Fremdkapital"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "K16",
          "display" : "Eigenkapital i.w.S. + Mezzaninkapital"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "K17",
          "display" : "Gesamtkapital"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "K18",
          "display" : "Eventualverbindlichkeiten"
        }
      }]
    },
    {
      "linkId" : "B02-wert-berichtsjahr",
      "text" : "Wert Berichtsjahr",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "B02-wert-vorjahr",
      "text" : "Wert Vorjahr",
      "type" : "integer",
      "maxLength" : 10
    }]
  },
  {
    "linkId" : "B03",
    "text" : "LKF B03 - Eigenmittelverteilungsrechnung (EVR)",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "B03-krankenanstalten-traegernummer",
      "text" : "Krankenanstalten-/Trägernummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "B03-berichtstyp",
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
      "linkId" : "B03-evr-index",
      "text" : "EVRIndex",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "R01",
          "display" : "Eigenmittel i.w.S. + Mezzaninkapital"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "R02",
          "display" : "Mezzaninkapital"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "R03",
          "display" : "Eigenmittel i.w.S."
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "R04",
          "display" : "Investitionszuschüsse zum Anlagevermögen, verbraucht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "R05",
          "display" : "Investitionszuschüsse zum Anlagevermögen, nicht verbraucht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "R06",
          "display" : "Eigenmittel gem. §23 URG"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "R07",
          "display" : "Unversteuerte Rücklagen"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "R08",
          "display" : "Eigenkapital"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "R09",
          "display" : "Kapitalrücklagen"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "R10",
          "display" : "Gewinnrücklagen"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "R11",
          "display" : "Bilanzgewinn/Bilanzverlust"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "R12",
          "display" : "Nenn-Kapital (Grund-, Stammkapital)"
        }
      }]
    },
    {
      "linkId" : "B03-wert-berichtsjahr",
      "text" : "Wert Berichtsjahr",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "B03-wert-vorjahr",
      "text" : "Wert Vorjahr",
      "type" : "integer",
      "maxLength" : 10
    }]
  },
  {
    "linkId" : "B04",
    "text" : "LKF B04 - Quellen- und Verwendungsanalyse (QVA)",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "B04-krankenanstalten-traegernummer",
      "text" : "Krankenanstalten-/Trägernummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "B04-berichtstyp",
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
      "linkId" : "B04-qva-kategorie",
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
      "linkId" : "B04-qva-index-einnahmen",
      "text" : "QVAIndex – Einnahmen",
      "type" : "coding",
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
      "linkId" : "B04-qva-index-ausgaben",
      "text" : "QVAIndex – Ausgaben",
      "type" : "coding",
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
      "linkId" : "B04-qva-index-saldo",
      "text" : "QVAIndex – Saldo",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "S01",
          "display" : "Saldo Einnahmen/Ausgaben"
        }
      }]
    },
    {
      "linkId" : "B04-wert-berichtsjahr",
      "text" : "Wert Berichtsjahr",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "B04-wert-vorjahr",
      "text" : "Wert Vorjahr",
      "type" : "integer",
      "maxLength" : 10
    }]
  },
  {
    "linkId" : "B05",
    "text" : "LKF B05 - Erlösstruktur (ES)",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "B05-krankenanstalten-traegernummer",
      "text" : "Krankenanstalten-/Trägernummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "B05-berichtstyp",
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
      "linkId" : "B05-erloesindex",
      "text" : "ErlösIndex",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "U01",
          "display" : "LKF-Gebührenersätze"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "U02",
          "display" : "LKF-Gebühren"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "U03",
          "display" : "Pflegegebührenersätze"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "U04",
          "display" : "Amtliche Pflegegebühren"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "U05",
          "display" : "Anstaltsgebühren inkl. Anteile an Arzthonoraren"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "U06",
          "display" : "Kostenbeiträge (§ 27a KAKuG)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "U07",
          "display" : "Sonstige Erlöse akutstationärer Bereich (Pauschalabgeltungen)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "U08",
          "display" : "Stationäre Erlöse Gesamt"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "U20",
          "display" : "LKF-Gebührenersätze (leistungsbezogen/ambulant)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "U21",
          "display" : "LKF-Gebührenersätze (Pauschalabgeltungen/ambulant)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "U09",
          "display" : "Leistungsbezogene Vergütung"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "U10",
          "display" : "Zeitraumbezogene Vergütung (Pauschalabgeltungen)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "U11",
          "display" : "Sonstige Erlöse ambulanter Bereich"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "U12",
          "display" : "Ambulante Erlöse Gesamt"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "U13",
          "display" : "Erlöse aus sonstigen Patientenversorgungsleistungen"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "U14",
          "display" : "Begleitpersonen (§ 27a KAKuG)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "U15",
          "display" : "Erlöse aus dem Pflege-/Rehabilitations-/Heilstättenbereich"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "U16",
          "display" : "Sonstige Umsatzerlöse Gesamt"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "U22",
          "display" : "Vorhaltekostenabgeltung stationär und ambulant (Pauschalabgeltungen)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "U17",
          "display" : "Umsatzerlöse"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "U18",
          "display" : "Ersatz für klinischen Mehraufwand (laufender Betrieb)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "U19",
          "display" : "Sonstige betriebliche Erträge"
        }
      }]
    },
    {
      "linkId" : "B05-wert-gesamt",
      "text" : "Wert Gesamt",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "B05-wert-lgf",
      "text" : "Wert LGF",
      "type" : "integer",
      "maxLength" : 10
    }]
  },
  {
    "linkId" : "B06",
    "text" : "LKF B06 - Zuschussstruktur (ZS)",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "B06-krankenanstalten-traegernummer",
      "text" : "Krankenanstalten-/Trägernummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "B06-berichtstyp",
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
      "linkId" : "B06-finanzierungstraegerindex",
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
      "linkId" : "B06-zuschussartindex",
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
      "linkId" : "B06-zuschuss",
      "text" : "Zuschuss",
      "type" : "integer",
      "maxLength" : 10
    }]
  },
  {
    "linkId" : "G01",
    "text" : "LKF G01 - Großgerätebasisdaten",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "G01-krankenanstaltennummer",
      "text" : "Krankenanstaltennummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "G01-funktionscode",
      "text" : "Funktionscode",
      "type" : "integer",
      "maxLength" : 8
    },
    {
      "linkId" : "G01-grosgeraet_positionsnummer",
      "text" : "Großgerät – Positionsnummer",
      "type" : "string",
      "maxLength" : 4
    },
    {
      "linkId" : "G01-grosgeraet_art",
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
      "linkId" : "G01-grosgeraet_type",
      "text" : "Großgerät – Type",
      "type" : "string",
      "maxLength" : 100
    },
    {
      "linkId" : "G01-hersteller",
      "text" : "Hersteller",
      "type" : "string",
      "maxLength" : 100
    },
    {
      "linkId" : "G01-baujahr",
      "text" : "Baujahr",
      "type" : "integer",
      "maxLength" : 4
    },
    {
      "linkId" : "G01-anschaffungskosten",
      "text" : "Anschaffungskosten",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "G01-betriebszeiten",
      "text" : "Betriebszeiten",
      "type" : "string",
      "maxLength" : 200
    },
    {
      "linkId" : "G01-kommentar",
      "text" : "Kommentar",
      "type" : "string",
      "maxLength" : 200
    }]
  },
  {
    "linkId" : "G02",
    "text" : "LKF G02 - Großgeräteleistungsdaten",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "G02-krankenanstaltennummer",
      "text" : "Krankenanstaltennummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "G02-grosgeraet-positionsnummer",
      "text" : "Großgerät – Positionsnummer",
      "type" : "string",
      "maxLength" : 4
    },
    {
      "linkId" : "G02-grosgeraet-leistungsindex",
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
      "linkId" : "G02-ambulante-frequenzen",
      "text" : "Ambulante Frequenzen",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "G02-stationaere-frequenzen",
      "text" : "Stationäre Frequenzen",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "G02-durchschnittliche-dauer-je-frequenz",
      "text" : "Durchschnittliche Dauer je Frequenz in Minuten",
      "type" : "integer",
      "maxLength" : 4
    }]
  },
  {
    "linkId" : "K02",
    "text" : "LKF K02 - KA-Stammdaten",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "K2-krankenanstaltennummer",
      "text" : "Krankenanstaltennummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "K2-krankenanstalt-bezeichnung",
      "text" : "Krankenanstalt – Bezeichnung",
      "type" : "string",
      "maxLength" : 150
    },
    {
      "linkId" : "K2-krankenanstalt-straße",
      "text" : "Krankenanstalt – Straße",
      "type" : "string",
      "maxLength" : 50
    },
    {
      "linkId" : "K2-krankenanstalt-postleitzahl",
      "text" : "Krankenanstalt – Postleitzahl",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "K2-krankenanstalt-ort",
      "text" : "Krankenanstalt – Ort",
      "type" : "string",
      "maxLength" : 50
    },
    {
      "linkId" : "K2-krankenanstalt-telefon",
      "text" : "Krankenanstalt – Telefon",
      "type" : "string",
      "maxLength" : 20
    },
    {
      "linkId" : "K2-krankenanstalt-fax",
      "text" : "Krankenanstalt – Fax",
      "type" : "string",
      "maxLength" : 20
    },
    {
      "linkId" : "K2-krankenanstalt-homepage",
      "text" : "Krankenanstalt – Homepage",
      "type" : "string",
      "maxLength" : 100
    },
    {
      "linkId" : "K2-rechtsträger-bezeichnung",
      "text" : "Rechtsträger – Bezeichnung",
      "type" : "string",
      "maxLength" : 150
    },
    {
      "linkId" : "K2-rechtsträger-straße",
      "text" : "Rechtsträger – Straße",
      "type" : "string",
      "maxLength" : 50
    },
    {
      "linkId" : "K2-rechtsträger-postleitzahl",
      "text" : "Rechtsträger – Postleitzahl",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "K2-rechtsträger-ort",
      "text" : "Rechtsträger – Ort",
      "type" : "string",
      "maxLength" : 50
    },
    {
      "linkId" : "K2-rechtsträger-telefon",
      "text" : "Rechtsträger – Telefon",
      "type" : "string",
      "maxLength" : 20
    },
    {
      "linkId" : "K2-rechtsträger-fax",
      "text" : "Rechtsträger – Fax",
      "type" : "string",
      "maxLength" : 20
    },
    {
      "linkId" : "K2-rechtsträger-homepage",
      "text" : "Rechtsträger – Homepage",
      "type" : "string",
      "maxLength" : 100
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/entryFormat",
        "valueString" : "NACHNAME/Vorname/Titel"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/regex",
        "valueString" : "^[A-ZÄÖÜ]+\\/[A-ZÄÖÜ][a-zäöüß]+\\/[A-Za-zÄÖÜäöüß\\.]+$"
      }],
      "linkId" : "K2-ärztliche-leitung",
      "text" : "Ärztliche Leitung",
      "type" : "string",
      "maxLength" : 100,
      "item" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/questionnaire-item-control",
              "code" : "help",
              "display" : "Help-Button"
            }],
            "text" : "Help-Button"
          }
        }],
        "linkId" : "K2-ärztliche-leitung_helpText",
        "text" : "Bitte geben Sie den Namen im Format NACHNAME/Vorname/Titel ein, z. B. MÜLLER/Anna/Dr.",
        "type" : "display"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/entryFormat",
        "valueString" : "NACHNAME/Vorname/Titel"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/regex",
        "valueString" : "^[A-ZÄÖÜ]+\\/[A-ZÄÖÜ][a-zäöüß]+\\/[A-Za-zÄÖÜäöüß\\.]+$"
      }],
      "linkId" : "K2-verwaltungsleitung",
      "text" : "Verwaltungsleitung",
      "type" : "string",
      "maxLength" : 100,
      "item" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/questionnaire-item-control",
              "code" : "help",
              "display" : "Help-Button"
            }],
            "text" : "Help-Button"
          }
        }],
        "linkId" : "K2-verwaltungsleitung_helpText",
        "text" : "Bitte geben Sie den Namen im Format NACHNAME/Vorname/Titel ein, z. B. MÜLLER/Anna/Dr.",
        "type" : "display"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/entryFormat",
        "valueString" : "NACHNAME/Vorname/Titel"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/regex",
        "valueString" : "^[A-ZÄÖÜ]+\\/[A-ZÄÖÜ][a-zäöüß]+\\/[A-Za-zÄÖÜäöüß\\.]+$"
      }],
      "linkId" : "K2-pflegedienstleitung",
      "text" : "Pflegedienstleitung",
      "type" : "string",
      "maxLength" : 100,
      "item" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/questionnaire-item-control",
              "code" : "help",
              "display" : "Help-Button"
            }],
            "text" : "Help-Button"
          }
        }],
        "linkId" : "K2-pflegedienstleitung_helpText",
        "text" : "Bitte geben Sie den Namen im Format NACHNAME/Vorname/Titel ein, z. B. MÜLLER/Anna/Dr.",
        "type" : "display"
      }]
    }]
  },
  {
    "linkId" : "K03",
    "text" : "LKF K03 - KA-Statistik (Ressourcen und Inanspruchnahme)",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "K3-krankenanstaltennummer",
      "text" : "Krankenanstaltennummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "K3-systemisierte-betten-insgesamt",
      "text" : "Systemisierte Betten insgesamt",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K3-systemisierte-betten-sonderklasse",
      "text" : "Systemisierte Betten – Sonderklasse",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K3-tatsachlich-aufgestellte-betten-insgesamt",
      "text" : "Tatsächlich aufgestellte Betten insgesamt",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K3-tatsachlich-aufgestellte-betten-sonderklasse",
      "text" : "Tatsächlich aufgestellte Betten – Sonderklasse",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K3-belagstage-sonderklasse",
      "text" : "Belagstage – Sonderklasse",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K3-aufnahmen-sonderklasse",
      "text" : "Aufnahmen – Sonderklasse",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K3-vom-vorjahr-verbliebene-sonderklasse",
      "text" : "Vom Vorjahr Verbliebene – Sonderklasse",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K3-entlassungen-sonderklasse",
      "text" : "Entlassungen – Sonderklasse",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K3-verstorbene-sonderklasse",
      "text" : "Verstorbene – Sonderklasse",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K3-aufnahmen-von-begleitpersonen",
      "text" : "Aufnahmen von Begleitpersonen",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K3-belagstage-von-begleitpersonen",
      "text" : "Belagstage von Begleitpersonen",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K3-ambulante-patienten-patientinnen",
      "text" : "Ambulante Patienten/Patientinnen",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K3-ambulante-betreuungsplatze",
      "text" : "Ambulante Betreuungsplätze",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K3-op-tische",
      "text" : "OP-Tische",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K3-entbindungsplatze",
      "text" : "Entbindungsplätze",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K3-postoperative-uberwachungsplatze",
      "text" : "Postoperative Überwachungsplätze",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K3-dialyseplatze",
      "text" : "Dialyseplätze",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K3-obduktionen-durch-anstaltspersonal",
      "text" : "Obduktionen durch Anstaltspersonal",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K3-obduktionen-durch-fremdpersonal",
      "text" : "Obduktionen durch Fremdpersonal",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K3-entbindungen-lebendgeborene",
      "text" : "Entbindungen – Lebendgeborene",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K3-entbindungen-totgeborene",
      "text" : "Entbindungen – Totgeborene",
      "type" : "integer",
      "maxLength" : 6
    }]
  },
  {
    "linkId" : "K04",
    "text" : "LKF K04 - KA-Statistik (Personal-Vollzeitäquivalente nach Funktionsgruppen und Dienstverhältnis)",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "K4-krankenanstaltennummer",
      "text" : "Krankenanstaltennummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "K4-personalgruppenindex",
      "text" : "Personalgruppenindex",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "111",
          "display" : "Ärzte/Ärztinnen"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "112",
          "display" : "Apotheker:innen, Chemiker:innen, Physiker:innen u.ä."
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "113",
          "display" : "Hebammen (inkl. Schüler:innen)"
        }
      }]
    },
    {
      "linkId" : "K4-personal-vollzeitäquivalente",
      "text" : "Personal – Vollzeitäquivalente",
      "type" : "decimal",
      "maxLength" : 9
    }]
  },
  {
    "linkId" : "K05",
    "text" : "LKF K05 - KA-Statistik (Personal-Vollzeitäquivalente nach Funktionsgruppen und Dienstverhältnis)",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "K5-krankenanstaltennummer",
      "text" : "Krankenanstaltennummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "K5-fachhauptbereichsindex",
      "text" : "Fachhauptbereichsindex",
      "type" : "string",
      "maxLength" : 2
    },
    {
      "linkId" : "K5-facharzte-kopfzahl",
      "text" : "Fachärzte/-ärztinnen – Kopfzahl",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K5-allgemeinmedizin-kopfzahl",
      "text" : "Ärzte/Ärztinnen für Allgemeinmedizin – Kopfzahl",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K5-facharzte-ausbildung-kopfzahl",
      "text" : "Fachärzte/-ärztinnen in Ausbildung – Kopfzahl",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K5-allgemeinmedizin-ausbildung-kopfzahl",
      "text" : "Ärzte/Ärztinnen für Allgemeinmedizin in Ausbildung – Kopfzahl",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K5-facharzte-vollzeitäquivalente",
      "text" : "Fachärzte/-ärztinnen – Vollzeitäquivalente",
      "type" : "decimal",
      "maxLength" : 9
    },
    {
      "linkId" : "K5-allgemeinmedizin-vollzeitäquivalente",
      "text" : "Ärzte/Ärztinnen für Allgemeinmedizin – Vollzeitäquivalente",
      "type" : "decimal",
      "maxLength" : 9
    },
    {
      "linkId" : "K5-facharzte-ausbildung-vollzeitäquivalente",
      "text" : "Fachärzte/-ärztinnen in Ausbildung – Vollzeitäquivalente",
      "type" : "decimal",
      "maxLength" : 9
    },
    {
      "linkId" : "K5-allgemeinmedizin-ausbildung-vollzeitäquivalente",
      "text" : "Ärzte/Ärztinnen für Allgemeinmedizin in Ausbildung – Vollzeitäquivalente",
      "type" : "decimal",
      "maxLength" : 9
    }]
  },
  {
    "linkId" : "K06",
    "text" : "LKF K06 - KA-Statistik (Konsiliarärztlicher Dienst)",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "K6-krankenanstaltennummer",
      "text" : "Krankenanstaltennummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "K6-fachrichtungsindex",
      "text" : "Fachrichtungsindex",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "00",
          "display" : "Allgemeinmedizin"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "01",
          "display" : "Anästhesiologie und Intensivmedizin"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "02",
          "display" : "Augenheilkunde und Optometrie"
        }
      }]
    },
    {
      "linkId" : "K6-konsiliarärztinnen-kopfzahl",
      "text" : "Konsiliarärzte/-ärztinnen – Kopfzahl",
      "type" : "integer",
      "maxLength" : 6
    }]
  },
  {
    "linkId" : "K07",
    "text" : "LKF K07 - KA-Statistik (Personal der nicht-ärztlichen Gesundheitsberufe)",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "K7-krankenanstaltennummer",
      "text" : "Krankenanstaltennummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "K7-index-nicht-ärztliche-gesundheitsberufe",
      "text" : "Index nicht-ärztliche Gesundheitsberufe",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "30",
          "display" : "Hebammen"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "41",
          "display" : "Allgemeine Gesundheits- und Krankenpflege"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "42",
          "display" : "Kinder- und Jugendlichenpflege"
        }
      }]
    },
    {
      "linkId" : "K7-personal-männlich – kopfzahl",
      "text" : "Personal männlich – Kopfzahl",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K7-personal-weiblich-kopfzahl",
      "text" : "Personal weiblich – Kopfzahl",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K7-kopfzahl-eu-ausländer",
      "text" : "Darunter EU-Ausländer/innen insgesamt – Kopfzahl",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K7-kopfzahl-nicht-eu-ausländer",
      "text" : "Darunter Nicht-EU-Ausländer/innen insgesamt – Kopfzahl",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K7-personal-männlich-vollzeitäquivalente",
      "text" : "Personal männlich – Vollzeitäquivalente",
      "type" : "decimal",
      "maxLength" : 9
    },
    {
      "linkId" : "K7-personal-weiblich-vollzeitäquivalente",
      "text" : "Personal weiblich – Vollzeitäquivalente",
      "type" : "decimal",
      "maxLength" : 9
    },
    {
      "linkId" : "K7-vollzeitäquivalente-eu-ausländer",
      "text" : "Darunter EU-Ausländer/innen insgesamt – Vollzeitäquivalente",
      "type" : "decimal",
      "maxLength" : 9
    },
    {
      "linkId" : "K7-vollzeitäquivalente-eu-nicht-ausländer",
      "text" : "Darunter Nicht-EU-Ausländer/innen insgesamt – Vollzeitäquivalente",
      "type" : "decimal",
      "maxLength" : 9
    }]
  },
  {
    "linkId" : "K08",
    "text" : "LKF K08 - Kostenstellen-Statistik und Kostennachweis (Bettenführende Hauptkostenstelle)",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "K8-krankenanstaltennummer",
      "text" : "Krankenanstaltennummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "K8-bettenführende-hauptkostenstelle-funktionscode",
      "text" : "Bettenführende Hauptkostenstelle – Funktionscode",
      "type" : "integer",
      "maxLength" : 8
    },
    {
      "linkId" : "K8-systemisierte-betten",
      "text" : "Systemisierte Betten",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K8-tatsächlich-aufgestellte-betten",
      "text" : "Tatsächlich aufgestellte Betten",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K8-nettogrundrissfläche",
      "text" : "Nettogrundrissfläche",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K8-ärzte-vollzeitäquivalente",
      "text" : "Ärzte/Ärztinnen – Vollzeitäquivalente (MLV 1-1)",
      "type" : "decimal",
      "maxLength" : 9
    },
    {
      "linkId" : "K8-apotheker-chemiker-physiker-vollzeitäquivalente",
      "text" : "Apotheker/innen, Chemiker/innen, Physiker/innen u.ä. – Vollzeitäquivalente (MLV 1-2)",
      "type" : "decimal",
      "maxLength" : 9
    },
    {
      "linkId" : "K8-hebammen-vollzeitäquivalente",
      "text" : "Hebammen – Vollzeitäquivalente (MLV 1-3)",
      "type" : "decimal",
      "maxLength" : 9
    },
    {
      "linkId" : "K8-weitere-gesundheitsberufe-vollzeitäquivalente",
      "text" : "Gehobener Dienst für Gesundheits- und Krankenpflege und weitere Gesundheitsberufe – Vollzeitäquivalente (MLV 1-4)",
      "type" : "decimal",
      "maxLength" : 9
    },
    {
      "linkId" : "K8-medizinisch-technische-dienste",
      "text" : "Gehobene medizinisch-technische Dienste, medizinisch-technischer Fachdienst und Masseure/ Masseurinnen – Vollzeitäquivalente (MLV 1-5)",
      "type" : "decimal",
      "maxLength" : 9
    },
    {
      "linkId" : "K8-sanitäter–vollzeitäquivalente",
      "text" : "Sanitäter, Pflegehilfe und MA – Vollzeitäquivalente (MLV 1-6)",
      "type" : "decimal",
      "maxLength" : 9
    },
    {
      "linkId" : "K8-verwaltungs-und-kanzleipersonal–vollzeitäquivalente",
      "text" : "Verwaltungs- und Kanzleipersonal – Vollzeitäquivalente (MLV 1-7)",
      "type" : "decimal",
      "maxLength" : 9
    },
    {
      "linkId" : "K8-betriebspersonal-vollzeitäquivalente",
      "text" : "Betriebspersonal – Vollzeitäquivalente (MLV 1-8)",
      "type" : "decimal",
      "maxLength" : 9
    },
    {
      "linkId" : "K8-sonstige-vollzeitäquivalente",
      "text" : "Sonstiges Personal – Vollzeitäquivalente (MLV 1-9)",
      "type" : "decimal",
      "maxLength" : 9
    },
    {
      "linkId" : "K8-personalkosten",
      "text" : "Personalkosten (KOAGR01)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K8-kosten-med-güter",
      "text" : "Kosten für medizinische Gebrauchs- und Verbrauchsgüter (KOAGR02)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K8-kosten-nicht-med-güter",
      "text" : "Kosten für nicht-medizinische Gebrauchs- und Verbrauchsgüter (KOAGR03)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K8-kosten-med-fremdleistungen",
      "text" : "Kosten für medizinische Fremdleistungen (KOAGR04)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K8-kosten-nicht-med-fremdleistungen",
      "text" : "Kosten für nicht-medizinische Fremdleistungen (KOAGR05)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K8-energiekosten",
      "text" : "Energiekosten (KOAGR06)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K8-sonstige-kosten",
      "text" : "Abgaben, Beiträge, Gebühren und sonstige Kosten (KOAGR07)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K8-kalkulatorische-anlagekapitalkosten",
      "text" : "Kalkulatorische Anlagekapitalkosten (KOAGR08)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K8-kosten-med-vor-und-entsorgung",
      "text" : "Kosten der vorwiegend medizinisch bedingten Ver- und Entsorgung (KOAGR11)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K8-kosten-nicht-med-vor-und-entsorgung",
      "text" : "Kosten der vorwiegend nicht-medizinisch bedingten Ver- und Entsorgung (KOAGR12)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K8-kosten-verwaltung",
      "text" : "Kosten der Verwaltung (KOAGR13)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K8-andere-sekundärkosten (KOAGR14)",
      "text" : "Andere Sekundärkosten (KOAGR14)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K8-kostenminderungen",
      "text" : "Kostenminderungen",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K8-summe-sum-innerbetrieblicher-leistungen",
      "text" : "Summe abgegebener innerbetrieblicher Leistungen",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K8-unter-überdeckung",
      "text" : "Unter- oder Überdeckung",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K8-endkosten-kostenstelle",
      "text" : "Endkosten der Kostenstelle",
      "type" : "integer",
      "maxLength" : 10
    }]
  },
  {
    "linkId" : "K09",
    "text" : "LKF K09 - Kostenstellen-Statistik und Kostennachweis (nicht-bettenführende Hauptkostenstelle)",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "K9-krankenanstaltennummer",
      "text" : "Krankenanstaltennummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "K9-nicht-bettenführende-hauptkostenstelle–funktionscode",
      "text" : "Nicht-bettenführende Hauptkostenstelle – Funktionscode",
      "type" : "integer",
      "maxLength" : 8
    },
    {
      "linkId" : "K9-ambulante-betreuungsplätze",
      "text" : "Ambulante Betreuungsplätze",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K9-ambulante-patient",
      "text" : "Ambulante Patienten/Patientinnen",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K9-frequenzen-ambulanten-patient",
      "text" : "Frequenzen an ambulanten Patienten/Patientinnen",
      "type" : "integer",
      "maxLength" : 8
    },
    {
      "linkId" : "K9-frequenzen-stationären-patienten-andere-krankenhäuser",
      "text" : "Frequenzen an stationären Patienten/Patientinnen anderer Krankenhäuser",
      "type" : "integer",
      "maxLength" : 8
    },
    {
      "linkId" : "K9-frequenzen-stationären-patienten",
      "text" : "Frequenzen an stationären Patienten/Patientinnen",
      "type" : "integer",
      "maxLength" : 8
    },
    {
      "linkId" : "K9-nettogrundrissfläche",
      "text" : "Nettogrundrissfläche",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K9-ärzte-vollzeitäquivalente",
      "text" : "Ärzte/Ärztinnen – Vollzeitäquivalente (MLV 1-1)",
      "type" : "decimal",
      "maxLength" : 9
    },
    {
      "linkId" : "K9-apotheker-chemiker-physiker-vollzeitäquivalente",
      "text" : "Apotheker/innen, Chemiker/innen, Physiker/innen u.ä. – Vollzeitäquivalente (MLV 1-2)",
      "type" : "decimal",
      "maxLength" : 9
    },
    {
      "linkId" : "K9-hebammen-vollzeitäquivalente",
      "text" : "Hebammen – Vollzeitäquivalente (MLV 1-3)",
      "type" : "decimal",
      "maxLength" : 9
    },
    {
      "linkId" : "K9-weitere-gesundheitsberufe-vollzeitäquivalente",
      "text" : "Gehobener Dienst für Gesundheits- und Krankenpflege und weitere Gesundheitsberufe – Vollzeitäquivalente (MLV 1-4)",
      "type" : "decimal",
      "maxLength" : 9
    },
    {
      "linkId" : "K9-medizinisch-technische-dienste",
      "text" : "Gehobene medizinisch-technische Dienste, medizinisch-technischer Fachdienst und Masseure/ Masseurinnen – Vollzeitäquivalente (MLV 1-5)",
      "type" : "decimal",
      "maxLength" : 9
    },
    {
      "linkId" : "K9-sanitäter–vollzeitäquivalente",
      "text" : "Sanitäter, Pflegehilfe und MA – Vollzeitäquivalente (MLV 1-6)",
      "type" : "decimal",
      "maxLength" : 9
    },
    {
      "linkId" : "K9-verwaltungs-und-kanzleipersonal–vollzeitäquivalente",
      "text" : "Verwaltungs- und Kanzleipersonal – Vollzeitäquivalente (MLV 1-7)",
      "type" : "decimal",
      "maxLength" : 9
    },
    {
      "linkId" : "K9-betriebspersonal-vollzeitäquivalente",
      "text" : "Betriebspersonal – Vollzeitäquivalente (MLV 1-8)",
      "type" : "decimal",
      "maxLength" : 9
    },
    {
      "linkId" : "K9-sonstige-vollzeitäquivalente",
      "text" : "Sonstiges Personal – Vollzeitäquivalente (MLV 1-9)",
      "type" : "decimal",
      "maxLength" : 9
    },
    {
      "linkId" : "K9-personalkosten",
      "text" : "Personalkosten (KOAGR01)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K9-kosten-med-güter",
      "text" : "Kosten für medizinische Gebrauchs- und Verbrauchsgüter (KOAGR02)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K9-kosten-nicht-med-güter",
      "text" : "Kosten für nicht-medizinische Gebrauchs- und Verbrauchsgüter (KOAGR03)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K9-kosten-med-fremdleistungen",
      "text" : "Kosten für medizinische Fremdleistungen (KOAGR04)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K9-kosten-nicht-med-fremdleistungen",
      "text" : "Kosten für nicht-medizinische Fremdleistungen (KOAGR05)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K9-energiekosten",
      "text" : "Energiekosten (KOAGR06)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K9-sonstige-kosten",
      "text" : "Abgaben, Beiträge, Gebühren und sonstige Kosten (KOAGR07)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K9-kalkulatorische-anlagekapitalkosten",
      "text" : "Kalkulatorische Anlagekapitalkosten (KOAGR08)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K9-kosten-med-vor-und-entsorgung",
      "text" : "Kosten der vorwiegend medizinisch bedingten Ver- und Entsorgung (KOAGR11)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K9-kosten-nicht-med-vor-und-entsorgung",
      "text" : "Kosten der vorwiegend nicht-medizinisch bedingten Ver- und Entsorgung (KOAGR12)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K9-kosten-verwaltung",
      "text" : "Kosten der Verwaltung (KOAGR13)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K9-andere-sekundärkosten (KOAGR14)",
      "text" : "Andere Sekundärkosten (KOAGR14)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K9-kostenminderungen",
      "text" : "Kostenminderungen",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K9-summe-sum-innerbetrieblicher-leistungen",
      "text" : "Summe abgegebener innerbetrieblicher Leistungen",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K9-unter-überdeckung",
      "text" : "Unter- oder Überdeckung",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K9-endkosten-kostenstelle",
      "text" : "Endkosten der Kostenstelle",
      "type" : "integer",
      "maxLength" : 10
    }]
  },
  {
    "linkId" : "K10",
    "text" : "LKF K10 - Kostenstellen-Statistik und Kostennachweis (Neben- und Hilfskostenstellen)",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "K10-krankenanstaltennummer",
      "text" : "Krankenanstaltennummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "K10-neben-hilfskostenstelle-funktionscode",
      "text" : "Neben-/Hilfskostenstelle – Funktionscode",
      "type" : "integer",
      "maxLength" : 8
    },
    {
      "linkId" : "K10-nettogrundrissfläche",
      "text" : "Nettogrundrissfläche",
      "type" : "integer",
      "maxLength" : 6
    },
    {
      "linkId" : "K10-personal-insgesamt",
      "text" : "Personal insgesamt-Vollzeitäquivalente",
      "type" : "decimal",
      "maxLength" : 9
    },
    {
      "linkId" : "K10-personalkosten",
      "text" : "Personalkosten (KOAGR01)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K10-kosten-med-güter",
      "text" : "Kosten für medizinische Gebrauchs- und Verbrauchsgüter (KOAGR02)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K10-kosten-nicht-med-güter",
      "text" : "Kosten für nicht-medizinische Gebrauchs- und Verbrauchsgüter (KOAGR03)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K10-kosten-med-fremdleistungen",
      "text" : "Kosten für medizinische Fremdleistungen (KOAGR04)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K10-kosten-nicht-med-fremdleistungen",
      "text" : "Kosten für nicht-medizinische Fremdleistungen (KOAGR05)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K10-energiekosten",
      "text" : "Energiekosten (KOAGR06)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K10-sonstige-kosten",
      "text" : "Abgaben, Beiträge, Gebühren und sonstige Kosten (KOAGR07)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K10-kalkulatorische-anlagekapitalkosten",
      "text" : "Kalkulatorische Anlagekapitalkosten (KOAGR08)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K10-kosten-med-vor-und-entsorgung",
      "text" : "Kosten der vorwiegend medizinisch bedingten Ver- und Entsorgung (KOAGR11)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K10-kosten-nicht-med-vor-und-entsorgung",
      "text" : "Kosten der vorwiegend nicht-medizinisch bedingten Ver- und Entsorgung (KOAGR12)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K10-kosten-verwaltung",
      "text" : "Kosten der Verwaltung (KOAGR13)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K10-andere-sekundärkosten (KOAGR14)",
      "text" : "Andere Sekundärkosten (KOAGR14)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K10-kostenminderungen",
      "text" : "Kostenminderungen",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K10-summe-sum-innerbetrieblicher-leistungen",
      "text" : "Summe abgegebener innerbetrieblicher Leistungen",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K10-unter-überdeckung",
      "text" : "Unter- oder Überdeckung",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K10-endkosten-kostenstelle",
      "text" : "Endkosten der Kostenstelle",
      "type" : "integer",
      "maxLength" : 10
    }]
  },
  {
    "linkId" : "K11",
    "text" : "LKF K11 - Sammel-Kostennachweis Summenblatt",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "K11-krankenanstaltennummer",
      "text" : "Krankenanstaltennummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "K11-personalkosten",
      "text" : "Personalkosten (KOAGR01)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K11-kosten-med-güter",
      "text" : "Kosten für medizinische Gebrauchs- und Verbrauchsgüter (KOAGR02)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K11-kosten-nicht-med-güter",
      "text" : "Kosten für nicht-medizinische Gebrauchs- und Verbrauchsgüter (KOAGR03)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K11-kosten-med-fremdleistungen",
      "text" : "Kosten für medizinische Fremdleistungen (KOAGR04)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K11-kosten-nicht-med-fremdleistungen",
      "text" : "Kosten für nicht-medizinische Fremdleistungen (KOAGR05)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K11-energiekosten",
      "text" : "Energiekosten (KOAGR06)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K11-sonstige-kosten",
      "text" : "Abgaben, Beiträge, Gebühren und sonstige Kosten (KOAGR07)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K11-kalkulatorische-anlagekapitalkosten",
      "text" : "Kalkulatorische Anlagekapitalkosten (KOAGR08)",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K11-summe_primärkosten",
      "text" : "Summe Primärkosten",
      "type" : "decimal",
      "maxLength" : 10
    },
    {
      "linkId" : "K11-kostenminderungen",
      "text" : "Kostenminderungen",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K11-endkosten-krankenanstalt",
      "text" : "Endkosten der Krankenanstalt",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K11-sum-kalkulatorische-abschreibung",
      "text" : "Summe der kalkulatorischen Abschreibungen",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K11-abschreibungen-rest-0",
      "text" : "Davon kalkulatorische Abschreibungen für Anlagegüter mit Restwert 0",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K11-Abschreibungen-ausgeschiedener-tillgelegter-anlagen",
      "text" : "Davon kalkulatorische Abschreibungen von Restwerten ausgeschiedener oder stillgelegter Anlagen",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K11-sum-kalkulatorischen-zinsen",
      "text" : "Summe der kalkulatorischen Zinsen",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K11-sum-kalkulatorischen-miete",
      "text" : "Summe der kalkulatorischen Mieten",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K11-endkosten-stationäre-patientenversorgung",
      "text" : "Endkosten der stationären Patientenversorgung",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K11-endkosten-ambulanten-patientenversorgung",
      "text" : "Endkosten der ambulanten Patientenversorgung",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K11-endkosten-nebenkostenstellen",
      "text" : "Endkosten der Nebenkostenstellen",
      "type" : "integer",
      "maxLength" : 10
    }]
  },
  {
    "linkId" : "K12",
    "text" : "LKF K12 -  Sammel-Kostennachweis Detailblätter",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "K12-krankenanstaltennummer",
      "text" : "Krankenanstaltennummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "K12-blattnummer",
      "text" : "Blattnummer",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "01/11",
          "display" : "Personalkosten (Kostenartennummer 111–119)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "01/12",
          "display" : "Personalkosten (Kostenartennummer 121–129)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "01/13",
          "display" : "Personalkosten (Kostenartennummer 131–139)"
        }
      }]
    },
    {
      "linkId" : "K12-mlv-nummer",
      "text" : "MLV-Nummer",
      "type" : "integer",
      "maxLength" : 3
    },
    {
      "linkId" : "K12-aufwand-finanzbuchführung",
      "text" : "Aufwand gemäß Finanzbuchführung",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K12-neutraler-aufwand",
      "text" : "Neutraler Aufwand",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K12-kalkulatorische-kosten",
      "text" : "Kalkulatorische Kosten",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K12-kosten",
      "text" : "Kosten",
      "type" : "integer",
      "maxLength" : 10
    }]
  },
  {
    "linkId" : "K13",
    "text" : "LKF K13 - Kalkulatorischer Anhang – Kostenminderungen",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "K13-krankenanstaltennummer",
      "text" : "Krankenanstaltennummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "K13-index-kostenminderungsart",
      "text" : "Index Kostenminderungsart",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "A",
          "display" : "GSBG-Beihilfen"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "B",
          "display" : "Klinischer Mehraufwand"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "C",
          "display" : "Kostenersätze für Schulen und Akademien"
        }
      }]
    },
    {
      "linkId" : "K13-kostenminderungen",
      "text" : "Kostenminderungen",
      "type" : "integer",
      "maxLength" : 10
    }]
  },
  {
    "linkId" : "K14",
    "text" : "LKF K14 - Kalkulatorischer Anhang – Kalkulatorischer Anlagenspiegel",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "K14-krankenanstaltennummer",
      "text" : "Krankenanstaltennummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "K14-anlagenindex",
      "text" : "Anlagenindex",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "A",
          "display" : "Grundstücke (MLV-Nr. 91)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "B",
          "display" : "Bauten (MLV-Nr. 92–99)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "C",
          "display" : "Anlagen in Bau"
        }
      }]
    },
    {
      "linkId" : "K14-anschaffungs-und-herstellungskosten",
      "text" : "Anschaffungs- und Herstellungskosten",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K14-zugänge",
      "text" : "Zugänge",
      "type" : "decimal",
      "maxLength" : 10
    },
    {
      "linkId" : "K14-abgänge",
      "text" : "Abgänge",
      "type" : "decimal",
      "maxLength" : 10
    },
    {
      "linkId" : "K14-umbuchungen",
      "text" : "Umbuchungen",
      "type" : "decimal",
      "maxLength" : 10
    },
    {
      "linkId" : "K14-kumulierte-abschreibungen",
      "text" : "Kumulierte Abschreibungen",
      "type" : "decimal",
      "maxLength" : 10
    },
    {
      "linkId" : "K14-buchwerte-ende-berichtsjahres",
      "text" : "Buchwerte am Ende des Berichtsjahres",
      "type" : "decimal",
      "maxLength" : 10
    },
    {
      "linkId" : "K14-buchwerte-vorjahr",
      "text" : "Buchwerte Vorjahr",
      "type" : "decimal",
      "maxLength" : 10
    },
    {
      "linkId" : "K14-abschreibungen-laufendes-berichtsjahr",
      "text" : "Abschreibungen laufendes Berichtsjahr",
      "type" : "decimal",
      "maxLength" : 10
    }]
  },
  {
    "linkId" : "K15",
    "text" : "LKF K15 - Kalkulatorischer Anhang – Allgemeine Kostenbereiche",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "K15-krankenanstaltennummer",
      "text" : "Krankenanstaltennummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "K15-kostenbereichs-kennzahlenindex",
      "text" : "Kostenbereichs-Kennzahlenindex",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "K1",
          "display" : "Küche – Tablettsystem"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "K2",
          "display" : "Küche – Schöpfsystem"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "K3",
          "display" : "Küche – Cook and Chill"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "K9",
          "display" : "Seite 158 Handbuch zur Dokumentation – Anhang 1 (Aufbau und Inhalt der Datenmeldungen) 4.30 Satzart K15 – Kalkulatorischer Anhang – Allgemeine Kosten- bereiche Hinweis: Verweise auf das „Handbuch zur Dokumentation von Kostendaten in landesgesundheitsfondsfinanzierten Krankenanstalten“ erfolgen mit der Kurz- bezeichnung „KORE-Handbuch“. 4.30.1 Satzartenkennzeichen Das Datenfeld kennzeichnet die aktuelle Satzart und ist mit \"K15\" zu befüllen. 4.30.2 Jahr Das Berichtsjahr ist 4-stellig einzugeben (JJJJ). 4.30.3 Krankenanstaltennummer Dieses Datenfeld ist mit der jeweiligen Krankenanstaltennummer zu befüllen („Kxxx“). Die entsprechende Liste wird vom für das Gesundheitswesen zuständigen Bundesministerium zur Verfügung gestellt. 4.30.4 Kostenbereichs-Kennzahlenindex Es ist der Allgemeine Kostenbereich entsprechend folgender Tabelle anzugeben: Index Allgemeiner Kostenbereich K1 Küche – Tablettsystem K2 Küche – Schöpfsystem K3 Küche – Cook and Chill K9"
        }
      }]
    },
    {
      "linkId" : "K15-kosten",
      "text" : "Kosten",
      "type" : "integer",
      "maxLength" : 10
    },
    {
      "linkId" : "K15-bezugsgröße",
      "text" : "Bezugsgröße",
      "type" : "integer",
      "maxLength" : 10
    }]
  },
  {
    "linkId" : "K16",
    "text" : "LKF K16 - Kalkulatorischer Anhang – Ausgewählte Kosten",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "K16-krankenanstaltennummer",
      "text" : "Krankenanstaltennummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "K16-kostenindex",
      "text" : "Kostenindex",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "10",
          "display" : "Blut"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "20",
          "display" : "Chirurgisches Nahtmaterial"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "30",
          "display" : "Implantate und Prothesen (Summe)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "31",
          "display" : "Implantate und Prothesen für Gefäß- und Herzchirurgie"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "32",
          "display" : "Implantate und Prothesen für Knochenchirurgie"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "33",
          "display" : "Implantate und Prothesen für Neurochirurgie"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "34",
          "display" : "Körperersatzteile, andere"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "35",
          "display" : "Implantate für HNO"
        }
      }]
    },
    {
      "linkId" : "K16-kosten",
      "text" : "Kosten",
      "type" : "decimal",
      "maxLength" : 10
    }]
  }]
}

```
