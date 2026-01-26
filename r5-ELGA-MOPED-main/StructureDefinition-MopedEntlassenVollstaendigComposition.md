# ELGA.MOPED\MOPED Entlassung vollständig Composition - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Entlassung vollständig Composition**

## Resource Profile: MOPED Entlassung vollständig Composition ( Experimental ) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedEntlassenVollstaendigComposition | *Version*:0.1.0 | |
| Draft as of 2026-01-26 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedEntlassenVollstaendigComposition |

 
MOPED Profil der Composition Ressource nach $entlassen bei Entlassung vollständig 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedEntlassenVollstaendigComposition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedEntlassenVollstaendigComposition.csv), [Excel](StructureDefinition-MopedEntlassenVollstaendigComposition.xlsx), [Schematron](StructureDefinition-MopedEntlassenVollstaendigComposition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedEntlassenVollstaendigComposition",
  "url" : "https://elga.moped.at/StructureDefinition/MopedEntlassenVollstaendigComposition",
  "version" : "0.1.0",
  "name" : "MopedEntlassenVollstaendigComposition",
  "title" : "MOPED Entlassung vollständig Composition",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-01-26T07:03:23+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://elga.gv.at"
        }
      ]
    }
  ],
  "description" : "MOPED Profil der Composition Ressource nach $entlassen bei Entlassung vollständig",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "LKF",
      "uri" : "https://elga.moped.at/mapping/LKF",
      "name" : "LKF"
    },
    {
      "identity" : "KaOrg",
      "uri" : "https://elga.moped.at/mapping/KaOrg",
      "name" : "KaOrg"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/MopedComposition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Composition",
        "path" : "Composition",
        "constraint" : [
          {
            "key" : "moped-entlassen-vollstaendig-TBD",
            "severity" : "error",
            "human" : "TBD",
            "source" : "https://elga.moped.at/StructureDefinition/MopedEntlassenVollstaendigComposition"
          }
        ]
      },
      {
        "id" : "Composition.status",
        "path" : "Composition.status",
        "patternCode" : "partial"
      }
    ]
  }
}

```
