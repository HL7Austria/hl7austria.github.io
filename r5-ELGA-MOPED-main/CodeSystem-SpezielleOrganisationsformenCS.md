# ELGA.MOPED\Spezielle Organisationsformen - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Spezielle Organisationsformen**

## CodeSystem: Spezielle Organisationsformen (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/SpezielleOrganisationsformenCS | *Version*:0.1.0 | |
| Active as of 2026-04-29 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:SpezielleOrganisationsformenCS |

 
Spezielle Organisationsformen (gemäß ÖSG bzw. KAKuG) 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpezielleOrganisationsformVS](ValueSet-SpezielleOrganisationsformVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "SpezielleOrganisationsformenCS",
  "url" : "https://elga.moped.at/CodeSystem/SpezielleOrganisationsformenCS",
  "version" : "0.1.0",
  "name" : "SpezielleOrganisationsformenCS",
  "title" : "Spezielle Organisationsformen",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-04-29T07:12:28+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Spezielle Organisationsformen (gemäß ÖSG bzw. KAKuG)",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [{
    "code" : "A",
    "display" : "Abteilung"
  },
  {
    "code" : "R",
    "display" : "Referenzzentrum – ohne Versorgungsstufengliederung"
  },
  {
    "code" : "Z",
    "display" : "Referenzzentrum – höchste Versorgungsstufe"
  },
  {
    "code" : "S",
    "display" : "Referenzzentrum – 2. Versorgungsstufe"
  },
  {
    "code" : "V",
    "display" : "Spezialzentrum – ausgewählte Versorgungsbereiche"
  },
  {
    "code" : "D",
    "display" : "Department"
  },
  {
    "code" : "F",
    "display" : "Fachschwerpunkt"
  },
  {
    "code" : "T",
    "display" : "Dislozierte Tagesklinik"
  },
  {
    "code" : "W",
    "display" : "Dislozierte Wochenklinik"
  }]
}

```
