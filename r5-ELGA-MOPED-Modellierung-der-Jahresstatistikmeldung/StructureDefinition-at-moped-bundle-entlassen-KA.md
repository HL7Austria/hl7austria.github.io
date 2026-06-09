# ELGA.MOPED\AT MOPED Bundle $entlassen KA Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Bundle $entlassen KA Profil**

## Resource Profile: AT MOPED Bundle $entlassen KA Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-bundle-entlassen-KA | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedBundleEntlassenKA |

 
MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Entlassen eines Patienten 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-bundle-entlassen-KA.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-bundle-entlassen-KA.csv), [Excel](StructureDefinition-at-moped-bundle-entlassen-KA.xlsx), [Schematron](StructureDefinition-at-moped-bundle-entlassen-KA.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-bundle-entlassen-KA",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-bundle-entlassen-KA",
  "version" : "0.1.0",
  "name" : "AtMopedBundleEntlassenKA",
  "title" : "AT MOPED Bundle $entlassen KA Profil",
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
  "description" : "MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Entlassen eines Patienten",
  "fhirVersion" : "5.0.0",
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/at-moped-bundle-update-KA",
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
    }]
  }
}

```
