# ELGA.MOPED\MOPED Update Bundle KA - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Update Bundle KA**

## Resource Profile: MOPED Update Bundle KA 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedUpdateBundleKA | *Version*:0.1.0 | |
| Draft as of 2026-05-05 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedUpdateBundleKA |

 
Bundle für die Input-Ressourcen beim Update von Informationen zu einem Fall 

**Usages:**

* Derived from this Profile: [MOPED Entlassen Bundle KA](StructureDefinition-MopedEntlassenBundle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedUpdateBundleKA)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedUpdateBundleKA.csv), [Excel](StructureDefinition-MopedUpdateBundleKA.xlsx), [Schematron](StructureDefinition-MopedUpdateBundleKA.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedUpdateBundleKA",
  "url" : "https://elga.moped.at/StructureDefinition/MopedUpdateBundleKA",
  "version" : "0.1.0",
  "name" : "MopedUpdateBundleKA",
  "title" : "MOPED Update Bundle KA",
  "status" : "draft",
  "date" : "2026-05-05T07:22:12+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Bundle für die Input-Ressourcen beim Update von Informationen zu einem Fall",
  "fhirVersion" : "5.0.0",
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/MopedInputBundleKA",
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
