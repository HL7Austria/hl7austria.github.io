# ELGA.MOPED\MOPED Coverage für Selbstzahler - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Coverage für Selbstzahler**

## Resource Profile: MOPED Coverage für Selbstzahler 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedCoverageSelbstzahler | *Version*:0.1.0 | |
| Draft as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedCoverageSelbstzahler |

 
MOPED Profil der Coverage Ressource für Selbstzahler 

**Usages:**

* Use this Profile: [MOPED Update Bundle KH](StructureDefinition-MopedUpdateBundleKH.md)
* Refer to this Profile: [MOPED Composition](StructureDefinition-MopedComposition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedCoverageSelbstzahler)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedCoverageSelbstzahler.csv), [Excel](StructureDefinition-MopedCoverageSelbstzahler.xlsx), [Schematron](StructureDefinition-MopedCoverageSelbstzahler.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedCoverageSelbstzahler",
  "url" : "https://elga.moped.at/StructureDefinition/MopedCoverageSelbstzahler",
  "version" : "0.1.0",
  "name" : "MopedCoverageSelbstzahler",
  "title" : "MOPED Coverage für Selbstzahler",
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
  "description" : "MOPED Profil der Coverage Ressource für Selbstzahler",
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
        "id" : "Coverage.kind",
        "path" : "Coverage.kind",
        "patternCode" : "self-pay"
      },
      {
        "id" : "Coverage.paymentBy.party",
        "path" : "Coverage.paymentBy.party",
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
        "id" : "Coverage.type",
        "path" : "Coverage.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/coverage-selfpay",
              "code" : "pay"
            }
          ]
        }
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
        "max" : "0"
      }
    ]
  }
}

```
