# ELGA.MOPED\AT MOPED Bundle $antworten SV Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Bundle $antworten SV Profil**

## Resource Profile: AT MOPED Bundle $antworten SV Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-bundle-antworten-SV | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedBundleAntwortenSV |

 
MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Einbringen von Antworten der SV 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-bundle-antworten-SV.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-bundle-antworten-SV.csv), [Excel](StructureDefinition-at-moped-bundle-antworten-SV.xlsx), [Schematron](StructureDefinition-at-moped-bundle-antworten-SV.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-bundle-antworten-SV",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-bundle-antworten-SV",
  "version" : "0.1.0",
  "name" : "AtMopedBundleAntwortenSV",
  "title" : "AT MOPED Bundle $antworten SV Profil",
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
  "description" : "MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Einbringen von Antworten der SV",
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
      "id" : "Bundle.entry:VAEResponses",
      "path" : "Bundle.entry",
      "sliceName" : "VAEResponses",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:VAEResponses.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "ClaimResponse",
        "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-claimresponse-vaeresponse-generisch"]
      }]
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
      "type" : [{
        "code" : "ClaimResponse",
        "profile" : ["https://elga.moped.at/StructureDefinition/MopedARKResponse"]
      }]
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
      "type" : [{
        "code" : "PaymentReconciliation",
        "profile" : ["https://elga.moped.at/StructureDefinition/MopedARKStatusUpdate"]
      }]
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
      "type" : [{
        "code" : "CommunicationRequest"
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
