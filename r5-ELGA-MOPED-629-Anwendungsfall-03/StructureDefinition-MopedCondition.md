# ELGA.MOPED\MOPED Condition - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Condition**

## Resource Profile: MOPED Condition 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedCondition | *Version*:0.1.0 | |
| Draft as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedCondition |

 
MOPED Profil der Condition Ressource für die LDF-Abrechnung 

**Usages:**

* Use this Profile: [MOPED Update Bundle KH](StructureDefinition-MopedUpdateBundleKH.md)
* Refer to this Profile: [MOPED Composition](StructureDefinition-MopedComposition.md) and [MOPED LKFRequest](StructureDefinition-MopedLKFRequest.md)
* Examples for this Profile: [Condition/Condition42.1](Condition-Condition42.1.md), [Condition/PJ1Condition1](Condition-PJ1Condition1.md), [Condition/PJ2Condition1](Condition-PJ2Condition1.md) and [Condition/PJ2Condition2](Condition-PJ2Condition2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedCondition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedCondition.csv), [Excel](StructureDefinition-MopedCondition.xlsx), [Schematron](StructureDefinition-MopedCondition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedCondition",
  "url" : "https://elga.moped.at/StructureDefinition/MopedCondition",
  "version" : "0.1.0",
  "name" : "MopedCondition",
  "title" : "MOPED Condition",
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
  "description" : "MOPED Profil der Condition Ressource für die LDF-Abrechnung",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 V2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Condition.extension",
        "path" : "Condition.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Condition.extension:Diagnosetyp",
        "path" : "Condition.extension",
        "sliceName" : "Diagnosetyp",
        "min" : 1,
        "max" : "2",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/moped-ext-Diagnosetyp"
            ]
          }
        ]
      },
      {
        "id" : "Condition.clinicalStatus.extension",
        "path" : "Condition.clinicalStatus.extension",
        "min" : 1
      },
      {
        "id" : "Condition.clinicalStatus.extension:data-absent-reason",
        "path" : "Condition.clinicalStatus.extension",
        "sliceName" : "data-absent-reason",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/data-absent-reason"]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Condition.clinicalStatus.extension:data-absent-reason.value[x]",
        "path" : "Condition.clinicalStatus.extension.value[x]",
        "patternCode" : "not-asked"
      },
      {
        "id" : "Condition.code",
        "path" : "Condition.code",
        "min" : 1
      },
      {
        "id" : "Condition.code.coding",
        "path" : "Condition.code.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Condition.code.coding:ICD10",
        "path" : "Condition.code.coding",
        "sliceName" : "ICD10",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/ICD10ATVS"
        }
      },
      {
        "id" : "Condition.code.coding:ICD10.system",
        "path" : "Condition.code.coding.system",
        "min" : 1,
        "patternUri" : "https://termgit.elga.gv.at/CodeSystem/icd-10-bmsgpk-2025"
      },
      {
        "id" : "Condition.code.coding:HDG",
        "path" : "Condition.code.coding",
        "sliceName" : "HDG",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/LKFHauptdiagnosegruppenVS"
        }
      },
      {
        "id" : "Condition.code.coding:HDG.system",
        "path" : "Condition.code.coding.system",
        "min" : 1,
        "patternUri" : "https://elga.moped.at/CodeSystem/LKFHauptdiagnosegruppenCS"
      },
      {
        "id" : "Condition.subject",
        "path" : "Condition.subject",
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
        "id" : "Condition.encounter",
        "path" : "Condition.encounter",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedEncounter"]
          }
        ]
      }
    ]
  }
}

```
