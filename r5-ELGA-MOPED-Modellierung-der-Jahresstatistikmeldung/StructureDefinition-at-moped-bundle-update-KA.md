# ELGA.MOPED\AT MOPED Bundle $update KA - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Bundle $update KA**

## Resource Profile: AT MOPED Bundle $update KA 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-bundle-update-KA | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedBundleUpdateKA |

 
MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Update von Informationen zu einem Fall 

**Usages:**

* Derived from this Profile: [AT MOPED Bundle $entlassen KA Profil](StructureDefinition-at-moped-bundle-entlassen-KA.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-bundle-update-KA.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-bundle-update-KA.csv), [Excel](StructureDefinition-at-moped-bundle-update-KA.xlsx), [Schematron](StructureDefinition-at-moped-bundle-update-KA.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-bundle-update-KA",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-bundle-update-KA",
  "version" : "0.1.0",
  "name" : "AtMopedBundleUpdateKA",
  "title" : "AT MOPED Bundle $update KA",
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
  "description" : "MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Update von Informationen zu einem Fall",
  "fhirVersion" : "5.0.0",
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/at-moped-bundle-input-KA",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.entry:Aufenthalt",
      "path" : "Bundle.entry",
      "sliceName" : "Aufenthalt"
    },
    {
      "id" : "Bundle.entry:Aufenthalt.request.method",
      "path" : "Bundle.entry.request.method",
      "short" : "PUT",
      "patternCode" : "PUT"
    },
    {
      "id" : "Bundle.entry:Patient",
      "path" : "Bundle.entry",
      "sliceName" : "Patient"
    },
    {
      "id" : "Bundle.entry:Patient.request.method",
      "path" : "Bundle.entry.request.method",
      "short" : "PUT",
      "patternCode" : "PUT"
    }]
  }
}

```
