# ELGA.MOPED\LKF B02 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF B02 Questionnaire**

## Questionnaire: LKF B02 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFB02Questionnaire | *Version*:0.1.0 | |
| Active as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
B02 Questionnaire - Vermögens- und Kapitalstruktur (VKS) 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFB02Questionnaire",
  "url" : "https://elga.moped.at/Questionnaire/LKFB02Questionnaire",
  "version" : "0.1.0",
  "title" : "LKF B02 Questionnaire",
  "status" : "active",
  "date" : "2026-04-07T11:10:24+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "B02 Questionnaire - Vermögens- und Kapitalstruktur (VKS)",
  "item" : [{
    "linkId" : "satzartenkennzeichen",
    "text" : "Satzartenkennzeichen",
    "type" : "string",
    "readOnly" : true,
    "maxLength" : 3,
    "initial" : [{
      "valueString" : "B02"
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
    "linkId" : "vks-kategorie",
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
    "linkId" : "vks-index-vermoegen",
    "text" : "VKSIndex – Vermögensposten",
    "type" : "coding",
    "enableWhen" : [{
      "question" : "vks-kategorie",
      "operator" : "=",
      "answerCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "V",
        "display" : "Vermögen"
      }
    }],
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
    "linkId" : "vks-index-kapital",
    "text" : "VKSIndex – Kapitalposten",
    "type" : "coding",
    "enableWhen" : [{
      "question" : "vks-kategorie",
      "operator" : "=",
      "answerCoding" : {
        "code" : "K",
        "display" : "Kapital"
      }
    }],
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
