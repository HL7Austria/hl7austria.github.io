# ELGA.MOPED\MOPED Abrechnen Bundle KH - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Abrechnen Bundle KH**

## Resource Profile: MOPED Abrechnen Bundle KH 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedAbrechnenBundleKH | *Version*:0.1.0 | |
| Draft as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedAbrechnenBundleKH |

 
Bundle für die Input-Ressourcen beim Abrechnen (KH) 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedAbrechnenBundleKH)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedAbrechnenBundleKH.csv), [Excel](StructureDefinition-MopedAbrechnenBundleKH.xlsx), [Schematron](StructureDefinition-MopedAbrechnenBundleKH.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedAbrechnenBundleKH",
  "url" : "https://elga.moped.at/StructureDefinition/MopedAbrechnenBundleKH",
  "version" : "0.1.0",
  "name" : "MopedAbrechnenBundleKH",
  "title" : "MOPED Abrechnen Bundle KH",
  "status" : "draft",
  "date" : "2026-04-07T19:20:35+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Bundle für die Input-Ressourcen beim Abrechnen (KH)",
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
      "id" : "Bundle.entry:LKFRequests",
      "path" : "Bundle.entry",
      "sliceName" : "LKFRequests",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:LKFRequests.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Claim",
        "profile" : ["https://elga.moped.at/StructureDefinition/MopedLKFRequest"]
      }]
    },
    {
      "id" : "Bundle.entry:LKFRequests.request.method",
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
