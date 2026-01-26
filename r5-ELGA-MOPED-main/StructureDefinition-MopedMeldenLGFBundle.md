# ELGA.MOPED\MOPED Melden Bundle LGF - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Melden Bundle LGF**

## Resource Profile: MOPED Melden Bundle LGF 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedMeldenLGFBundle | *Version*:0.1.0 | |
| Draft as of 2026-01-26 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedMeldenLGFBundle |

 
Bundle für die Input-Ressourcen beim Melden von Informationen 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedMeldenLGFBundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedMeldenLGFBundle.csv), [Excel](StructureDefinition-MopedMeldenLGFBundle.xlsx), [Schematron](StructureDefinition-MopedMeldenLGFBundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedMeldenLGFBundle",
  "url" : "https://elga.moped.at/StructureDefinition/MopedMeldenLGFBundle",
  "version" : "0.1.0",
  "name" : "MopedMeldenLGFBundle",
  "title" : "MOPED Melden Bundle LGF",
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
  "description" : "Bundle für die Input-Ressourcen beim Melden von Informationen",
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
        "type" : [
          {
            "code" : "Claim",
            "profile" : ["https://elga.moped.at/StructureDefinition/MopedARKRequest"]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ARKKostenInformation.request.method",
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
