# ELGA.MOPED\MOPED Update Bundle KH - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Update Bundle KH**

## Resource Profile: MOPED Update Bundle KH 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedUpdateBundleKH | *Version*:0.1.0 | |
| Draft as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedUpdateBundleKH |

 
Bundle für die Input-Ressourcen beim Update von Informationen zu einem Fall 

**Usages:**

* Derived from this Profile: [MOPED Aufnehmen Bundle KH](StructureDefinition-MopedAufnehmenBundleKH.md) and [MOPED Entlassen Bundle KH](StructureDefinition-MopedEntlassenBundle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedUpdateBundleKH)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedUpdateBundleKH.csv), [Excel](StructureDefinition-MopedUpdateBundleKH.xlsx), [Schematron](StructureDefinition-MopedUpdateBundleKH.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedUpdateBundleKH",
  "url" : "https://elga.moped.at/StructureDefinition/MopedUpdateBundleKH",
  "version" : "0.1.0",
  "name" : "MopedUpdateBundleKH",
  "title" : "MOPED Update Bundle KH",
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
  "description" : "Bundle für die Input-Ressourcen beim Update von Informationen zu einem Fall",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
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
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    }
  ],
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
        "id" : "Bundle.implicitRules",
        "path" : "Bundle.implicitRules",
        "max" : "0"
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
            },
            {
              "type" : "profile",
              "path" : "resource.resolve()"
            }
          ],
          "rules" : "closed"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry:Aufenthalt",
        "path" : "Bundle.entry",
        "sliceName" : "Aufenthalt",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:Aufenthalt.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Encounter",
            "profile" : ["https://elga.moped.at/StructureDefinition/MopedEncounter"]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Aufenthalt.request.method",
        "path" : "Bundle.entry.request.method",
        "short" : "PUT",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbUpdateOnlyVS"
        }
      },
      {
        "id" : "Bundle.entry:Patient",
        "path" : "Bundle.entry",
        "sliceName" : "Patient",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:Patient.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Patient",
            "profile" : [
              "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-patient"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Patient.request.method",
        "path" : "Bundle.entry.request.method",
        "short" : "PUT",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbUpdateOnlyVS"
        }
      },
      {
        "id" : "Bundle.entry:Diagnosen",
        "path" : "Bundle.entry",
        "sliceName" : "Diagnosen",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:Diagnosen.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Condition",
            "profile" : ["https://elga.moped.at/StructureDefinition/MopedCondition"]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Diagnosen.request.method",
        "path" : "Bundle.entry.request.method",
        "short" : "POST | PUT | DELETE",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbInsertUpdateDeleteVS"
        }
      },
      {
        "id" : "Bundle.entry:Leistungen",
        "path" : "Bundle.entry",
        "sliceName" : "Leistungen",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:Leistungen.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Procedure",
            "profile" : ["https://elga.moped.at/StructureDefinition/MopedProcedure"]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Leistungen.request.method",
        "path" : "Bundle.entry.request.method",
        "short" : "POST | PUT | DELETE",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbInsertUpdateDeleteVS"
        }
      },
      {
        "id" : "Bundle.entry:Observations",
        "path" : "Bundle.entry",
        "sliceName" : "Observations",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:Observations.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation"
          }
        ]
      },
      {
        "id" : "Bundle.entry:Observations.request.method",
        "path" : "Bundle.entry.request.method",
        "short" : "POST | PUT | DELETE",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbInsertUpdateDeleteVS"
        }
      },
      {
        "id" : "Bundle.entry:Verlegungen",
        "path" : "Bundle.entry",
        "sliceName" : "Verlegungen",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:Verlegungen.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Encounter",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/MopedTransferEncounter"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Verlegungen.request.method",
        "path" : "Bundle.entry.request.method",
        "short" : "POST | PUT | DELETE",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbInsertUpdateDeleteVS"
        }
      },
      {
        "id" : "Bundle.entry:Coverage",
        "path" : "Bundle.entry",
        "sliceName" : "Coverage",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:Coverage.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Coverage",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/MopedCoverage",
              "https://elga.moped.at/StructureDefinition/MopedCoverageSelbstzahler"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Coverage.request.method",
        "path" : "Bundle.entry.request.method",
        "short" : "POST | PUT | DELETE",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbInsertUpdateDeleteVS"
        }
      },
      {
        "id" : "Bundle.entry:Hauptversicherter",
        "path" : "Bundle.entry",
        "sliceName" : "Hauptversicherter",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:Hauptversicherter.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "RelatedPerson",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/Hauptversicherter"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Hauptversicherter.request.method",
        "path" : "Bundle.entry.request.method",
        "short" : "POST | PUT | DELETE",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbInsertUpdateDeleteVS"
        }
      },
      {
        "id" : "Bundle.entry:UeberweisendeOrganization",
        "path" : "Bundle.entry",
        "sliceName" : "UeberweisendeOrganization",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:UeberweisendeOrganization.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Organization",
            "profile" : [
              "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-organization"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:UeberweisendeOrganization.request.method",
        "path" : "Bundle.entry.request.method",
        "short" : "POST | PUT | DELETE",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbInsertUpdateDeleteVS"
        }
      },
      {
        "id" : "Bundle.entry:Frageboegen",
        "path" : "Bundle.entry",
        "sliceName" : "Frageboegen",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:Frageboegen.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "QuestionnaireResponse",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/MopedQuestionnaireResponse"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Frageboegen.request.method",
        "path" : "Bundle.entry.request.method",
        "short" : "POST | PUT | DELETE",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbInsertUpdateDeleteVS"
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
        "type" : [
          {
            "code" : "CommunicationRequest"
          }
        ]
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
        "type" : [
          {
            "code" : "CommunicationRequest"
          }
        ]
      },
      {
        "id" : "Bundle.entry:CommunicationRequest.request.method",
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
