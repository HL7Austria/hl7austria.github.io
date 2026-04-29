# ELGA.MOPED\MOPED Anfragen Bundle KH - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Anfragen Bundle KH**

## Resource Profile: MOPED Anfragen Bundle KH 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedAnfragenBundleKH | *Version*:0.1.0 | |
| Draft as of 2026-04-29 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedAnfragenBundleKH |

 
Bundle für die Input-Ressourcen beim Anfragen (KH) 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedAnfragenBundleKH)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedAnfragenBundleKH.csv), [Excel](StructureDefinition-MopedAnfragenBundleKH.xlsx), [Schematron](StructureDefinition-MopedAnfragenBundleKH.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedAnfragenBundleKH",
  "url" : "https://elga.moped.at/StructureDefinition/MopedAnfragenBundleKH",
  "version" : "0.1.0",
  "name" : "MopedAnfragenBundleKH",
  "title" : "MOPED Anfragen Bundle KH",
  "status" : "draft",
  "date" : "2026-04-29T07:12:28+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Bundle für die Input-Ressourcen beim Anfragen (KH)",
  "fhirVersion" : "5.0.0",
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "patternCode" : "transaction"
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "resource"
        }],
        "rules" : "closed"
      },
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:VAERequests",
      "path" : "Bundle.entry",
      "sliceName" : "VAERequests",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:VAERequests.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Claim",
        "profile" : ["https://elga.moped.at/StructureDefinition/MopedVAERequestVerlaengerung",
        "https://elga.moped.at/StructureDefinition/MopedVAERequestInitial"]
      }]
    },
    {
      "id" : "Bundle.entry:VAERequests.request.method",
      "path" : "Bundle.entry.request.method",
      "short" : "POST",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbInsertOnlyVS"
      }
    }]
  }
}

```
