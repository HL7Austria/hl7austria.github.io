# ELGA.MOPED\LKF Monatsstatistikmeldung - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF Monatsstatistikmeldung**

## Questionnaire: LKF Monatsstatistikmeldung 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFMonatsstatistikmeldung | *Version*:0.1.0 | |
| Active as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
LKF Monatsstatistikmeldung 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFMonatsstatistikmeldung",
  "url" : "https://elga.moped.at/Questionnaire/LKFMonatsstatistikmeldung",
  "version" : "0.1.0",
  "title" : "LKF Monatsstatistikmeldung",
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
  "description" : "LKF Monatsstatistikmeldung",
  "item" : [{
    "linkId" : "jahr",
    "text" : "Jahr",
    "type" : "integer",
    "maxLength" : 4
  },
  {
    "linkId" : "K01",
    "text" : "LKF K01 - den Kostenstellenplan",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "K01-krankenanstaltennummer",
      "text" : "Krankenanstaltennummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "K01-funktionscode",
      "text" : "Funktionscode",
      "type" : "integer",
      "maxLength" : 8
    },
    {
      "linkId" : "K01-interne-kostenstellennummer",
      "text" : "Interne Kostenstellennummer",
      "type" : "string",
      "maxLength" : 8
    },
    {
      "linkId" : "K01-interne-kostenstellenbezeichnung",
      "text" : "Interne Kostenstellenbezeichnung",
      "type" : "string",
      "maxLength" : 50
    },
    {
      "linkId" : "K01-spezielle-organisationsform",
      "text" : "Spezielle Organisationsform",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "A",
          "display" : "Abteilung"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "R",
          "display" : "Referenzzentrum – ohne Versorgungsstufengliederung"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "Z",
          "display" : "Referenzzentrum – höchste Versorgungsstufe"
        }
      }]
    }]
  },
  {
    "linkId" : "L01",
    "text" : "LKF L01 - Spezielle Leistungsbereiche",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "L01-krankenanstaltennummer",
      "text" : "Krankenanstaltennummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "L01-hauptkostenstelle-funktionscode",
      "text" : "Hauptkostenstelle – Funktionscode",
      "type" : "integer",
      "enableWhen" : [{
        "question" : "L01-leistungsbereich",
        "operator" : "!=",
        "answerCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "M",
          "display" : "Spezielle Leistungen"
        }
      }],
      "maxLength" : 8
    },
    {
      "linkId" : "L01-leistungsbereich",
      "text" : "Leistungsbereich",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "I",
          "display" : "Intensivüberwachungs-/behandlungseinheiten (Erwachsene/Kinder)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "G",
          "display" : "Akutgeriatrie/Remobilisation"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "L",
          "display" : "Palliativmedizinische Einrichtungen"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "N",
          "display" : "Neurologische Akut-Nachbehandlung"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "J",
          "display" : "Kinder- und Jugendpsychiatrie"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "P",
          "display" : "Psychiatrie"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "S",
          "display" : "Stroke Unit"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "A",
          "display" : "Alkohol- und Drogenentwöhnung"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "M",
          "display" : "Spezielle Leistungen"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "R",
          "display" : "Remobilisation/Nachsorge"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "O",
          "display" : "Psychosomatik"
        }
      }]
    },
    {
      "linkId" : "L01-gruppe-stufe",
      "text" : "Gruppe/Stufe",
      "type" : "string",
      "maxLength" : 2
    },
    {
      "linkId" : "L01-punkte",
      "text" : "Punkte",
      "type" : "integer",
      "maxLength" : 6
    }]
  },
  {
    "linkId" : "L02",
    "text" : "LKF L02 - Abrechnungsrelevante Kostenträger",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "L02-krankenanstaltennummer",
      "text" : "Krankenanstaltennummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "L02-kostentraeger-code",
      "text" : "Kostenträger – Code",
      "type" : "string",
      "maxLength" : 2
    },
    {
      "linkId" : "L02-lgf-relevanz",
      "text" : "LGF – Relevanz",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "J",
          "display" : "Ja – LKF-relevant"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://tbd.at/LKF",
          "code" : "N",
          "display" : "Nein – nicht LKF-relevant"
        }
      }]
    }]
  },
  {
    "linkId" : "L03",
    "text" : "LKF L03 - Exklusionen medizinischer Leistungen",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "L03-krankenanstaltennummer",
      "text" : "Krankenanstaltennummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "L03-medizinische-leistung-code",
      "text" : "Medizinische Leistung – Code",
      "type" : "string",
      "maxLength" : 10
    }]
  },
  {
    "linkId" : "L04",
    "text" : "LKF L04 - Exklusionen tagesklinischer medizinischer Leistungen",
    "type" : "group",
    "repeats" : true,
    "item" : [{
      "linkId" : "L04-krankenanstaltennummer",
      "text" : "Krankenanstaltennummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "L04-medizinische-leistung-code",
      "text" : "Medizinische Leistung – Code",
      "type" : "string",
      "maxLength" : 10
    }]
  }]
}

```
