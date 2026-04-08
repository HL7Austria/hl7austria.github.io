# ELGA.MOPED\LKF K11 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF K11 Questionnaire**

## Questionnaire: LKF K11 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFK11Questionnaire | *Version*:0.1.0 | |
| Active as of 2026-04-08 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
LKF K11 Questionnaire - Sammel-Kostennachweis Summenblatt 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFK11Questionnaire",
  "url" : "https://elga.moped.at/Questionnaire/LKFK11Questionnaire",
  "version" : "0.1.0",
  "title" : "LKF K11 Questionnaire",
  "status" : "active",
  "date" : "2026-04-08T06:34:39+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "LKF K11 Questionnaire - Sammel-Kostennachweis Summenblatt",
  "item" : [{
    "linkId" : "satzartenkennzeichen",
    "text" : "Satzartenkennzeichen",
    "type" : "string",
    "readOnly" : true,
    "maxLength" : 3,
    "initial" : [{
      "valueString" : "K11"
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
    "linkId" : "summe_primärkosten",
    "text" : "Summe Primärkosten",
    "type" : "decimal",
    "maxLength" : 10
  },
  {
    "linkId" : "kostenminderungen",
    "text" : "Kostenminderungen",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "endkosten-krankenanstalt",
    "text" : "Endkosten der Krankenanstalt",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "sum-kalkulatorische-abschreibung",
    "text" : "Summe der kalkulatorischen Abschreibungen",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "abschreibungen-rest-0",
    "text" : "Davon kalkulatorische Abschreibungen für Anlagegüter mit Restwert 0",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "Abschreibungen-ausgeschiedener-tillgelegter-anlagen",
    "text" : "Davon kalkulatorische Abschreibungen von Restwerten ausgeschiedener oder stillgelegter Anlagen",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "sum-kalkulatorischen-zinsen",
    "text" : "Summe der kalkulatorischen Zinsen",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "sum-kalkulatorischen-miete",
    "text" : "Summe der kalkulatorischen Mieten",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "endkosten-stationäre-patientenversorgung",
    "text" : "Endkosten der stationären Patientenversorgung",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "endkosten-ambulanten-patientenversorgung",
    "text" : "Endkosten der ambulanten Patientenversorgung",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "endkosten-nebenkostenstellen",
    "text" : "Endkosten der Nebenkostenstellen",
    "type" : "integer",
    "maxLength" : 10
  }]
}

```
