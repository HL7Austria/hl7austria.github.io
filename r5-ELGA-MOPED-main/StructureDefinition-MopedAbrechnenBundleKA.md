# ELGA.MOPED\MOPED Abrechnen Bundle KA - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Abrechnen Bundle KA**

## Resource Profile: MOPED Abrechnen Bundle KA 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedAbrechnenBundleKA | *Version*:0.1.0 | |
| Draft as of 2026-05-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedAbrechnenBundleKA |

 
Bundle für die Input-Ressourcen beim Abrechnen (KA) 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedAbrechnenBundleKA)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedAbrechnenBundleKA.csv), [Excel](StructureDefinition-MopedAbrechnenBundleKA.xlsx), [Schematron](StructureDefinition-MopedAbrechnenBundleKA.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedAbrechnenBundleKA",
  "url" : "https://elga.moped.at/StructureDefinition/MopedAbrechnenBundleKA",
  "version" : "0.1.0",
  "name" : "MopedAbrechnenBundleKA",
  "title" : "MOPED Abrechnen Bundle KA",
  "status" : "draft",
  "date" : "2026-05-15T09:26:31+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Bundle für die Input-Ressourcen beim Abrechnen (KA)",
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
