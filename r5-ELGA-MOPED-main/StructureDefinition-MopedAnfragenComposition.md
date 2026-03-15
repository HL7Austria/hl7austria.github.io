# ELGA.MOPED\MOPED Anfragen Composition - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Anfragen Composition**

## Resource Profile: MOPED Anfragen Composition ( Experimental ) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedAnfragenComposition | *Version*:0.1.0 | |
| Draft as of 2026-03-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedAnfragenComposition |

 
MOPED Profil der Composition Ressource nach $anfragen 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedAnfragenComposition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedAnfragenComposition.csv), [Excel](StructureDefinition-MopedAnfragenComposition.xlsx), [Schematron](StructureDefinition-MopedAnfragenComposition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedAnfragenComposition",
  "url" : "https://elga.moped.at/StructureDefinition/MopedAnfragenComposition",
  "version" : "0.1.0",
  "name" : "MopedAnfragenComposition",
  "title" : "MOPED Anfragen Composition",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-03-15T19:53:47+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Profil der Composition Ressource nach $anfragen",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "LKF",
    "uri" : "https://elga.moped.at/mapping/LKF",
    "name" : "LKF"
  },
  {
    "identity" : "KaOrg",
    "uri" : "https://elga.moped.at/mapping/KaOrg",
    "name" : "KaOrg"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/MopedComposition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Composition",
      "path" : "Composition",
      "constraint" : [{
        "key" : "moped-anfragen-TBD",
        "severity" : "error",
        "human" : "TBD",
        "source" : "https://elga.moped.at/StructureDefinition/MopedAnfragenComposition"
      }]
    },
    {
      "id" : "Composition.status",
      "path" : "Composition.status",
      "patternCode" : "partial"
    },
    {
      "id" : "Composition.section",
      "path" : "Composition.section",
      "min" : 4
    },
    {
      "id" : "Composition.section:zustaendigeSV",
      "path" : "Composition.section",
      "sliceName" : "zustaendigeSV",
      "min" : 1
    },
    {
      "id" : "Composition.section:VAERequests",
      "path" : "Composition.section",
      "sliceName" : "VAERequests",
      "min" : 1,
      "max" : "1"
    }]
  }
}

```
