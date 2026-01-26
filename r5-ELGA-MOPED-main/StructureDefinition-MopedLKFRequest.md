# ELGA.MOPED\MOPED LKFRequest - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED LKFRequest**

## Resource Profile: MOPED LKFRequest 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedLKFRequest | *Version*:0.1.0 | |
| Draft as of 2026-01-26 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedLKFRequest |

 
MOPED Profil der Claim Ressource für die Leistungsabrechnungsanfrage. 

**Usages:**

* Use this Profile: [MOPED Abrechnen Bundle KH](StructureDefinition-MopedAbrechnenBundleKH.md)
* Refer to this Profile: [MOPED ARKRequest](StructureDefinition-MopedARKRequest.md), [MOPED Composition](StructureDefinition-MopedComposition.md), [MOPED LKFRequest](StructureDefinition-MopedLKFRequest.md) and [MOPED LKFResponse](StructureDefinition-MopedLKFResponse.md)
* Examples for this Profile: [Claim/LKFRequest42](Claim-LKFRequest42.md), [Claim/PJ1LKFRequest1](Claim-PJ1LKFRequest1.md) and [Claim/PJ2LKFRequest1](Claim-PJ2LKFRequest1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedLKFRequest)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedLKFRequest.csv), [Excel](StructureDefinition-MopedLKFRequest.xlsx), [Schematron](StructureDefinition-MopedLKFRequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedLKFRequest",
  "url" : "https://elga.moped.at/StructureDefinition/MopedLKFRequest",
  "version" : "0.1.0",
  "name" : "MopedLKFRequest",
  "title" : "MOPED LKFRequest",
  "status" : "draft",
  "date" : "2026-01-26T07:23:42+00:00",
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
  "description" : "MOPED Profil der Claim Ressource für die Leistungsabrechnungsanfrage.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "LKF",
      "uri" : "https://elga.moped.at/mapping/LKF",
      "name" : "LKF"
    },
    {
      "identity" : "KaOrg",
      "uri" : "https://elga.moped.at/mapping/KaOrg",
      "name" : "KaOrg"
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
        },
        "min" : 2
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
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.extension",
        "sliceName" : "DiagnoseKnoten",
        "short" : "LKF: Fondsrelevanz",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/moped-ext-diagnoseKnoten"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "LKF",
            "map" : "Abrechnung – Knoten"
          }
        ]
      },
      {
        "id" : "Claim.extension:FehlerWarnung",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.extension",
        "sliceName" : "FehlerWarnung",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/moped-ext-fehlerWarnung"
            ]
          }
        ]
      },
      {
        "id" : "Claim.extension:Fondsrelevanz",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.extension",
        "sliceName" : "Fondsrelevanz",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/moped-ext-fondsrelevanz"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "LKF",
            "map" : "Fondsrelevanz"
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
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
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
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
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
        "fixedCoding" : {
          "system" : "https://elga.moped.at/CodeSystem/MopedClaimTypeCS",
          "code" : "LKFREQ"
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
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.subType",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/MopedLKFRequestSubTypeVS"
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
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
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
        "id" : "Claim.created",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.created"
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
        "id" : "Claim.related",
        "path" : "Claim.related",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "claim.resolve().type"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Claim.related:zugehoerigeVAE",
        "path" : "Claim.related",
        "sliceName" : "zugehoerigeVAE",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Claim.related:zugehoerigeVAE.claim",
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
        "id" : "Claim.related:zugehoerigeVAE.relationship",
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
        "path" : "Claim.related.relationship",
        "min" : 1,
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
        "id" : "Claim.related:vorherigerLKFRequest",
        "path" : "Claim.related",
        "sliceName" : "vorherigerLKFRequest",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Claim.related:vorherigerLKFRequest.claim",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
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
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedLKFRequest"]
          }
        ]
      },
      {
        "id" : "Claim.related:vorherigerLKFRequest.relationship",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.related.relationship",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/ex-relatedclaimrelationship",
              "code" : "prior"
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
              "type" : "value",
              "path" : "resolve().type"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 2
      },
      {
        "id" : "Claim.encounter:MopedEncounter",
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
        "sliceName" : "TransferEncounter",
        "short" : "Informationen zu Verlegungen innerhalb oder zwischen Krankenanstalten",
        "min" : 1,
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
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.diagnosisRelatedGroup",
        "short" : "LKF: Abrechnung – Gruppe",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/LKFAbrechnungsGruppeVS"
        },
        "mapping" : [
          {
            "identity" : "LKF",
            "map" : "Abrechnung – Gruppe"
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
        "min" : 3
      },
      {
        "id" : "Claim.supportingInfo:Plausibilitaetskennzeichen",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.supportingInfo",
        "sliceName" : "Plausibilitaetskennzeichen",
        "short" : "LKF: Plausibilitätskennzeichen; Dieses Datenfeld enthält eine Kennzeichnung als Ergebnis der vom Gesundheitsministerium vorgegebenen Plausibilitätsprüfung.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Claim.supportingInfo:Plausibilitaetskennzeichen.category",
        "path" : "Claim.supportingInfo.category",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS",
              "code" : "PLAUS"
            }
          ]
        }
      },
      {
        "id" : "Claim.supportingInfo:Plausibilitaetskennzeichen.value[x]",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.supportingInfo.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "mapping" : [
          {
            "identity" : "LKF",
            "map" : "Plausibilitätskennzeichen"
          }
        ]
      },
      {
        "id" : "Claim.supportingInfo:EndgueltigeMeldung",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.supportingInfo",
        "sliceName" : "EndgueltigeMeldung",
        "short" : "Feld, welches angibt, ob es sich um die vorläufige oder endgültige Meldung handelt.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Claim.supportingInfo:EndgueltigeMeldung.category",
        "path" : "Claim.supportingInfo.category",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS",
              "code" : "ENDG"
            }
          ]
        }
      },
      {
        "id" : "Claim.supportingInfo:EndgueltigeMeldung.value[x]",
        "path" : "Claim.supportingInfo.value[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Claim.supportingInfo:XDokDevice",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.supportingInfo",
        "sliceName" : "XDokDevice",
        "short" : "Feld, welches die XDok Version angibt die zum Scoring verwendet wurde.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Claim.supportingInfo:XDokDevice.category",
        "path" : "Claim.supportingInfo.category",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS",
              "code" : "DEVX"
            }
          ]
        }
      },
      {
        "id" : "Claim.supportingInfo:XDokDevice.value[x]",
        "path" : "Claim.supportingInfo.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedDeviceXDok"]
          }
        ]
      },
      {
        "id" : "Claim.diagnosis.diagnosis[x]",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.diagnosis.diagnosis[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedCondition"]
          }
        ]
      },
      {
        "id" : "Claim.diagnosis.onAdmission",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.diagnosis.onAdmission",
        "short" : "LKF: Diagnose – im stationären Aufenthalt erworben; Gibt an ob die Diagnose bereits bei Aufnahme in den stationären Aufenthalt vorhanden war",
        "mapping" : [
          {
            "identity" : "LKF",
            "map" : "Diagnose – im stationären Aufenthalt erworben"
          }
        ]
      },
      {
        "id" : "Claim.procedure.extension",
        "path" : "Claim.procedure.extension",
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
        "id" : "Claim.procedure.extension:AbrechnungsRelevanz",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.procedure.extension",
        "sliceName" : "AbrechnungsRelevanz",
        "short" : "LKF: Medizinische Leistung – Abrechnungsrelevanz",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/moped-ext-AbrechnungsRelevanz"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "LKF",
            "map" : "Medizinische Leistung – Abrechnungsrelevanz"
          }
        ]
      },
      {
        "id" : "Claim.procedure.procedure[x]",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.procedure.procedure[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedProcedure"]
          }
        ]
      },
      {
        "id" : "Claim.insurance.coverage",
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
        "path" : "Claim.insurance.coverage",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedCoverage"]
          }
        ]
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
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
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
        "min" : 1
      },
      {
        "id" : "Claim.item:Leistungskomponente.quantity.value",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.item.quantity.value",
        "short" : "LKF: Leistungskomponente/Leistungspunkte",
        "min" : 1,
        "mapping" : [
          {
            "identity" : "LKF",
            "map" : "Leistungskomponente/Leistungspunkte"
          }
        ]
      },
      {
        "id" : "Claim.item:Leistungskomponente.quantity.unit",
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable",
            "valueBoolean" : true
          },
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable",
            "valueBoolean" : true
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
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
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
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
        "min" : 1
      },
      {
        "id" : "Claim.item:Tageskomponente.quantity.value",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.item.quantity.value",
        "short" : "LKF: Tageskomponente/Kontaktpunkte",
        "min" : 1,
        "mapping" : [
          {
            "identity" : "LKF",
            "map" : "Tageskomponente/Kontaktpunkte"
          }
        ]
      },
      {
        "id" : "Claim.item:Tageskomponente.quantity.unit",
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable",
            "valueBoolean" : true
          },
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable",
            "valueBoolean" : true
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
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
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
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
        "min" : 1
      },
      {
        "id" : "Claim.item:PunkteBelagsdauerausreisserUntenLeistungskomponente.quantity.value",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.item.quantity.value",
        "short" : "LKF: Punkte Belagsdauerausreißer nach unten – Leistungskomponente",
        "min" : 1,
        "mapping" : [
          {
            "identity" : "LKF",
            "map" : "Punkte Belagsdauerausreißer nach unten – Leistungskomponente"
          }
        ]
      },
      {
        "id" : "Claim.item:PunkteBelagsdauerausreisserUntenLeistungskomponente.quantity.unit",
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable",
            "valueBoolean" : true
          },
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable",
            "valueBoolean" : true
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
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
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
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
        "min" : 1
      },
      {
        "id" : "Claim.item:PunkteBelagsdauerausreisserUntenTageskomponente.quantity.value",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.item.quantity.value",
        "short" : "LKF: Punkte Belagsdauerausreißer nach unten – Tageskomponente",
        "min" : 1,
        "mapping" : [
          {
            "identity" : "LKF",
            "map" : "Punkte Belagsdauerausreißer nach unten – Tageskomponente"
          }
        ]
      },
      {
        "id" : "Claim.item:PunkteBelagsdauerausreisserUntenTageskomponente.quantity.unit",
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable",
            "valueBoolean" : true
          },
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable",
            "valueBoolean" : true
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
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
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
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
        "min" : 1
      },
      {
        "id" : "Claim.item:ZusatzpunkteBelagsdauerausreisserNachOben.quantity.value",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.item.quantity.value",
        "short" : "LKF: Zusatzpunkte Belagsdauerausreißer nach oben",
        "min" : 1,
        "mapping" : [
          {
            "identity" : "LKF",
            "map" : "Zusatzpunkte Belagsdauerausreißer nach oben"
          }
        ]
      },
      {
        "id" : "Claim.item:ZusatzpunkteBelagsdauerausreisserNachOben.quantity.unit",
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable",
            "valueBoolean" : true
          },
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable",
            "valueBoolean" : true
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
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
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
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
        "min" : 1
      },
      {
        "id" : "Claim.item:ZusatzpunkteIntensiv.quantity.value",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.item.quantity.value",
        "short" : "LKF: Zusatzpunkte Intensiv",
        "min" : 1,
        "mapping" : [
          {
            "identity" : "LKF",
            "map" : "Zusatzpunkte Intensiv"
          }
        ]
      },
      {
        "id" : "Claim.item:ZusatzpunkteIntensiv.quantity.unit",
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable",
            "valueBoolean" : true
          },
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable",
            "valueBoolean" : true
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
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
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
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
        "min" : 1
      },
      {
        "id" : "Claim.item:ZusatzpunkteMehrfachleistungen.quantity.value",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.item.quantity.value",
        "short" : "LKF: Zusatzpunkte Mehrfachleistungen",
        "min" : 1,
        "mapping" : [
          {
            "identity" : "LKF",
            "map" : "Zusatzpunkte Mehrfachleistungen"
          }
        ]
      },
      {
        "id" : "Claim.item:ZusatzpunkteMehrfachleistungen.quantity.unit",
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable",
            "valueBoolean" : true
          },
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable",
            "valueBoolean" : true
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
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
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
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
        "min" : 1
      },
      {
        "id" : "Claim.item:PunkteSpeziellerBereicheTageweise.quantity.value",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.item.quantity.value",
        "short" : "LKF: Punkte spezieller Bereiche (tageweise)",
        "min" : 1,
        "mapping" : [
          {
            "identity" : "LKF",
            "map" : "Punkte spezieller Bereiche (tageweise)"
          }
        ]
      },
      {
        "id" : "Claim.item:PunkteSpeziellerBereicheTageweise.quantity.unit",
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable",
            "valueBoolean" : true
          },
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable",
            "valueBoolean" : true
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
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
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
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
        "min" : 1
      },
      {
        "id" : "Claim.item:Gesamtpunkte.quantity.value",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.item.quantity.value",
        "short" : "LKF: Punkte total",
        "min" : 1,
        "mapping" : [
          {
            "identity" : "LKF",
            "map" : "Punkte total"
          }
        ]
      },
      {
        "id" : "Claim.item:Gesamtpunkte.quantity.unit",
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable",
            "valueBoolean" : true
          },
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable",
            "valueBoolean" : true
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Claim.item.quantity.unit",
        "patternString" : "LKF Punkte"
      }
    ]
  }
}

```
