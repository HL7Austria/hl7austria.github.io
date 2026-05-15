# ELGA.MOPED\Anwesenheitsart - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Anwesenheitsart**

## CodeSystem: Anwesenheitsart (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/AnwesenheitsartCS | *Version*:0.1.0 | |
| Active as of 2026-05-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AnwesenheitsartCS |

 
CodeSystem für die Anwesenheitsart 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AnwesenheitsartVS](ValueSet-AnwesenheitsartVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "AnwesenheitsartCS",
  "url" : "https://elga.moped.at/CodeSystem/AnwesenheitsartCS",
  "version" : "0.1.0",
  "name" : "AnwesenheitsartCS",
  "title" : "Anwesenheitsart",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-05-15T09:26:31+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "CodeSystem für die Anwesenheitsart",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "ANW",
    "display" : "physisch anwesend"
  },
  {
    "code" : "ABW",
    "display" : "physisch nicht anwesend"
  }]
}

```
