# ELGA.MOPED\Sonderklasse CodeSystem - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sonderklasse CodeSystem**

## CodeSystem: Sonderklasse CodeSystem (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/SonderklasseCS | *Version*:0.1.0 | |
| Active as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:SonderklasseCS |

 
CodeSystem für die Klasse (KaOrg) 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SonderklasseVS](ValueSet-SonderklasseVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "SonderklasseCS",
  "url" : "https://elga.moped.at/CodeSystem/SonderklasseCS",
  "version" : "0.1.0",
  "name" : "SonderklasseCS",
  "title" : "Sonderklasse CodeSystem",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-04-07T06:39:12+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "CodeSystem für die Klasse (KaOrg)",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "A",
    "display" : "Allgemeine Gebührenklasse"
  },
  {
    "code" : "S",
    "display" : "Sonderklasse"
  }]
}

```
