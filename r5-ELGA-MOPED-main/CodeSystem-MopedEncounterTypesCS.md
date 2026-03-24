# ELGA.MOPED\Arten von Moped Encounter - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Arten von Moped Encounter**

## CodeSystem: Arten von Moped Encounter (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/MopedEncounterTypesCS | *Version*:0.1.0 | |
| Active as of 2026-03-24 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedEncounterTypesCS |

 
Arten von Moped Encounter 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CompositionSectionsVS](ValueSet-CompositionSectionsVS.md)
* [MopedEncounterTypesVS](ValueSet-MopedEncounterTypesVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "MopedEncounterTypesCS",
  "url" : "https://elga.moped.at/CodeSystem/MopedEncounterTypesCS",
  "version" : "0.1.0",
  "name" : "MopedEncounterTypesCS",
  "title" : "Arten von Moped Encounter",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-03-24T20:07:54+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Arten von Moped Encounter",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "ENC",
    "display" : "Moped Encounter"
  },
  {
    "code" : "TENC",
    "display" : "Moped Transfer Encounter"
  },
  {
    "code" : "ENC-BUND",
    "display" : "Moped Encounter Bund"
  },
  {
    "code" : "ENC-LGF",
    "display" : "Moped Encounter LGF"
  },
  {
    "code" : "ENC-SV",
    "display" : "Moped Encounter SV"
  }]
}

```
