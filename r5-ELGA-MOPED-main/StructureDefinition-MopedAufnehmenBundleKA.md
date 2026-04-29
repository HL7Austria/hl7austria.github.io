# ELGA.MOPED\MOPED Aufnehmen Bundle KA - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Aufnehmen Bundle KA**

## Resource Profile: MOPED Aufnehmen Bundle KA 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedAufnehmenBundleKA | *Version*:0.1.0 | |
| Draft as of 2026-04-29 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedAufnehmenBundleKA |

 
Bundle für die Input-Ressourcen beim Aufnehmen eines Patienten 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedAufnehmenBundleKA)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedAufnehmenBundleKA.csv), [Excel](StructureDefinition-MopedAufnehmenBundleKA.xlsx), [Schematron](StructureDefinition-MopedAufnehmenBundleKA.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedAufnehmenBundleKA",
  "url" : "https://elga.moped.at/StructureDefinition/MopedAufnehmenBundleKA",
  "version" : "0.1.0",
  "name" : "MopedAufnehmenBundleKA",
  "title" : "MOPED Aufnehmen Bundle KA",
  "status" : "draft",
  "date" : "2026-04-29T09:14:27+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Bundle für die Input-Ressourcen beim Aufnehmen eines Patienten",
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
      "id" : "Bundle.entry:Aufenthalt.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Encounter",
        "profile" : ["https://elga.moped.at/StructureDefinition/MopedEncounterAufnahmeS"]
      }]
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
