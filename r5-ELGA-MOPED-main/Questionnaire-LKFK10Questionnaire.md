# ELGA.MOPED\LKF K10 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF K10 Questionnaire**

## Questionnaire: LKF K10 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFK10Questionnaire | *Version*:0.1.0 | |
| Active as of 2026-04-23 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
LKF K10 Questionnaire - Kostenstellen-Statistik und Kostennachweis (Neben- und Hilfskostenstellen) 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFK10Questionnaire",
  "url" : "https://elga.moped.at/Questionnaire/LKFK10Questionnaire",
  "version" : "0.1.0",
  "title" : "LKF K10 Questionnaire",
  "status" : "active",
  "date" : "2026-04-23T07:59:48+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "LKF K10 Questionnaire - Kostenstellen-Statistik und Kostennachweis (Neben- und Hilfskostenstellen)",
  "item" : [{
    "linkId" : "satzartenkennzeichen",
    "text" : "Satzartenkennzeichen",
    "type" : "string",
    "readOnly" : true,
    "maxLength" : 3,
    "initial" : [{
      "valueString" : "K10"
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
    "linkId" : "neben-hilfskostenstelle-funktionscode",
    "text" : "Neben-/Hilfskostenstelle – Funktionscode",
    "type" : "integer",
    "maxLength" : 8
  },
  {
    "linkId" : "nettogrundrissfläche",
    "text" : "Nettogrundrissfläche",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "personal-insgesamt",
    "text" : "Personal insgesamt-Vollzeitäquivalente",
    "type" : "decimal",
    "maxLength" : 9
  },
  {
    "linkId" : "personalkosten",
    "text" : "Personalkosten (KOAGR01)",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "kosten-med-güter",
    "text" : "Kosten für medizinische Gebrauchs- und Verbrauchsgüter (KOAGR02)",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "kosten-nicht-med-güter",
    "text" : "Kosten für nicht-medizinische Gebrauchs- und Verbrauchsgüter (KOAGR03)",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "kosten-med-fremdleistungen",
    "text" : "Kosten für medizinische Fremdleistungen (KOAGR04)",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "kosten-nicht-med-fremdleistungen",
    "text" : "Kosten für nicht-medizinische Fremdleistungen (KOAGR05)",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "energiekosten",
    "text" : "Energiekosten (KOAGR06)",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "sonstige-kosten",
    "text" : "Abgaben, Beiträge, Gebühren und sonstige Kosten (KOAGR07)",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "kalkulatorische-anlagekapitalkosten",
    "text" : "Kalkulatorische Anlagekapitalkosten (KOAGR08)",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "kosten-med-vor-und-entsorgung",
    "text" : "Kosten der vorwiegend medizinisch bedingten Ver- und Entsorgung (KOAGR11)",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "kosten-nicht-med-vor-und-entsorgung",
    "text" : "Kosten der vorwiegend nicht-medizinisch bedingten Ver- und Entsorgung (KOAGR12)",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "kosten-verwaltung",
    "text" : "Kosten der Verwaltung (KOAGR13)",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "andere-sekundärkosten (KOAGR14)",
    "text" : "Andere Sekundärkosten (KOAGR14)",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "kostenminderungen",
    "text" : "Kostenminderungen",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "summe-sum-innerbetrieblicher-leistungen",
    "text" : "Summe abgegebener innerbetrieblicher Leistungen",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "unter-überdeckung",
    "text" : "Unter- oder Überdeckung",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "endkosten-kostenstelle",
    "text" : "Endkosten der Kostenstelle",
    "type" : "integer",
    "maxLength" : 10
  }]
}

```
