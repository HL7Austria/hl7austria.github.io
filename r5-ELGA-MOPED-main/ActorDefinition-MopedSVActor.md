# ELGA.MOPED\Moped SV Actor - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Moped SV Actor**

## ActorDefinition: Moped SV Actor 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/ActorDefinition/MopedSVActor | *Version*:0.1.0 | |
| Draft as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:SVActor |

 
Moped ActorDefnition für eine SV in Österreich 



## Resource Content

```json
{
  "resourceType" : "ActorDefinition",
  "id" : "MopedSVActor",
  "url" : "https://elga.moped.at/ActorDefinition/MopedSVActor",
  "version" : "0.1.0",
  "name" : "SVActor",
  "title" : "Moped SV Actor",
  "status" : "draft",
  "date" : "2026-04-07T12:18:59+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Moped ActorDefnition für eine SV in Österreich",
  "type" : "system",
  "reference" : ["https://elga.moped.at/StructureDefinition/SVOrganization",
  "https://elga.moped.at/StructureDefinition/DachverbandOrganization"]
}

```
