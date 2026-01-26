# ELGA.MOPED\MOPED Antworten Bundle SV - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Antworten Bundle SV**

## Resource Profile: MOPED Antworten Bundle SV 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedAntwortenBundleSV | *Version*:0.1.0 | |
| Draft as of 2026-01-26 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedAntwortenBundleSV |

 
Bundle für die Input-Ressourcen beim Einbringen von Antworten der SV 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedAntwortenBundleSV)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedAntwortenBundleSV.csv), [Excel](StructureDefinition-MopedAntwortenBundleSV.xlsx), [Schematron](StructureDefinition-MopedAntwortenBundleSV.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedAntwortenBundleSV",
  "url" : "https://elga.moped.at/StructureDefinition/MopedAntwortenBundleSV",
  "version" : "0.1.0",
  "name" : "MopedAntwortenBundleSV",
  "title" : "MOPED Antworten Bundle SV",
  "status" : "draft",
  "date" : "2026-01-26T07:12:25+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://elga.gv.at"
        }
      ]
    }
  ],
  "description" : "Bundle für die Input-Ressourcen beim Einbringen von Antworten der SV",
  "fhirVersion" : "5.0.0",
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
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
          "discriminator" : [
            {
              "type" : "type",
              "path" : "resource"
            }
          ],
          "rules" : "closed"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry:VAEResponses",
        "path" : "Bundle.entry",
        "sliceName" : "VAEResponses",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:VAEResponses.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "ClaimResponse",
            "profile" : ["https://elga.moped.at/StructureDefinition/MopedVAEResponse"]
          }
        ]
      },
      {
        "id" : "Bundle.entry:VAEResponses.request.method",
        "path" : "Bundle.entry.request.method",
        "short" : "POST",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbInsertOnlyVS"
        }
      },
      {
        "id" : "Bundle.entry:ARKRueckmeldung",
        "path" : "Bundle.entry",
        "sliceName" : "ARKRueckmeldung",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:ARKRueckmeldung.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "ClaimResponse",
            "profile" : ["https://elga.moped.at/StructureDefinition/MopedARKResponse"]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ARKRueckmeldung.request.method",
        "path" : "Bundle.entry.request.method",
        "short" : "POST",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbInsertOnlyVS"
        }
      },
      {
        "id" : "Bundle.entry:ARKStatusUpdate",
        "path" : "Bundle.entry",
        "sliceName" : "ARKStatusUpdate",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:ARKStatusUpdate.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "PaymentReconciliation",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/MopedARKStatusUpdate"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ARKStatusUpdate.request.method",
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
        "type" : [
          {
            "code" : "CommunicationRequest"
          }
        ]
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
        "type" : [
          {
            "code" : "CommunicationRequest"
          }
        ]
      },
      {
        "id" : "Bundle.entry:CommunicationRequest.request.method",
        "path" : "Bundle.entry.request.method",
        "short" : "POST",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbInsertOnlyVS"
        }
      }
    ]
  }
}

```
