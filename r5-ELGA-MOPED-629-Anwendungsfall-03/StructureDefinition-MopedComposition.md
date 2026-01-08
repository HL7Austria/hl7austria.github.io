# ELGA.MOPED\MOPED Composition - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Composition**

## Resource Profile: MOPED Composition ( Experimental ) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedComposition | *Version*:0.1.0 | |
| Draft as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedComposition |

 
MOPED Profil der Composition Ressource von der alle anderen Compositions ableiten. 

**Usages:**

* Derived from this Profile: [MOPED Anfragen Composition](StructureDefinition-MopedAnfragenComposition.md), [MOPED Aufnahme Composition](StructureDefinition-MopedAufnahmeComposition.md), [MOPED Beantworten Composition](StructureDefinition-MopedBeantwortenComposition.md), [MOPED Entlassung Aviso Composition](StructureDefinition-MopedEntlassenAvisoComposition.md)...Show 3 more,[MOPED Entlassung vollständig Composition](StructureDefinition-MopedEntlassenVollstaendigComposition.md),[MOPED Master Composition](StructureDefinition-MopedMasterComposition.md)and[MOPED Update Composition](StructureDefinition-MopedUpdateComposition.md)
* Examples for this Profile: [Composition/Composition42](Composition-Composition42.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedComposition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedComposition.csv), [Excel](StructureDefinition-MopedComposition.xlsx), [Schematron](StructureDefinition-MopedComposition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedComposition",
  "url" : "https://elga.moped.at/StructureDefinition/MopedComposition",
  "version" : "0.1.0",
  "name" : "MopedComposition",
  "title" : "MOPED Composition",
  "status" : "draft",
  "experimental" : true,
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
  "description" : "MOPED Profil der Composition Ressource von der alle anderen Compositions ableiten.",
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
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "fhirdocumentreference",
      "uri" : "http://hl7.org/fhir/documentreference",
      "name" : "FHIR DocumentReference"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Composition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Composition",
        "path" : "Composition"
      },
      {
        "id" : "Composition.extension",
        "path" : "Composition.extension",
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
        "id" : "Composition.extension:AnzahlVerlegungen",
        "path" : "Composition.extension",
        "sliceName" : "AnzahlVerlegungen",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/moped-ext-AnzahlVerlegungen"
            ]
          }
        ]
      },
      {
        "id" : "Composition.extension:AnzahlBeurlaubungen",
        "path" : "Composition.extension",
        "sliceName" : "AnzahlBeurlaubungen",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/moped-ext-AnzahlBeurlaubungen"
            ]
          }
        ]
      },
      {
        "id" : "Composition.subject",
        "path" : "Composition.subject",
        "min" : 1,
        "max" : "1",
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
        "id" : "Composition.encounter",
        "path" : "Composition.encounter",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://elga.moped.at/StructureDefinition/MopedEncounterA",
              "https://elga.moped.at/StructureDefinition/MopedEncounterS"
            ]
          }
        ]
      },
      {
        "id" : "Composition.useContext",
        "path" : "Composition.useContext",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "code"
            }
          ],
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Composition.useContext:Workflow",
        "path" : "Composition.useContext",
        "sliceName" : "Workflow",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Composition.useContext:Workflow.code",
        "path" : "Composition.useContext.code",
        "patternCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/usage-context-type",
          "code" : "workflow"
        }
      },
      {
        "id" : "Composition.useContext:Workflow.value[x]",
        "path" : "Composition.useContext.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/WorkflowStatusVS"
        }
      },
      {
        "id" : "Composition.author",
        "path" : "Composition.author",
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
        "id" : "Composition.section",
        "path" : "Composition.section",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "code.coding.code"
            }
          ],
          "rules" : "open"
        },
        "min" : 2
      },
      {
        "id" : "Composition.section.code",
        "path" : "Composition.section.code",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/CompositionSectionsVS"
        }
      },
      {
        "id" : "Composition.section:TransferEncounter",
        "path" : "Composition.section",
        "sliceName" : "TransferEncounter",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:TransferEncounter.code.coding.system",
        "path" : "Composition.section.code.coding.system",
        "patternUri" : "https://elga.moped.at/CodeSystem/MopedEncounterTypesCS"
      },
      {
        "id" : "Composition.section:TransferEncounter.code.coding.code",
        "path" : "Composition.section.code.coding.code",
        "min" : 1,
        "patternCode" : "TENC"
      },
      {
        "id" : "Composition.section:TransferEncounter.entry",
        "path" : "Composition.section.entry",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://elga.moped.at/StructureDefinition/MopedTransferEncounterI",
              "https://elga.moped.at/StructureDefinition/MopedTransferEncounterA",
              "https://elga.moped.at/StructureDefinition/MopedTransferEncounterS"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:zustaendigeSV",
        "path" : "Composition.section",
        "sliceName" : "zustaendigeSV",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:zustaendigeSV.code.coding.system",
        "path" : "Composition.section.code.coding.system",
        "patternUri" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS"
      },
      {
        "id" : "Composition.section:zustaendigeSV.code.coding.code",
        "path" : "Composition.section.code.coding.code",
        "min" : 1,
        "patternCode" : "SV"
      },
      {
        "id" : "Composition.section:zustaendigeSV.entry",
        "path" : "Composition.section.entry",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/SVOrganization"]
          }
        ]
      },
      {
        "id" : "Composition.section:zustaendigerLGF",
        "path" : "Composition.section",
        "sliceName" : "zustaendigerLGF",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Composition.section:zustaendigerLGF.code.coding.system",
        "path" : "Composition.section.code.coding.system",
        "patternUri" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS"
      },
      {
        "id" : "Composition.section:zustaendigerLGF.code.coding.code",
        "path" : "Composition.section.code.coding.code",
        "min" : 1,
        "patternCode" : "LGF"
      },
      {
        "id" : "Composition.section:zustaendigerLGF.entry",
        "path" : "Composition.section.entry",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/LGFOrganization"]
          }
        ]
      },
      {
        "id" : "Composition.section:zustaendigesKH",
        "path" : "Composition.section",
        "sliceName" : "zustaendigesKH",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Composition.section:zustaendigesKH.code.coding.system",
        "path" : "Composition.section.code.coding.system",
        "patternUri" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS"
      },
      {
        "id" : "Composition.section:zustaendigesKH.code.coding.code",
        "path" : "Composition.section.code.coding.code",
        "min" : 1,
        "patternCode" : "KH"
      },
      {
        "id" : "Composition.section:zustaendigesKH.entry",
        "path" : "Composition.section.entry",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/KHOrganization"]
          }
        ]
      },
      {
        "id" : "Composition.section:besuchteAbteilungen",
        "path" : "Composition.section",
        "sliceName" : "besuchteAbteilungen",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:besuchteAbteilungen.code.coding.system",
        "path" : "Composition.section.code.coding.system",
        "patternUri" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS"
      },
      {
        "id" : "Composition.section:besuchteAbteilungen.code.coding.code",
        "path" : "Composition.section.code.coding.code",
        "min" : 1,
        "patternCode" : "ABT"
      },
      {
        "id" : "Composition.section:besuchteAbteilungen.author",
        "path" : "Composition.section.author",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/KHOrganization"]
          }
        ]
      },
      {
        "id" : "Composition.section:besuchteAbteilungen.entry",
        "path" : "Composition.section.entry",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://elga.moped.at/StructureDefinition/MopedOrganizationAbteilung"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:Diagnosen",
        "path" : "Composition.section",
        "sliceName" : "Diagnosen",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:Diagnosen.code.coding.system",
        "path" : "Composition.section.code.coding.system",
        "patternUri" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS"
      },
      {
        "id" : "Composition.section:Diagnosen.code.coding.code",
        "path" : "Composition.section.code.coding.code",
        "min" : 1,
        "patternCode" : "DIAG"
      },
      {
        "id" : "Composition.section:Diagnosen.entry",
        "path" : "Composition.section.entry",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedCondition"]
          }
        ]
      },
      {
        "id" : "Composition.section:Leistungen",
        "path" : "Composition.section",
        "sliceName" : "Leistungen",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:Leistungen.code.coding.system",
        "path" : "Composition.section.code.coding.system",
        "patternUri" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS"
      },
      {
        "id" : "Composition.section:Leistungen.code.coding.code",
        "path" : "Composition.section.code.coding.code",
        "min" : 1,
        "patternCode" : "LEI"
      },
      {
        "id" : "Composition.section:Leistungen.author",
        "path" : "Composition.section.author",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/KHOrganization"]
          }
        ]
      },
      {
        "id" : "Composition.section:Leistungen.entry",
        "path" : "Composition.section.entry",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedProcedure"]
          }
        ]
      },
      {
        "id" : "Composition.section:Coverages",
        "path" : "Composition.section",
        "sliceName" : "Coverages",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:Coverages.code.coding.system",
        "path" : "Composition.section.code.coding.system",
        "patternUri" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS"
      },
      {
        "id" : "Composition.section:Coverages.code.coding.code",
        "path" : "Composition.section.code.coding.code",
        "min" : 1,
        "patternCode" : "COV"
      },
      {
        "id" : "Composition.section:Coverages.author",
        "path" : "Composition.section.author",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/KHOrganization"]
          }
        ]
      },
      {
        "id" : "Composition.section:Coverages.entry",
        "path" : "Composition.section.entry",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://elga.moped.at/StructureDefinition/MopedCoverage",
              "https://elga.moped.at/StructureDefinition/MopedCoverageSelbstzahler"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:VAERequests",
        "path" : "Composition.section",
        "sliceName" : "VAERequests",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Composition.section:VAERequests.code.coding.system",
        "path" : "Composition.section.code.coding.system",
        "patternUri" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS"
      },
      {
        "id" : "Composition.section:VAERequests.code.coding.code",
        "path" : "Composition.section.code.coding.code",
        "min" : 1,
        "patternCode" : "VAEReq"
      },
      {
        "id" : "Composition.section:VAERequests.author",
        "path" : "Composition.section.author",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/KHOrganization"]
          }
        ]
      },
      {
        "id" : "Composition.section:VAERequests.entry",
        "path" : "Composition.section.entry",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedVAERequest"]
          }
        ]
      },
      {
        "id" : "Composition.section:VAEResponses",
        "path" : "Composition.section",
        "sliceName" : "VAEResponses",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Composition.section:VAEResponses.code.coding.system",
        "path" : "Composition.section.code.coding.system",
        "patternUri" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS"
      },
      {
        "id" : "Composition.section:VAEResponses.code.coding.code",
        "path" : "Composition.section.code.coding.code",
        "min" : 1,
        "patternCode" : "VAEResp"
      },
      {
        "id" : "Composition.section:VAEResponses.author",
        "path" : "Composition.section.author",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/SVOrganization"]
          }
        ]
      },
      {
        "id" : "Composition.section:VAEResponses.entry",
        "path" : "Composition.section.entry",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedVAEResponse"]
          }
        ]
      },
      {
        "id" : "Composition.section:LKFRequests",
        "path" : "Composition.section",
        "sliceName" : "LKFRequests",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:LKFRequests.code.coding.system",
        "path" : "Composition.section.code.coding.system",
        "patternUri" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS"
      },
      {
        "id" : "Composition.section:LKFRequests.code.coding.code",
        "path" : "Composition.section.code.coding.code",
        "min" : 1,
        "patternCode" : "LKFReq"
      },
      {
        "id" : "Composition.section:LKFRequests.author",
        "path" : "Composition.section.author",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/KHOrganization"]
          }
        ]
      },
      {
        "id" : "Composition.section:LKFRequests.entry",
        "path" : "Composition.section.entry",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedLKFRequest"]
          }
        ]
      },
      {
        "id" : "Composition.section:LKFResponses",
        "path" : "Composition.section",
        "sliceName" : "LKFResponses",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:LKFResponses.code.coding.system",
        "path" : "Composition.section.code.coding.system",
        "patternUri" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS"
      },
      {
        "id" : "Composition.section:LKFResponses.code.coding.code",
        "path" : "Composition.section.code.coding.code",
        "min" : 1,
        "patternCode" : "LKFResp"
      },
      {
        "id" : "Composition.section:LKFResponses.author",
        "path" : "Composition.section.author",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/LGFOrganization"]
          }
        ]
      },
      {
        "id" : "Composition.section:LKFResponses.entry",
        "path" : "Composition.section.entry",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedLKFResponse"]
          }
        ]
      },
      {
        "id" : "Composition.section:ARKKostenInformation",
        "path" : "Composition.section",
        "sliceName" : "ARKKostenInformation",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:ARKKostenInformation.code.coding.system",
        "path" : "Composition.section.code.coding.system",
        "patternUri" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS"
      },
      {
        "id" : "Composition.section:ARKKostenInformation.code.coding.code",
        "path" : "Composition.section.code.coding.code",
        "min" : 1,
        "patternCode" : "ARKReq"
      },
      {
        "id" : "Composition.section:ARKKostenInformation.author",
        "path" : "Composition.section.author",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/KHOrganization"]
          }
        ]
      },
      {
        "id" : "Composition.section:ARKKostenInformation.entry",
        "path" : "Composition.section.entry",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedARKRequest"]
          }
        ]
      },
      {
        "id" : "Composition.section:ARKRueckmeldung",
        "path" : "Composition.section",
        "sliceName" : "ARKRueckmeldung",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:ARKRueckmeldung.code.coding.system",
        "path" : "Composition.section.code.coding.system",
        "patternUri" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS"
      },
      {
        "id" : "Composition.section:ARKRueckmeldung.code.coding.code",
        "path" : "Composition.section.code.coding.code",
        "min" : 1,
        "patternCode" : "ARKResp"
      },
      {
        "id" : "Composition.section:ARKRueckmeldung.author",
        "path" : "Composition.section.author",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/LGFOrganization"]
          }
        ]
      },
      {
        "id" : "Composition.section:ARKRueckmeldung.entry",
        "path" : "Composition.section.entry",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedARKResponse"]
          }
        ]
      },
      {
        "id" : "Composition.section:ARKStatusUpdate",
        "path" : "Composition.section",
        "sliceName" : "ARKStatusUpdate",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:ARKStatusUpdate.code.coding.system",
        "path" : "Composition.section.code.coding.system",
        "patternUri" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS"
      },
      {
        "id" : "Composition.section:ARKStatusUpdate.code.coding.code",
        "path" : "Composition.section.code.coding.code",
        "min" : 1,
        "patternCode" : "ARKPay"
      },
      {
        "id" : "Composition.section:ARKStatusUpdate.author",
        "path" : "Composition.section.author",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/LGFOrganization"]
          }
        ]
      },
      {
        "id" : "Composition.section:ARKStatusUpdate.entry",
        "path" : "Composition.section.entry",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://elga.moped.at/StructureDefinition/MopedARKStatusUpdate"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:Observations",
        "path" : "Composition.section",
        "sliceName" : "Observations",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:Observations.code.coding.system",
        "path" : "Composition.section.code.coding.system",
        "patternUri" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS"
      },
      {
        "id" : "Composition.section:Observations.code.coding.code",
        "path" : "Composition.section.code.coding.code",
        "min" : 1,
        "patternCode" : "OBS"
      },
      {
        "id" : "Composition.section:Observations.author",
        "path" : "Composition.section.author",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/KHOrganization"]
          }
        ]
      },
      {
        "id" : "Composition.section:Observations.entry",
        "path" : "Composition.section.entry",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation"]
          }
        ]
      },
      {
        "id" : "Composition.section:Hauptversicherter",
        "path" : "Composition.section",
        "sliceName" : "Hauptversicherter",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:Hauptversicherter.code.coding.system",
        "path" : "Composition.section.code.coding.system",
        "patternUri" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS"
      },
      {
        "id" : "Composition.section:Hauptversicherter.code.coding.code",
        "path" : "Composition.section.code.coding.code",
        "min" : 1,
        "patternCode" : "HAUPTV"
      },
      {
        "id" : "Composition.section:Hauptversicherter.author",
        "path" : "Composition.section.author",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/KHOrganization"]
          }
        ]
      },
      {
        "id" : "Composition.section:Hauptversicherter.entry",
        "path" : "Composition.section.entry",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://elga.moped.at/StructureDefinition/Hauptversicherter"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:Frageboegen",
        "path" : "Composition.section",
        "sliceName" : "Frageboegen",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:Frageboegen.code.coding.system",
        "path" : "Composition.section.code.coding.system",
        "patternUri" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS"
      },
      {
        "id" : "Composition.section:Frageboegen.code.coding.code",
        "path" : "Composition.section.code.coding.code",
        "min" : 1,
        "patternCode" : "QResp"
      },
      {
        "id" : "Composition.section:Frageboegen.author",
        "path" : "Composition.section.author",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/KHOrganization"]
          }
        ]
      },
      {
        "id" : "Composition.section:Frageboegen.entry",
        "path" : "Composition.section.entry",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://elga.moped.at/StructureDefinition/MopedQuestionnaireResponse"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:Kommunikation",
        "path" : "Composition.section",
        "sliceName" : "Kommunikation",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:Kommunikation.code.coding.system",
        "path" : "Composition.section.code.coding.system",
        "patternUri" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS"
      },
      {
        "id" : "Composition.section:Kommunikation.code.coding.code",
        "path" : "Composition.section.code.coding.code",
        "min" : 1,
        "patternCode" : "Comm"
      },
      {
        "id" : "Composition.section:Kommunikation.author",
        "path" : "Composition.section.author",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://elga.moped.at/StructureDefinition/KHOrganization",
              "https://elga.moped.at/StructureDefinition/SVOrganization",
              "https://elga.moped.at/StructureDefinition/LGFOrganization"
            ]
          }
        ]
      }
    ]
  }
}

```
