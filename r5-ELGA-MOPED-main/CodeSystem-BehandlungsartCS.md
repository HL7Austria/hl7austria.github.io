# ELGA.MOPED\Behandlungsart - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Behandlungsart**

## CodeSystem: Behandlungsart (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/BehandlungsartCS | *Version*:0.1.0 | |
| Active as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:BehandlungsartCS |

 
CodeSystem für die Behandlungsart 

 This Code system is referenced in the content logical definition of the following value sets: 

* [BehandlungsartVS](ValueSet-BehandlungsartVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "BehandlungsartCS",
  "url" : "https://elga.moped.at/CodeSystem/BehandlungsartCS",
  "version" : "0.1.0",
  "name" : "BehandlungsartCS",
  "title" : "Behandlungsart",
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
  "description" : "CodeSystem für die Behandlungsart",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "S",
    "display" : "Stationär"
  },
  {
    "code" : "I",
    "display" : "Spitalsambulant"
  },
  {
    "code" : "E",
    "display" : "Extramural ambulant"
  }]
}

```
