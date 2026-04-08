# ELGA.MOPED\Spezielle Betriebsform - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Spezielle Betriebsform**

## CodeSystem: Spezielle Betriebsform 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/SpezielleBetriebsformenCS | *Version*:0.1.0 | |
| Draft as of 2026-04-08 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:SpezielleBetriebsformenCS |

 
Spezielle Betriebsformen (gemäß ÖSG bzw. KAKuG) 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpezielleOrganisationsformVS](ValueSet-SpezielleOrganisationsformVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "SpezielleBetriebsformenCS",
  "url" : "https://elga.moped.at/CodeSystem/SpezielleBetriebsformenCS",
  "version" : "0.1.0",
  "name" : "SpezielleBetriebsformenCS",
  "title" : "Spezielle Betriebsform",
  "status" : "draft",
  "date" : "2026-04-08T08:16:43+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Spezielle Betriebsformen (gemäß ÖSG bzw. KAKuG)",
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "K",
    "display" : "Tagesstation als Teil einer vollstationären Organisationsform (für einmalige Aufenthalte über Tag oder über Nacht)"
  },
  {
    "code" : "H",
    "display" : "Spezielle ambulante Bereiche (ambulante Tagesbehandlung und ambulante tagesstrukturierende Behandlung)"
  },
  {
    "code" : "M",
    "display" : "Fachspezifische Wochenklinik"
  },
  {
    "code" : "X",
    "display" : "Ohne fachlich eindeutige Zuordnung"
  }]
}

```
