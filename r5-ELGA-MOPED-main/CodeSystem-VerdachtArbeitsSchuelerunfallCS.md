# ELGA.MOPED\Verdacht auf Arbeits- oder Schuelerunfall CodeSystem - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Verdacht auf Arbeits- oder Schuelerunfall CodeSystem**

## CodeSystem: Verdacht auf Arbeits- oder Schuelerunfall CodeSystem (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/VerdachtArbeitsSchuelerunfallCS | *Version*:0.1.0 | |
| Active as of 2026-03-29 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:VerdachtArbeitsSchuelerunfallCS |

 
CodeSystem für den Verdacht auf einen Arbeits- oder Schuelerunfall 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VerdachtArbeitsSchuelerunfallVS](ValueSet-VerdachtArbeitsSchuelerunfallVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "VerdachtArbeitsSchuelerunfallCS",
  "url" : "https://elga.moped.at/CodeSystem/VerdachtArbeitsSchuelerunfallCS",
  "version" : "0.1.0",
  "name" : "VerdachtArbeitsSchuelerunfallCS",
  "title" : "Verdacht auf Arbeits- oder Schuelerunfall CodeSystem",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-03-29T16:14:43+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "CodeSystem für den Verdacht auf einen Arbeits- oder Schuelerunfall",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "1",
    "display" : "Arbeitsunfall"
  },
  {
    "code" : "2",
    "display" : "Schüler-/Studentenunfall"
  },
  {
    "code" : "3",
    "display" : "Landwirtschaftlicher Unfall"
  },
  {
    "code" : "4",
    "display" : "Wegunfall Arbeit"
  },
  {
    "code" : "5",
    "display" : "Wegunfall Schüler/Student"
  },
  {
    "code" : "0",
    "display" : "Nein/Unbekannt"
  }]
}

```
