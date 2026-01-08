# ELGA.MOPED\MOPED Coverage - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Coverage**

## Resource Profile: MOPED Coverage 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedCoverage | *Version*:0.1.0 | |
| Draft as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedCoverage |

 
MOPED Profil der Coverage Ressource für Versicherungen. 

**Usages:**

* Use this Profile: [MOPED Update Bundle KH](StructureDefinition-MopedUpdateBundleKH.md)
* Refer to this Profile: [MOPED Composition](StructureDefinition-MopedComposition.md), [MOPED LKFRequest](StructureDefinition-MopedLKFRequest.md) and [MOPED VAERequest](StructureDefinition-MopedVAERequest.md)
* Examples for this Profile: [Coverage/PJ1Coverage](Coverage-PJ1Coverage.md) and [Coverage/PJ2Coverage](Coverage-PJ2Coverage.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedCoverage)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedCoverage.csv), [Excel](StructureDefinition-MopedCoverage.xlsx), [Schematron](StructureDefinition-MopedCoverage.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedCoverage",
  "url" : "https://elga.moped.at/StructureDefinition/MopedCoverage",
  "version" : "0.1.0",
  "name" : "MopedCoverage",
  "title" : "MOPED Coverage",
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
  "description" : "MOPED Profil der Coverage Ressource für Versicherungen.",
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
    },
    {
      "identity" : "cdanetv4",
      "uri" : "http://www.cda-adc.ca/en/services/cdanet/",
      "name" : "Canadian Dental Association eclaims standard"
    },
    {
      "identity" : "cpha3pharm",
      "uri" : "http://www.pharmacists.ca/",
      "name" : "Canadian Pharmacy Association eclaims standard"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 V2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Coverage",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Coverage",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Coverage.identifier",
        "path" : "Coverage.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Coverage.identifier:VDASID",
        "path" : "Coverage.identifier",
        "sliceName" : "VDASID",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Coverage.identifier:VDASID.system",
        "path" : "Coverage.identifier.system",
        "min" : 1,
        "patternUri" : "urn:oid:1.2.40.0.10.1.4.3.9.1"
      },
      {
        "id" : "Coverage.identifier:VDASID.assigner",
        "path" : "Coverage.identifier.assigner",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-organization"
            ]
          }
        ]
      },
      {
        "id" : "Coverage.kind",
        "path" : "Coverage.kind",
        "patternCode" : "insurance"
      },
      {
        "id" : "Coverage.paymentBy.party",
        "path" : "Coverage.paymentBy.party",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-organization"
            ]
          }
        ]
      },
      {
        "id" : "Coverage.policyHolder",
        "path" : "Coverage.policyHolder",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-patient",
              "https://elga.moped.at/StructureDefinition/Hauptversicherter"
            ]
          }
        ]
      },
      {
        "id" : "Coverage.beneficiary",
        "path" : "Coverage.beneficiary",
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
        "id" : "Coverage.insurer",
        "path" : "Coverage.insurer",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/SVOrganization"]
          }
        ]
      },
      {
        "id" : "Coverage.class",
        "path" : "Coverage.class",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "type.coding"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Coverage.class:Versichertenkategorien",
        "path" : "Coverage.class",
        "sliceName" : "Versichertenkategorien",
        "short" : "Versichertenkategorien",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Coverage.class:Versichertenkategorien.type",
        "path" : "Coverage.class.type",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://svc.co.at/CodeSystem/ecard-versichertenkategorie-cs"
        }
      },
      {
        "id" : "Coverage.class:Versichertenkategorien.type.coding",
        "path" : "Coverage.class.type.coding",
        "min" : 1,
        "patternCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/coverage-class",
          "code" : "group"
        }
      },
      {
        "id" : "Coverage.class:Versichertenkategorien.value.system",
        "path" : "Coverage.class.value.system",
        "patternUri" : "http://svc.co.at/CodeSystem/ecard-versichertenkategorie-cs"
      }
    ]
  }
}

```
