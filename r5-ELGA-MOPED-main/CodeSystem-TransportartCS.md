# ELGA.MOPED\Transportart - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Transportart**

## CodeSystem: Transportart (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/TransportartCS | *Version*:0.1.0 | |
| Active as of 2026-05-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:TransportartCS |

 
CodeSystem für die Transportart des Patienten 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TransportartVS](ValueSet-TransportartVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "TransportartCS",
  "url" : "https://elga.moped.at/CodeSystem/TransportartCS",
  "version" : "0.1.0",
  "name" : "TransportartCS",
  "title" : "Transportart",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-05-15T07:39:15+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "CodeSystem für die Transportart des Patienten",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "H",
    "display" : "Notarzt-Hubschrauber"
  },
  {
    "code" : "K",
    "display" : "Krankentransport"
  },
  {
    "code" : "N",
    "display" : "Rettung mit notärztlicher Begleitung"
  },
  {
    "code" : "R",
    "display" : "Rettung ohne notärztliche Begleitung"
  },
  {
    "code" : "S",
    "display" : "Selbstanreise des Patienten/der Patientin"
  },
  {
    "code" : "Z",
    "display" : "Sonstige Transportart"
  }]
}

```
