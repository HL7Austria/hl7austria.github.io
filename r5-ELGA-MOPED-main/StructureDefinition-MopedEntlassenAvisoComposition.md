# ELGA.MOPED\MOPED Entlassung Aviso Composition - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Entlassung Aviso Composition**

## Resource Profile: MOPED Entlassung Aviso Composition ( Experimental ) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedEntlassenAvisoComposition | *Version*:0.1.0 | |
| Draft as of 2026-04-17 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedEntlassenAvisoComposition |

 
MOPED Profil der Composition Ressource nach $entlassen bei Entlassung Aviso 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedEntlassenAvisoComposition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedEntlassenAvisoComposition.csv), [Excel](StructureDefinition-MopedEntlassenAvisoComposition.xlsx), [Schematron](StructureDefinition-MopedEntlassenAvisoComposition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedEntlassenAvisoComposition",
  "url" : "https://elga.moped.at/StructureDefinition/MopedEntlassenAvisoComposition",
  "version" : "0.1.0",
  "name" : "MopedEntlassenAvisoComposition",
  "title" : "MOPED Entlassung Aviso Composition",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-04-17T10:34:11+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Profil der Composition Ressource nach $entlassen bei Entlassung Aviso",
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
        "key" : "moped-entlassen-aviso-TBD",
        "severity" : "error",
        "human" : "TBD",
        "source" : "https://elga.moped.at/StructureDefinition/MopedEntlassenAvisoComposition"
      }]
    },
    {
      "id" : "Composition.status",
      "path" : "Composition.status",
      "patternCode" : "partial"
    }]
  }
}

```
