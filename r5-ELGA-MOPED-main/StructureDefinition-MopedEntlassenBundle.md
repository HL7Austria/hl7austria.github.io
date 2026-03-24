# ELGA.MOPED\MOPED Entlassen Bundle KH - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Entlassen Bundle KH**

## Resource Profile: MOPED Entlassen Bundle KH 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedEntlassenBundle | *Version*:0.1.0 | |
| Draft as of 2026-03-24 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedEntlassenBundle |

 
Bundle für die Input-Ressourcen beim Entlassen eines Patienten 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedEntlassenBundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedEntlassenBundle.csv), [Excel](StructureDefinition-MopedEntlassenBundle.xlsx), [Schematron](StructureDefinition-MopedEntlassenBundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedEntlassenBundle",
  "url" : "https://elga.moped.at/StructureDefinition/MopedEntlassenBundle",
  "version" : "0.1.0",
  "name" : "MopedEntlassenBundle",
  "title" : "MOPED Entlassen Bundle KH",
  "status" : "draft",
  "date" : "2026-03-24T20:07:54+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Bundle für die Input-Ressourcen beim Entlassen eines Patienten",
  "fhirVersion" : "5.0.0",
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/MopedUpdateBundleKH",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.entry:Aufenthalt",
      "path" : "Bundle.entry",
      "sliceName" : "Aufenthalt",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:Aufenthalt.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Encounter",
        "profile" : ["https://elga.moped.at/StructureDefinition/MopedEncounterEntlassungS"]
      }]
    }]
  }
}

```
