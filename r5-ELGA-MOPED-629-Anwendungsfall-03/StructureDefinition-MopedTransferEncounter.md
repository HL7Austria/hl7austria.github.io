# ELGA.MOPED\MOPED TransferEncounter - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED TransferEncounter**

## Resource Profile: MOPED TransferEncounter 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedTransferEncounter | *Version*:0.1.0 | |
| Draft as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedTransferEncounter |

 
MOPED Profil der Encounter Ressource für die Verlegung innerhalb oder zwischen Krankenanstalten 

**Usages:**

* Derived from this Profile: [MOPED TransferEncounter Ambulant](StructureDefinition-MopedTransferEncounterA.md) and [MOPED TransferEncounter Stationär](StructureDefinition-MopedTransferEncounterS.md)
* Use this Profile: [MOPED Update Bundle KH](StructureDefinition-MopedUpdateBundleKH.md)
* Refer to this Profile: [MOPED LKFRequest](StructureDefinition-MopedLKFRequest.md) and [MOPED VAERequest](StructureDefinition-MopedVAERequest.md)
* Examples for this Profile: [Encounter/PJ1TransferEncounter1](Encounter-PJ1TransferEncounter1.md), [Encounter/PJ1TransferEncounter1Aufnahme](Encounter-PJ1TransferEncounter1Aufnahme.md), [Encounter/PJ2TransferEncounter1](Encounter-PJ2TransferEncounter1.md), [Encounter/PJ2TransferEncounter2](Encounter-PJ2TransferEncounter2.md)...Show 5 more,[Encounter/PJ2TransferEncounter3](Encounter-PJ2TransferEncounter3.md),[Encounter/PJ2TransferEncounter4](Encounter-PJ2TransferEncounter4.md),[Encounter/PJ2TransferEncounter5](Encounter-PJ2TransferEncounter5.md),[Encounter/TransferEncounter42.1](Encounter-TransferEncounter42.1.md)and[Encounter/TransferEncounter42.2](Encounter-TransferEncounter42.2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedTransferEncounter)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedTransferEncounter.csv), [Excel](StructureDefinition-MopedTransferEncounter.xlsx), [Schematron](StructureDefinition-MopedTransferEncounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedTransferEncounter",
  "url" : "https://elga.moped.at/StructureDefinition/MopedTransferEncounter",
  "version" : "0.1.0",
  "name" : "MopedTransferEncounter",
  "title" : "MOPED TransferEncounter",
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
  "description" : "MOPED Profil der Encounter Ressource für die Verlegung innerhalb oder zwischen Krankenanstalten",
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 V2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Encounter.type",
        "path" : "Encounter.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://elga.moped.at/CodeSystem/MopedEncounterTypesCS",
              "code" : "TENC"
            }
          ]
        }
      },
      {
        "id" : "Encounter.subject",
        "path" : "Encounter.subject",
        "min" : 1,
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
        "id" : "Encounter.partOf",
        "path" : "Encounter.partOf",
        "min" : 1,
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
                "valueBoolean" : true
              }
            ],
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedEncounter"]
          }
        ]
      },
      {
        "id" : "Encounter.serviceProvider",
        "path" : "Encounter.serviceProvider",
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
        "id" : "Encounter.actualPeriod",
        "path" : "Encounter.actualPeriod",
        "short" : "Zugangs- und Abgangsdatum"
      },
      {
        "id" : "Encounter.actualPeriod.start",
        "path" : "Encounter.actualPeriod.start",
        "min" : 1
      },
      {
        "id" : "Encounter.admission.extension",
        "path" : "Encounter.admission.extension",
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
        "id" : "Encounter.admission.extension:Altersgruppe",
        "path" : "Encounter.admission.extension",
        "sliceName" : "Altersgruppe",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/moped-ext-altersgruppe"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.admission.extension:Altersgruppe.extension",
        "path" : "Encounter.admission.extension.extension",
        "min" : 1
      },
      {
        "id" : "Encounter.admission.extension:Altersgruppe.extension:beiZugang",
        "path" : "Encounter.admission.extension.extension",
        "sliceName" : "beiZugang",
        "min" : 1
      },
      {
        "id" : "Encounter.admission.extension:Altersgruppe.extension:beiZugang.value[x]",
        "path" : "Encounter.admission.extension.extension.value[x]",
        "min" : 1
      }
    ]
  }
}

```
