# ELGA.MOPED\MOPED LKFResponse - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED LKFResponse**

## Resource Profile: MOPED LKFResponse 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedLKFResponse | *Version*:0.1.0 | |
| Draft as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedLKFResponse |

 
MOPED Profil der ClaimResponse Ressource für die Leistungsabrechnungsantwort. 

**Usages:**

* Use this Profile: [MOPED Entscheiden Bundle LGF](StructureDefinition-MopedEntscheidenLGFBundle.md)
* Refer to this Profile: [MOPED Composition](StructureDefinition-MopedComposition.md)
* Examples for this Profile: [ClaimResponse/PJ1LKFResponse1](ClaimResponse-PJ1LKFResponse1.md) and [ClaimResponse/PJ2LKFResponse1](ClaimResponse-PJ2LKFResponse1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedLKFResponse)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedLKFResponse.csv), [Excel](StructureDefinition-MopedLKFResponse.xlsx), [Schematron](StructureDefinition-MopedLKFResponse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedLKFResponse",
  "url" : "https://elga.moped.at/StructureDefinition/MopedLKFResponse",
  "version" : "0.1.0",
  "name" : "MopedLKFResponse",
  "title" : "MOPED LKFResponse",
  "status" : "draft",
  "date" : "2025-10-15T12:16:02+00:00",
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
  "description" : "MOPED Profil der ClaimResponse Ressource für die Leistungsabrechnungsantwort.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ClaimResponse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ClaimResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "ClaimResponse.status",
        "path" : "ClaimResponse.status",
        "patternCode" : "active"
      },
      {
        "id" : "ClaimResponse.type.coding",
        "path" : "ClaimResponse.type.coding",
        "patternCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/claim-type",
          "code" : "institutional"
        }
      },
      {
        "id" : "ClaimResponse.use",
        "path" : "ClaimResponse.use",
        "patternCode" : "claim"
      },
      {
        "id" : "ClaimResponse.patient",
        "path" : "ClaimResponse.patient",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-patient"
            ]
          }
        ]
      },
      {
        "id" : "ClaimResponse.request",
        "path" : "ClaimResponse.request",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedLKFRequest"]
          }
        ]
      },
      {
        "id" : "ClaimResponse.decision",
        "path" : "ClaimResponse.decision",
        "min" : 1
      },
      {
        "id" : "ClaimResponse.addItem.extension",
        "path" : "ClaimResponse.addItem.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "ClaimResponse.addItem.extension:AddItemCategory",
        "path" : "ClaimResponse.addItem.extension",
        "sliceName" : "AddItemCategory",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/moped-ext-AddItemCategory"
            ]
          }
        ]
      }
    ]
  }
}

```
