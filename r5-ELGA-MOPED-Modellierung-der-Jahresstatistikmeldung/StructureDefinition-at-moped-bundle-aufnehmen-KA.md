# ELGA.MOPED\AT MOPED Bundle $aufnehmen KA Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Bundle $aufnehmen KA Profil**

## Resource Profile: AT MOPED Bundle $aufnehmen KA Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-bundle-aufnehmen-KA | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedBundleAufnehmenKA |

 
MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Aufnehmen eines Patienten 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-bundle-aufnehmen-KA.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-bundle-aufnehmen-KA.csv), [Excel](StructureDefinition-at-moped-bundle-aufnehmen-KA.xlsx), [Schematron](StructureDefinition-at-moped-bundle-aufnehmen-KA.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-bundle-aufnehmen-KA",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-bundle-aufnehmen-KA",
  "version" : "0.1.0",
  "name" : "AtMopedBundleAufnehmenKA",
  "title" : "AT MOPED Bundle $aufnehmen KA Profil",
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
  "description" : "MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Aufnehmen eines Patienten",
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
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "min" : 4
    },
    {
      "id" : "Bundle.entry:Aufenthalt",
      "path" : "Bundle.entry",
      "sliceName" : "Aufenthalt",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:Aufenthalt.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:Patient",
      "path" : "Bundle.entry",
      "sliceName" : "Patient",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:Diagnosen",
      "path" : "Bundle.entry",
      "sliceName" : "Diagnosen",
      "short" : "Aufnahmediagnose(n)",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:Bewegungen",
      "path" : "Bundle.entry",
      "sliceName" : "Bewegungen",
      "short" : "Station auf die der Patient initial aufgenommen wird und evtl. weitere",
      "min" : 1
    }]
  }
}

```
