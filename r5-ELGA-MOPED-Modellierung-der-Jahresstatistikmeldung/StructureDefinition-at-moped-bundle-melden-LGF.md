# ELGA.MOPED\AT MOPED Bundle $melden LGF - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Bundle $melden LGF**

## Resource Profile: AT MOPED Bundle $melden LGF 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-bundle-melden-LGF | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedBundleMeldenLGF |

 
MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Melden von Informationen 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-bundle-melden-LGF.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-bundle-melden-LGF.csv), [Excel](StructureDefinition-at-moped-bundle-melden-LGF.xlsx), [Schematron](StructureDefinition-at-moped-bundle-melden-LGF.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-bundle-melden-LGF",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-bundle-melden-LGF",
  "version" : "0.1.0",
  "name" : "AtMopedBundleMeldenLGF",
  "title" : "AT MOPED Bundle $melden LGF",
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
  "description" : "MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Melden von Informationen",
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
      "id" : "Bundle.entry:ARKKostenInformation",
      "path" : "Bundle.entry",
      "sliceName" : "ARKKostenInformation",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:ARKKostenInformation.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Claim",
        "profile" : ["https://elga.moped.at/StructureDefinition/MopedARKRequest"]
      }]
    },
    {
      "id" : "Bundle.entry:ARKKostenInformation.request.method",
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
