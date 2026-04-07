# ELGA.MOPED\Abrechnungsart Ausländerverrechnung CodeSystem - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Abrechnungsart Ausländerverrechnung CodeSystem**

## CodeSystem: Abrechnungsart Ausländerverrechnung CodeSystem (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/AbrechnungsartAuslaenderverrechnungCS | *Version*:0.1.0 | |
| Active as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AbrechnungsartAuslaenderverrechnungCS |

 
CodeSystem für die Abrechnungsarten in der Ausländerverrechnung 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AbrechnungsartAuslaenderverrechnungVS](ValueSet-AbrechnungsartAuslaenderverrechnungVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "AbrechnungsartAuslaenderverrechnungCS",
  "url" : "https://elga.moped.at/CodeSystem/AbrechnungsartAuslaenderverrechnungCS",
  "version" : "0.1.0",
  "name" : "AbrechnungsartAuslaenderverrechnungCS",
  "title" : "Abrechnungsart Ausländerverrechnung CodeSystem",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-04-07T19:34:12+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "CodeSystem für die Abrechnungsarten in der Ausländerverrechnung",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "E",
    "display" : "Echtkosten"
  },
  {
    "code" : "P",
    "display" : "Pauschal"
  },
  {
    "code" : "K",
    "display" : "Kostenverzicht"
  },
  {
    "code" : "A",
    "display" : "Abrechnungsverzicht"
  }]
}

```
