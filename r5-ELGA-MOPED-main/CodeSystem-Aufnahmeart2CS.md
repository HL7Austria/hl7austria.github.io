# ELGA.MOPED\Aufnahmeart2 des Patienten - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Aufnahmeart2 des Patienten**

## CodeSystem: Aufnahmeart2 des Patienten (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/Aufnahmeart2CS | *Version*:0.1.0 | |
| Active as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:Aufnahmeart2CS |

 
CodeSystem für die Aufnahmeart des Patienten 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Aufnahmeart2VS](ValueSet-Aufnahmeart2VS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "Aufnahmeart2CS",
  "url" : "https://elga.moped.at/CodeSystem/Aufnahmeart2CS",
  "version" : "0.1.0",
  "name" : "Aufnahmeart2CS",
  "title" : "Aufnahmeart2 des Patienten",
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
  "description" : "CodeSystem für die Aufnahmeart des Patienten",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "P",
    "display" : "geplante stationäre Aufnahme/geplanter ambulanter Besuch (mit vorhergehender Terminvereinbarung, Richtwert: mindestens 24 Stunden)"
  },
  {
    "code" : "A",
    "display" : "akute stationäre Aufnahme/akuter ambulanter Besuch (ohne vorhergehende Terminvereinbarung)"
  },
  {
    "code" : "K",
    "display" : "stationäre Aufnahme/ambulanter Besuch aus Kapazitätsgründen zugewiesen"
  },
  {
    "code" : "S",
    "display" : "Krisenfall – akute Aufnahme/akuter ambulanter Besuch aufgrund von Epidemien/Großschadensereignissen"
  }]
}

```
