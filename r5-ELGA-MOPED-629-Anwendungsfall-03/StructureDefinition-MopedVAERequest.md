# ELGA.MOPED\MOPED VAERequest - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED VAERequest**

## Resource Profile: MOPED VAERequest 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedVAERequest | *Version*:0.1.0 | |
| Draft as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedVAERequest |

 
MOPED Profil für die Anfrage der Versichertenanspruchserklärung VAE. 

**Usages:**

* Use this Profile: [MOPED Anfragen Bundle KH](StructureDefinition-MopedAnfragenBundleKH.md)
* Refer to this Profile: [MOPED Composition](StructureDefinition-MopedComposition.md), [MOPED VAERequest](StructureDefinition-MopedVAERequest.md) and [MOPED VAEResponse](StructureDefinition-MopedVAEResponse.md)
* Examples for this Profile: [Claim/PJ1VAERequest1](Claim-PJ1VAERequest1.md) and [Claim/PJ2VAERequest1](Claim-PJ2VAERequest1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedVAERequest)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedVAERequest.csv), [Excel](StructureDefinition-MopedVAERequest.xlsx), [Schematron](StructureDefinition-MopedVAERequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedVAERequest",
  "url" : "https://elga.moped.at/StructureDefinition/MopedVAERequest",
  "version" : "0.1.0",
  "name" : "MopedVAERequest",
  "title" : "MOPED VAERequest",
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
  "description" : "MOPED Profil für die Anfrage der Versichertenanspruchserklärung VAE.",
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
  "type" : "Claim",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Claim",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Claim.type",
        "path" : "Claim.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/claim-type",
              "code" : "institutional"
            }
          ]
        }
      },
      {
        "id" : "Claim.use",
        "path" : "Claim.use",
        "patternCode" : "preauthorization"
      },
      {
        "id" : "Claim.patient",
        "path" : "Claim.patient",
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
        "id" : "Claim.insurer",
        "path" : "Claim.insurer",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/SVOrganization"]
          }
        ]
      },
      {
        "id" : "Claim.provider",
        "path" : "Claim.provider",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/KHOrganization"]
          }
        ]
      },
      {
        "id" : "Claim.related.claim",
        "path" : "Claim.related.claim",
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
                "valueBoolean" : false
              }
            ],
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedVAERequest"]
          }
        ]
      },
      {
        "id" : "Claim.encounter",
        "path" : "Claim.encounter",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resolve()"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Claim.encounter:MopedEncounter",
        "path" : "Claim.encounter",
        "sliceName" : "MopedEncounter",
        "short" : "Generelle Informationen zu Aufnahme und Entlassung des Patienten",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedEncounter"]
          }
        ]
      },
      {
        "id" : "Claim.encounter:TransferEncounter",
        "path" : "Claim.encounter",
        "sliceName" : "TransferEncounter",
        "short" : "Informationen zu Verlegungen innerhalb oder zwischen Krankenanstalten",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://elga.moped.at/StructureDefinition/MopedTransferEncounter"
            ]
          }
        ]
      },
      {
        "id" : "Claim.supportingInfo",
        "path" : "Claim.supportingInfo",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "category"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Claim.supportingInfo.code.coding",
        "path" : "Claim.supportingInfo.code.coding",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/VAESupportingInformationCategoryVS"
        }
      },
      {
        "id" : "Claim.supportingInfo:Sonderklasse",
        "path" : "Claim.supportingInfo",
        "sliceName" : "Sonderklasse",
        "short" : "Allgemeine Gebührenklasse/Sonderklasse",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Claim.supportingInfo:Sonderklasse.category",
        "path" : "Claim.supportingInfo.category",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS",
              "code" : "KLAS"
            }
          ]
        }
      },
      {
        "id" : "Claim.supportingInfo:Sonderklasse.code",
        "path" : "Claim.supportingInfo.code",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/SonderklasseVS"
        }
      },
      {
        "id" : "Claim.supportingInfo:Sonderklasse.timing[x]",
        "path" : "Claim.supportingInfo.timing[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Claim.supportingInfo:Sonderklasse.timing[x]:timingPeriod",
        "path" : "Claim.supportingInfo.timing[x]",
        "sliceName" : "timingPeriod",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "Claim.supportingInfo:VerdachtFremdverschulden",
        "path" : "Claim.supportingInfo",
        "sliceName" : "VerdachtFremdverschulden",
        "short" : "Verdacht auf Fremdversschluden",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Claim.supportingInfo:VerdachtFremdverschulden.category",
        "path" : "Claim.supportingInfo.category",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS",
              "code" : "FREVER"
            }
          ]
        }
      },
      {
        "id" : "Claim.supportingInfo:VerdachtFremdverschulden.value[x]",
        "path" : "Claim.supportingInfo.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Claim.supportingInfo:Verlaengerungstage",
        "path" : "Claim.supportingInfo",
        "sliceName" : "Verlaengerungstage",
        "short" : "Anzahl der Verlängerungstage",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Claim.supportingInfo:Verlaengerungstage.category",
        "path" : "Claim.supportingInfo.category",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS",
              "code" : "VERLAENG"
            }
          ]
        }
      },
      {
        "id" : "Claim.supportingInfo:Verlaengerungstage.value[x]",
        "path" : "Claim.supportingInfo.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Claim.supportingInfo:Verlaengerungstage.value[x]:valueQuantity",
        "path" : "Claim.supportingInfo.value[x]",
        "sliceName" : "valueQuantity",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Claim.supportingInfo:Verlaengerungstage.value[x]:valueQuantity.value",
        "path" : "Claim.supportingInfo.value[x].value",
        "short" : "Verlängerungstage",
        "min" : 1
      },
      {
        "id" : "Claim.supportingInfo:Verlaengerungstage.value[x]:valueQuantity.unit",
        "path" : "Claim.supportingInfo.value[x].unit",
        "patternString" : "day"
      },
      {
        "id" : "Claim.supportingInfo:Verlaengerungstage.value[x]:valueQuantity.system",
        "path" : "Claim.supportingInfo.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Claim.supportingInfo:Verlaengerungstage.value[x]:valueQuantity.code",
        "path" : "Claim.supportingInfo.value[x].code",
        "patternCode" : "day"
      },
      {
        "id" : "Claim.diagnosis.onAdmission",
        "path" : "Claim.diagnosis.onAdmission",
        "definition" : "Gibt an ob die Diagnose bereits bei Aufnahme in den stationären Aufenthalt vorhanden war"
      },
      {
        "id" : "Claim.insurance.coverage",
        "path" : "Claim.insurance.coverage",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedCoverage"]
          }
        ]
      },
      {
        "id" : "Claim.accident.type",
        "path" : "Claim.accident.type",
        "short" : "Verdacht auf Fremdversschluden",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/VerdachtArbeitsSchuelerunfallVS"
        }
      }
    ]
  }
}

```
