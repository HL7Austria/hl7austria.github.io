# ELGA.MOPED\MOPED ARKRequest - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED ARKRequest**

## Resource Profile: MOPED ARKRequest 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedARKRequest | *Version*:0.1.0 | |
| Draft as of 2025-12-19 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedARKRequest |

 
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
  "date" : "2025-12-19T13:11:40+00:00",
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
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedLGFActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.extension",
        "sliceName" : "DiagnoseKnoten",
        "short" : "LKF: Abrechnung – Knoten; KaOrg: LDF-Gruppe Teil 2",
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
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedLGFActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.extension",
        "sliceName" : "Beihilfenaequivalent",
        "short" : "KaOrg: Beihilfenäquivalent",
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
        "id" : "Claim.status",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedLGFActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.status"
      },
      {
        "id" : "Claim.type",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedLGFActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.type",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/MopedClaimTypeVS"
        }
      },
      {
        "id" : "Claim.type.coding",
        "path" : "Claim.type.coding",
        "patternCoding" : {
          "system" : "https://elga.moped.at/CodeSystem/MopedClaimTypeCS",
          "code" : "ARKREQ"
        }
      },
      {
        "id" : "Claim.subType",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedLGFActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.subType",
        "short" : "KaOrg: Kostenmeldung für (A/R/K); Kostenmeldung für Ausländerverrechnung, Regressangelegenheiten und Kosteninformation",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/KostenmeldungARKVS"
        }
      },
      {
        "id" : "Claim.use",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedLGFActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.use",
        "patternCode" : "claim"
      },
      {
        "id" : "Claim.patient",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.patient",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedPatient"]
          }
        ]
      },
      {
        "id" : "Claim.insurer",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
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
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
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
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedLGFActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
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
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedLGFActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
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
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
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
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedLGFActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.diagnosisRelatedGroup",
        "short" : "LKF: Abrechnung - Gruppe; KaOrg: LDF-Gruppe Teil 1",
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
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name",
            "valueString" : "Item"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedLGFActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.item",
        "sliceName" : "Leistungskomponente",
        "short" : "LKF: Leistungskomponente/Leistungspunkte; KaOrg: Leistungspunkte",
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
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name",
            "valueString" : "Item"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedLGFActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.item",
        "sliceName" : "Tageskomponente",
        "short" : "LKF: Tageskomponente/Kontaktpunkte; KaOrg: Kontaktpunkte",
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
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name",
            "valueString" : "Item"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedLGFActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.item",
        "sliceName" : "PunkteBelagsdauerausreisserUntenLeistungskomponente",
        "short" : "LKF: Punkte Belagsdauerausreißer nach unten – Leistungskomponente",
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
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name",
            "valueString" : "Item"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedLGFActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.item",
        "sliceName" : "PunkteBelagsdauerausreisserUntenTageskomponente",
        "short" : "LKF: Punkte Belagsdauerausreißer nach unten – Tageskomponente",
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
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name",
            "valueString" : "Item"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedLGFActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.item",
        "sliceName" : "ZusatzpunkteBelagsdauerausreisserNachOben",
        "short" : "LKF: Zusatzpunkte Belagsdauerausreißer nach oben; KaOrg: Zusatzpunkte Verweildauerausreißer oben",
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
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name",
            "valueString" : "Item"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedLGFActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.item",
        "sliceName" : "ZusatzpunkteIntensiv",
        "short" : "LKF: Zusatzpunkte Intensiv; KaOrg: Zusatzpunkte Intensiv",
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
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name",
            "valueString" : "Item"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedLGFActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.item",
        "sliceName" : "ZusatzpunkteMehrfachleistungen",
        "short" : "LKF: Zusatzpunkte Mehrfachleistungen; KaOrg: Zusatzpunkte Mehrleistungen",
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
        "short" : "LKF: Punkte spezieller Bereiche (tageweise); KaOrg: Punkte spezieller Bereich",
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
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name",
            "valueString" : "Item"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedLGFActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.item",
        "sliceName" : "Gesamtpunkte",
        "short" : "LKF: Punkte total; KaOrg: Punkte total",
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
        "short" : "KaOrg: LDF-Punktewert Netto",
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
        "short" : "KaOrg: LDF-Betrag Netto",
        "min" : 1
      },
      {
        "id" : "Claim.item:Patientenanteil",
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name",
            "valueString" : "Item"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedLGFActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
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
        "short" : "KaOrg: Patientenanteil für Angehörige (tägl. Satz) netto",
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
        "short" : "KaOrg: Patientenanteil netto",
        "min" : 1
      },
      {
        "id" : "Claim.total",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedLGFActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.total",
        "short" : "KaOrg: Forderungsbetrag für Ausländerverrechnung/Regress"
      }
    ]
  }
}

```
