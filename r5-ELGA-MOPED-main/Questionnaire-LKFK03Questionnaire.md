# ELGA.MOPED\LKF K03 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF K03 Questionnaire**

## Questionnaire: LKF K03 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFK03Questionnaire | *Version*:0.1.0 | |
| Active as of 2026-04-08 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
K03 Questionnaire - KA-Statistik (Ressourcen und Inanspruchnahme) 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFK03Questionnaire",
  "url" : "https://elga.moped.at/Questionnaire/LKFK03Questionnaire",
  "version" : "0.1.0",
  "title" : "LKF K03 Questionnaire",
  "status" : "active",
  "date" : "2026-04-08T08:16:43+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "K03 Questionnaire - KA-Statistik (Ressourcen und Inanspruchnahme)",
  "item" : [{
    "linkId" : "sazartenkennzeichen",
    "text" : "Sazartenkennzeichen",
    "type" : "string",
    "maxLength" : 3
  },
  {
    "linkId" : "jahr",
    "text" : "Jahr",
    "type" : "date"
  },
  {
    "linkId" : "krankenanstaltennummer",
    "text" : "Krankenanstaltennummer",
    "type" : "string",
    "maxLength" : 6
  },
  {
    "linkId" : "systemisierte-betten-insgesamt",
    "text" : "Systemisierte Betten insgesamt",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "systemisierte-betten-sonderklasse",
    "text" : "Systemisierte Betten – Sonderklasse",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "tatsachlich-aufgestellte-betten-insgesamt",
    "text" : "Tatsächlich aufgestellte Betten insgesamt",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "tatsachlich-aufgestellte-betten-sonderklasse",
    "text" : "Tatsächlich aufgestellte Betten – Sonderklasse",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "belagstage-sonderklasse",
    "text" : "Belagstage – Sonderklasse",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "aufnahmen-sonderklasse",
    "text" : "Aufnahmen – Sonderklasse",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "vom-vorjahr-verbliebene-sonderklasse",
    "text" : "Vom Vorjahr Verbliebene – Sonderklasse",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "entlassungen-sonderklasse",
    "text" : "Entlassungen – Sonderklasse",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "verstorbene-sonderklasse",
    "text" : "Verstorbene – Sonderklasse",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "aufnahmen-von-begleitpersonen",
    "text" : "Aufnahmen von Begleitpersonen",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "belagstage-von-begleitpersonen",
    "text" : "Belagstage von Begleitpersonen",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "ambulante-patienten-patientinnen",
    "text" : "Ambulante Patienten/Patientinnen",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "ambulante-betreuungsplatze",
    "text" : "Ambulante Betreuungsplätze",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "op-tische",
    "text" : "OP-Tische",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "entbindungsplatze",
    "text" : "Entbindungsplätze",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "postoperative-uberwachungsplatze",
    "text" : "Postoperative Überwachungsplätze",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "dialyseplatze",
    "text" : "Dialyseplätze",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "obduktionen-durch-anstaltspersonal",
    "text" : "Obduktionen durch Anstaltspersonal",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "obduktionen-durch-fremdpersonal",
    "text" : "Obduktionen durch Fremdpersonal",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "entbindungen-lebendgeborene",
    "text" : "Entbindungen – Lebendgeborene",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "entbindungen-totgeborene",
    "text" : "Entbindungen – Totgeborene",
    "type" : "integer",
    "maxLength" : 6
  }]
}

```
