# ELGA.MOPED\Moped CodeSystem für die KaOrg Arten der Entbindung - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Moped CodeSystem für die KaOrg Arten der Entbindung**

## CodeSystem: Moped CodeSystem für die KaOrg Arten der Entbindung 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/MopedEntbindungsartCS | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedEntbindungsartCS |

 
KaOrg Varianten der Art der Entbindung 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MopedEntbindungsartVS](ValueSet-MopedEntbindungsartVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "MopedEntbindungsartCS",
  "url" : "https://elga.moped.at/CodeSystem/MopedEntbindungsartCS",
  "version" : "0.1.0",
  "name" : "MopedEntbindungsartCS",
  "title" : "Moped CodeSystem für die KaOrg Arten der Entbindung",
  "status" : "draft",
  "date" : "2026-06-09T11:53:00+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "KaOrg Varianten der Art der Entbindung",
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "0",
    "display" : "normale Geburt"
  },
  {
    "code" : "1",
    "display" : "Frühgeburt"
  },
  {
    "code" : "2",
    "display" : "frühgeborene Totgeburt"
  },
  {
    "code" : "3",
    "display" : "Kaiserschnitt"
  },
  {
    "code" : "4",
    "display" : "Fehlgeburt"
  },
  {
    "code" : "5",
    "display" : "Totgeburt"
  }]
}

```
