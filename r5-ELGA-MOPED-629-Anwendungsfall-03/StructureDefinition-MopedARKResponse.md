# ELGA.MOPED\MOPED ARKResponse - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED ARKResponse**

## Resource Profile: MOPED ARKResponse 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedARKResponse | *Version*:0.1.0 | |
| Draft as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedARKResponse |

 
MOPED Profil der ClaimResponse Ressource für die Rückmeldung der SV für Ausländerverrechnung und Regresse. 

**Usages:**

* Use this Profile: [MOPED Antworten Bundle SV](StructureDefinition-MopedAntwortenBundleSV.md)
* Refer to this Profile: [MOPED Composition](StructureDefinition-MopedComposition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedARKResponse)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedARKResponse.csv), [Excel](StructureDefinition-MopedARKResponse.xlsx), [Schematron](StructureDefinition-MopedARKResponse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedARKResponse",
  "url" : "https://elga.moped.at/StructureDefinition/MopedARKResponse",
  "version" : "0.1.0",
  "name" : "MopedARKResponse",
  "title" : "MOPED ARKResponse",
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
  "description" : "MOPED Profil der ClaimResponse Ressource für die Rückmeldung der SV für Ausländerverrechnung und Regresse.",
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
        "id" : "ClaimResponse",
        "path" : "ClaimResponse"
      },
      {
        "id" : "ClaimResponse.extension",
        "path" : "ClaimResponse.extension",
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
        "id" : "ClaimResponse.extension:AbrechnungsartAuslaenderverrechnung",
        "path" : "ClaimResponse.extension",
        "sliceName" : "AbrechnungsartAuslaenderverrechnung",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/moped-ext-AbrechnungsartAuslaenderverrechnung"
            ]
          }
        ]
      },
      {
        "id" : "ClaimResponse.extension:Betreuungsschein",
        "path" : "ClaimResponse.extension",
        "sliceName" : "Betreuungsschein",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/moped-ext-Betreuungsschein"
            ]
          }
        ]
      },
      {
        "id" : "ClaimResponse.extension:SupportingInfo",
        "path" : "ClaimResponse.extension",
        "sliceName" : "SupportingInfo",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/MopedSupportingInfo"
            ]
          }
        ]
      },
      {
        "id" : "ClaimResponse.extension:MopedSupportingInfoFREMDRE",
        "path" : "ClaimResponse.extension",
        "sliceName" : "MopedSupportingInfoFREMDRE",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/MopedSupportingInfoFREMDRE"
            ]
          }
        ]
      },
      {
        "id" : "ClaimResponse.extension:MopedSupportingInfoOEGKELBNR",
        "path" : "ClaimResponse.extension",
        "sliceName" : "MopedSupportingInfoOEGKELBNR",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/MopedSupportingInfoOEGKELBNR"
            ]
          }
        ]
      },
      {
        "id" : "ClaimResponse.extension:Beihilfenaequivalent",
        "path" : "ClaimResponse.extension",
        "sliceName" : "Beihilfenaequivalent",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/moped-ext-Beihilfenaequivalent"
            ]
          }
        ]
      },
      {
        "id" : "ClaimResponse.type",
        "path" : "ClaimResponse.type",
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
        "id" : "ClaimResponse.subType",
        "path" : "ClaimResponse.subType",
        "short" : "Kostenmeldung für Ausländerverrechnung, Regressangelegenheiten und Kosteninformation",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/KostenmeldungARKVS"
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
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedARKRequest"]
          }
        ]
      },
      {
        "id" : "ClaimResponse.addItem",
        "path" : "ClaimResponse.addItem",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "extension('https://elga.moped.at/StructureDefinition/moped-ext-AddItemCategory').value.coding"
            }
          ],
          "ordered" : true,
          "rules" : "open"
        }
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
      },
      {
        "id" : "ClaimResponse.addItem:Patientenanteil",
        "path" : "ClaimResponse.addItem",
        "sliceName" : "Patientenanteil",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "ClaimResponse.addItem:Patientenanteil.extension:AddItemCategory",
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
      },
      {
        "id" : "ClaimResponse.addItem:Patientenanteil.extension:AddItemCategory.value[x].coding",
        "path" : "ClaimResponse.addItem.extension.value[x].coding",
        "patternCoding" : {
          "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
          "code" : "Patientenanteil"
        }
      },
      {
        "id" : "ClaimResponse.addItem:Patientenanteil.unitPrice",
        "path" : "ClaimResponse.addItem.unitPrice",
        "short" : "Patientenanteil für Angehörige (tägl. Satz) netto",
        "min" : 1
      },
      {
        "id" : "ClaimResponse.addItem:Patientenanteil.factor",
        "path" : "ClaimResponse.addItem.factor",
        "patternDecimal" : -1
      },
      {
        "id" : "ClaimResponse.addItem:Patientenanteil.net",
        "path" : "ClaimResponse.addItem.net",
        "short" : "Patientenanteil netto",
        "min" : 1
      },
      {
        "id" : "ClaimResponse.total",
        "path" : "ClaimResponse.total",
        "short" : "Forderungsbetrag für Ausländerverrechnung/Regresse"
      }
    ]
  }
}

```
