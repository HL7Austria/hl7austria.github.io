# ELGA.MOPED\MOPED ARKRequest - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED ARKRequest**

## Resource Profile: MOPED ARKRequest 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedARKRequest | *Version*:0.1.0 | |
| Draft as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedARKRequest |

 
MOPED Profil der Claim Ressource für die Kostenmeldung für Ausländerverrechnung und Regresse. 

**Usages:**

* Use this Profile: [MOPED Melden Bundle LGF](StructureDefinition-MopedMeldenLGFBundle.md)
* Refer to this Profile: [MOPED ARKResponse](StructureDefinition-MopedARKResponse.md), [MOPED ARK Status Update - PaymentReconciliation](StructureDefinition-MopedARKStatusUpdate.md) and [MOPED Composition](StructureDefinition-MopedComposition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedARKRequest)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedARKRequest.csv), [Excel](StructureDefinition-MopedARKRequest.xlsx), [Schematron](StructureDefinition-MopedARKRequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedARKRequest",
  "url" : "https://elga.moped.at/StructureDefinition/MopedARKRequest",
  "version" : "0.1.0",
  "name" : "MopedARKRequest",
  "title" : "MOPED ARKRequest",
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
  "description" : "MOPED Profil der Claim Ressource für die Kostenmeldung für Ausländerverrechnung und Regresse.",
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
        "id" : "Claim",
        "path" : "Claim"
      },
      {
        "id" : "Claim.extension",
        "path" : "Claim.extension",
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
        "id" : "Claim.extension:DiagnoseKnoten",
        "path" : "Claim.extension",
        "sliceName" : "DiagnoseKnoten",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/moped-ext-diagnoseKnoten"
            ]
          }
        ]
      },
      {
        "id" : "Claim.extension:Beihilfenaequivalent",
        "path" : "Claim.extension",
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
        "id" : "Claim.subType",
        "path" : "Claim.subType",
        "short" : "Kostenmeldung für Ausländerverrechnung, Regressangelegenheiten und Kosteninformation",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/KostenmeldungARKVS"
        }
      },
      {
        "id" : "Claim.use",
        "path" : "Claim.use",
        "patternCode" : "claim"
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
        "min" : 1,
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
                "valueBoolean" : false
              }
            ],
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedLKFRequest"]
          }
        ]
      },
      {
        "id" : "Claim.related.relationship",
        "path" : "Claim.related.relationship",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/ex-relatedclaimrelationship",
              "code" : "associated"
            }
          ]
        }
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
        "id" : "Claim.diagnosisRelatedGroup",
        "path" : "Claim.diagnosisRelatedGroup",
        "short" : "\"Abrechnung - Gruppe:\" Dieses Datenfeld ist mit der Codenummer der zutreffenden Abrechnungsgruppe zu befüllen. Bei Datensätzen von stationären Krankenhausaufenthalten, die keiner leistungsorientier- ten Diagnosenfallgruppe zugeordnet werden, erfolgt ein Eintrag entsprechend der jeweiligen Aufnahmeart.",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/LKFAbrechnungsGruppeVS"
        }
      },
      {
        "id" : "Claim.item",
        "path" : "Claim.item",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "category.coding"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 3
      },
      {
        "id" : "Claim.item:Leistungskomponente",
        "path" : "Claim.item",
        "sliceName" : "Leistungskomponente",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Claim.item:Leistungskomponente.category",
        "path" : "Claim.item.category",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/MopedClaimItemCategoryVS"
        }
      },
      {
        "id" : "Claim.item:Leistungskomponente.category.coding",
        "path" : "Claim.item.category.coding",
        "min" : 1,
        "patternCoding" : {
          "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
          "code" : "LDFPLK"
        }
      },
      {
        "id" : "Claim.item:Leistungskomponente.quantity",
        "path" : "Claim.item.quantity",
        "short" : "Punkteanzahl",
        "min" : 1
      },
      {
        "id" : "Claim.item:Leistungskomponente.quantity.unit",
        "path" : "Claim.item.quantity.unit",
        "patternString" : "LKF Punkte"
      },
      {
        "id" : "Claim.item:Tageskomponente",
        "path" : "Claim.item",
        "sliceName" : "Tageskomponente",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Claim.item:Tageskomponente.category.coding",
        "path" : "Claim.item.category.coding",
        "min" : 1,
        "patternCoding" : {
          "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
          "code" : "LDFPTK"
        },
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/MopedClaimItemCategoryVS"
        }
      },
      {
        "id" : "Claim.item:Tageskomponente.quantity",
        "path" : "Claim.item.quantity",
        "short" : "Punkteanzahl",
        "min" : 1
      },
      {
        "id" : "Claim.item:Tageskomponente.quantity.value",
        "path" : "Claim.item.quantity.value",
        "min" : 1
      },
      {
        "id" : "Claim.item:Tageskomponente.quantity.unit",
        "path" : "Claim.item.quantity.unit",
        "patternString" : "LKF Punkte"
      },
      {
        "id" : "Claim.item:PunkteBelagsdauerausreisserUntenLeistungskomponente",
        "path" : "Claim.item",
        "sliceName" : "PunkteBelagsdauerausreisserUntenLeistungskomponente",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Claim.item:PunkteBelagsdauerausreisserUntenLeistungskomponente.category.coding",
        "path" : "Claim.item.category.coding",
        "min" : 1,
        "patternCoding" : {
          "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
          "code" : "SCULK"
        },
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/MopedClaimItemCategoryVS"
        }
      },
      {
        "id" : "Claim.item:PunkteBelagsdauerausreisserUntenLeistungskomponente.quantity",
        "path" : "Claim.item.quantity",
        "short" : "Punkteanzahl",
        "min" : 1
      },
      {
        "id" : "Claim.item:PunkteBelagsdauerausreisserUntenLeistungskomponente.quantity.value",
        "path" : "Claim.item.quantity.value",
        "min" : 1
      },
      {
        "id" : "Claim.item:PunkteBelagsdauerausreisserUntenLeistungskomponente.quantity.unit",
        "path" : "Claim.item.quantity.unit",
        "patternString" : "LKF Punkte"
      },
      {
        "id" : "Claim.item:PunkteBelagsdauerausreisserUntenTageskomponente",
        "path" : "Claim.item",
        "sliceName" : "PunkteBelagsdauerausreisserUntenTageskomponente",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Claim.item:PunkteBelagsdauerausreisserUntenTageskomponente.category.coding",
        "path" : "Claim.item.category.coding",
        "min" : 1,
        "patternCoding" : {
          "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
          "code" : "SCUTK"
        },
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/MopedClaimItemCategoryVS"
        }
      },
      {
        "id" : "Claim.item:PunkteBelagsdauerausreisserUntenTageskomponente.quantity",
        "path" : "Claim.item.quantity",
        "short" : "Punkteanzahl",
        "min" : 1
      },
      {
        "id" : "Claim.item:PunkteBelagsdauerausreisserUntenTageskomponente.quantity.value",
        "path" : "Claim.item.quantity.value",
        "min" : 1
      },
      {
        "id" : "Claim.item:PunkteBelagsdauerausreisserUntenTageskomponente.quantity.unit",
        "path" : "Claim.item.quantity.unit",
        "patternString" : "LKF Punkte"
      },
      {
        "id" : "Claim.item:ZusatzpunkteBelagsdauerausreisserNachOben",
        "path" : "Claim.item",
        "sliceName" : "ZusatzpunkteBelagsdauerausreisserNachOben",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Claim.item:ZusatzpunkteBelagsdauerausreisserNachOben.category.coding",
        "path" : "Claim.item.category.coding",
        "min" : 1,
        "patternCoding" : {
          "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
          "code" : "BDZU"
        },
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/MopedClaimItemCategoryVS"
        }
      },
      {
        "id" : "Claim.item:ZusatzpunkteBelagsdauerausreisserNachOben.quantity",
        "path" : "Claim.item.quantity",
        "short" : "Punkteanzahl",
        "min" : 1
      },
      {
        "id" : "Claim.item:ZusatzpunkteBelagsdauerausreisserNachOben.quantity.value",
        "path" : "Claim.item.quantity.value",
        "min" : 1
      },
      {
        "id" : "Claim.item:ZusatzpunkteBelagsdauerausreisserNachOben.quantity.unit",
        "path" : "Claim.item.quantity.unit",
        "patternString" : "LKF Punkte"
      },
      {
        "id" : "Claim.item:ZusatzpunkteIntensiv",
        "path" : "Claim.item",
        "sliceName" : "ZusatzpunkteIntensiv",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Claim.item:ZusatzpunkteIntensiv.category.coding",
        "path" : "Claim.item.category.coding",
        "min" : 1,
        "patternCoding" : {
          "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
          "code" : "INTZU"
        },
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/MopedClaimItemCategoryVS"
        }
      },
      {
        "id" : "Claim.item:ZusatzpunkteIntensiv.quantity",
        "path" : "Claim.item.quantity",
        "short" : "Punkteanzahl",
        "min" : 1
      },
      {
        "id" : "Claim.item:ZusatzpunkteIntensiv.quantity.value",
        "path" : "Claim.item.quantity.value",
        "min" : 1
      },
      {
        "id" : "Claim.item:ZusatzpunkteIntensiv.quantity.unit",
        "path" : "Claim.item.quantity.unit",
        "patternString" : "LKF Punkte"
      },
      {
        "id" : "Claim.item:ZusatzpunkteMehrfachleistungen",
        "path" : "Claim.item",
        "sliceName" : "ZusatzpunkteMehrfachleistungen",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Claim.item:ZusatzpunkteMehrfachleistungen.category.coding",
        "path" : "Claim.item.category.coding",
        "min" : 1,
        "patternCoding" : {
          "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
          "code" : "MELZU"
        },
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/MopedClaimItemCategoryVS"
        }
      },
      {
        "id" : "Claim.item:ZusatzpunkteMehrfachleistungen.quantity",
        "path" : "Claim.item.quantity",
        "short" : "Punkteanzahl",
        "min" : 1
      },
      {
        "id" : "Claim.item:ZusatzpunkteMehrfachleistungen.quantity.value",
        "path" : "Claim.item.quantity.value",
        "min" : 1
      },
      {
        "id" : "Claim.item:ZusatzpunkteMehrfachleistungen.quantity.unit",
        "path" : "Claim.item.quantity.unit",
        "patternString" : "LKF Punkte"
      },
      {
        "id" : "Claim.item:PunkteSpeziellerBereicheTageweise",
        "path" : "Claim.item",
        "sliceName" : "PunkteSpeziellerBereicheTageweise",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Claim.item:PunkteSpeziellerBereicheTageweise.category.coding",
        "path" : "Claim.item.category.coding",
        "min" : 1,
        "patternCoding" : {
          "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
          "code" : "SCSPEZ"
        },
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/MopedClaimItemCategoryVS"
        }
      },
      {
        "id" : "Claim.item:PunkteSpeziellerBereicheTageweise.quantity",
        "path" : "Claim.item.quantity",
        "short" : "Punkteanzahl",
        "min" : 1
      },
      {
        "id" : "Claim.item:PunkteSpeziellerBereicheTageweise.quantity.value",
        "path" : "Claim.item.quantity.value",
        "min" : 1
      },
      {
        "id" : "Claim.item:PunkteSpeziellerBereicheTageweise.quantity.unit",
        "path" : "Claim.item.quantity.unit",
        "patternString" : "LKF Punkte"
      },
      {
        "id" : "Claim.item:Gesamtpunkte",
        "path" : "Claim.item",
        "sliceName" : "Gesamtpunkte",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Claim.item:Gesamtpunkte.category.coding",
        "path" : "Claim.item.category.coding",
        "min" : 1,
        "patternCoding" : {
          "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
          "code" : "SCGES"
        },
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/MopedClaimItemCategoryVS"
        }
      },
      {
        "id" : "Claim.item:Gesamtpunkte.quantity",
        "path" : "Claim.item.quantity",
        "short" : "Punkteanzahl",
        "min" : 1
      },
      {
        "id" : "Claim.item:Gesamtpunkte.quantity.value",
        "path" : "Claim.item.quantity.value",
        "min" : 1
      },
      {
        "id" : "Claim.item:Gesamtpunkte.quantity.unit",
        "path" : "Claim.item.quantity.unit",
        "patternString" : "LKF Punkte"
      },
      {
        "id" : "Claim.item:Gesamtpunkte.unitPrice",
        "path" : "Claim.item.unitPrice",
        "short" : "LDF-Punktewert Netto",
        "min" : 1
      },
      {
        "id" : "Claim.item:Gesamtpunkte.factor",
        "path" : "Claim.item.factor",
        "patternDecimal" : 1
      },
      {
        "id" : "Claim.item:Gesamtpunkte.net",
        "path" : "Claim.item.net",
        "short" : "LDF-Betrag Netto",
        "min" : 1
      },
      {
        "id" : "Claim.item:Patientenanteil",
        "path" : "Claim.item",
        "sliceName" : "Patientenanteil",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Claim.item:Patientenanteil.category.coding",
        "path" : "Claim.item.category.coding",
        "min" : 1,
        "patternCoding" : {
          "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
          "code" : "Patientenanteil"
        },
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/MopedClaimItemCategoryVS"
        }
      },
      {
        "id" : "Claim.item:Patientenanteil.unitPrice",
        "path" : "Claim.item.unitPrice",
        "short" : "Patientenanteil für Angehörige (tägl. Satz) netto",
        "min" : 1
      },
      {
        "id" : "Claim.item:Patientenanteil.factor",
        "path" : "Claim.item.factor",
        "patternDecimal" : -1
      },
      {
        "id" : "Claim.item:Patientenanteil.net",
        "path" : "Claim.item.net",
        "short" : "Patientenanteil netto",
        "min" : 1
      },
      {
        "id" : "Claim.total",
        "path" : "Claim.total",
        "short" : "Forderungsbetrag für Ausländerverrechnung/Regresse"
      }
    ]
  }
}

```
