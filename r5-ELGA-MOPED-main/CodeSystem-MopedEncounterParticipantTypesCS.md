# ELGA.MOPED\Moped Encounter Participant Type CodeSystem - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Moped Encounter Participant Type CodeSystem**

## CodeSystem: Moped Encounter Participant Type CodeSystem (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/MopedEncounterParticipantTypesCS | *Version*:0.1.0 | |
| Active as of 2026-04-08 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedEncounterParticipantTypesCS |

 
CodeSystem für die Moped Encounter Participant Types 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MopedEncounterParticipantTypesVS](ValueSet-MopedEncounterParticipantTypesVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "MopedEncounterParticipantTypesCS",
  "url" : "https://elga.moped.at/CodeSystem/MopedEncounterParticipantTypesCS",
  "version" : "0.1.0",
  "name" : "MopedEncounterParticipantTypesCS",
  "title" : "Moped Encounter Participant Type CodeSystem",
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
  "description" : "CodeSystem für die Moped Encounter Participant Types",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "fachlich",
    "display" : "Fachlich"
  },
  {
    "code" : "pflegerisch",
    "display" : "Pflegerisch"
  }]
}

```
