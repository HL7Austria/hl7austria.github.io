# ELGA.MOPED\Fondsrelevanz - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fondsrelevanz**

## CodeSystem: Fondsrelevanz (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/FondsrelevanzCS | *Version*:0.1.0 | |
| Active as of 2026-04-08 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:FondsrelevanzCS |

 
CodeSystem für die Fondsrelevanz 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FondsrelevanzVS](ValueSet-FondsrelevanzVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "FondsrelevanzCS",
  "url" : "https://elga.moped.at/CodeSystem/FondsrelevanzCS",
  "version" : "0.1.0",
  "name" : "FondsrelevanzCS",
  "title" : "Fondsrelevanz",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-04-08T06:34:39+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "CodeSystem für die Fondsrelevanz",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "J",
    "display" : "Ja (Abrechnung des stationären Aufenthalts/ambulanten Besuchs erfolgt über den Landesgesundheitsfonds/PRIKRAF)"
  },
  {
    "code" : "K",
    "display" : "Nein (Abrechnung des stationären Aufenthalts/ambulanten Besuchs erfolgt über den Sozialversicherungsträger)"
  },
  {
    "code" : "N",
    "display" : "Nein (Abrechnung des stationären Aufenthalts/ambulanten Besuchs erfolgt weder über den Landesgesundheitsfonds/PRIKRAF noch über den Sozialversicherungsträger)"
  }]
}

```
