# ELGA.MOPED\MOPED Entscheiden Bundle LGF - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Entscheiden Bundle LGF**

## Resource Profile: MOPED Entscheiden Bundle LGF 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedEntscheidenLGFBundle | *Version*:0.1.0 | |
| Draft as of 2026-03-01 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedEntscheidenLGFBundle |

 
Bundle für die Input-Ressourcen beim Entscheiden (Bestätigen/Ablehnen) von Punkten/Erorrs/Warnings 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedEntscheidenLGFBundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedEntscheidenLGFBundle.csv), [Excel](StructureDefinition-MopedEntscheidenLGFBundle.xlsx), [Schematron](StructureDefinition-MopedEntscheidenLGFBundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedEntscheidenLGFBundle",
  "url" : "https://elga.moped.at/StructureDefinition/MopedEntscheidenLGFBundle",
  "version" : "0.1.0",
  "name" : "MopedEntscheidenLGFBundle",
  "title" : "MOPED Entscheiden Bundle LGF",
  "status" : "draft",
  "date" : "2026-03-01T19:57:07+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Bundle für die Input-Ressourcen beim Entscheiden (Bestätigen/Ablehnen) von Punkten/Erorrs/Warnings",
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
      "min" : 1
    },
    {
      "id" : "Bundle.entry:LKFResponses",
      "path" : "Bundle.entry",
      "sliceName" : "LKFResponses",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:LKFResponses.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "ClaimResponse",
        "profile" : ["https://elga.moped.at/StructureDefinition/MopedLKFResponse"]
      }]
    },
    {
      "id" : "Bundle.entry:LKFResponses.request.method",
      "path" : "Bundle.entry.request.method",
      "short" : "POST",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbInsertOnlyVS"
      }
    },
    {
      "id" : "Bundle.entry:Communication",
      "path" : "Bundle.entry",
      "sliceName" : "Communication",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:Communication.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Communication"
      }]
    },
    {
      "id" : "Bundle.entry:Communication.request.method",
      "path" : "Bundle.entry.request.method",
      "short" : "POST",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbInsertOnlyVS"
      }
    },
    {
      "id" : "Bundle.entry:CommunicationRequest",
      "path" : "Bundle.entry",
      "sliceName" : "CommunicationRequest",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:CommunicationRequest.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "CommunicationRequest"
      }]
    },
    {
      "id" : "Bundle.entry:CommunicationRequest.request.method",
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
