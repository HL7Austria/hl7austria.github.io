# ELGA.MOPED\AT MOPED Composition $entlassen vollständig Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Composition $entlassen vollständig Profil**

## Resource Profile: AT MOPED Composition $entlassen vollständig Profil ( Experimental ) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-composition-entlassen-vollstaendig | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedCompositionEntlassenVollstaendig |

 
MOPED Profil der Composition Ressource nach $entlassen bei Entlassung vollständig 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-composition-entlassen-vollstaendig.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-composition-entlassen-vollstaendig.csv), [Excel](StructureDefinition-at-moped-composition-entlassen-vollstaendig.xlsx), [Schematron](StructureDefinition-at-moped-composition-entlassen-vollstaendig.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-composition-entlassen-vollstaendig",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-composition-entlassen-vollstaendig",
  "version" : "0.1.0",
  "name" : "AtMopedCompositionEntlassenVollstaendig",
  "title" : "AT MOPED Composition $entlassen vollständig Profil",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-09T11:53:00+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Profil der Composition Ressource nach $entlassen bei Entlassung vollständig",
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
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/at-moped-composition-generisch",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Composition",
      "path" : "Composition",
      "constraint" : [{
        "key" : "moped-entlassen-vollstaendig-TBD",
        "severity" : "error",
        "human" : "TBD",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-composition-entlassen-vollstaendig"
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
