# ELGA.MOPED\AT MOPED Bundle $anfragen KA Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Bundle $anfragen KA Profil**

## Resource Profile: AT MOPED Bundle $anfragen KA Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-bundle-anfragen-KA | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedBundleAnfragenKA |

 
MOPED Profil der Bundle Ressource für die Input-Ressourcen beim $anfragen (KA) 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-bundle-anfragen-KA.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-bundle-anfragen-KA.csv), [Excel](StructureDefinition-at-moped-bundle-anfragen-KA.xlsx), [Schematron](StructureDefinition-at-moped-bundle-anfragen-KA.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-bundle-anfragen-KA",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-bundle-anfragen-KA",
  "version" : "0.1.0",
  "name" : "AtMopedBundleAnfragenKA",
  "title" : "AT MOPED Bundle $anfragen KA Profil",
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
  "description" : "MOPED Profil der Bundle Ressource für die Input-Ressourcen beim $anfragen (KA)",
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
        "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-claim-vaerequest-verlaengerung",
        "https://elga.moped.at/StructureDefinition/at-moped-claim-VAE-request-initial"]
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
