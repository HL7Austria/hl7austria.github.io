# ELGA.MOPED\MOPED LKFRequest - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED LKFRequest**

## Resource Profile: MOPED LKFRequest 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedLKFRequest | *Version*:0.1.0 | |
| Draft as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedLKFRequest |

 
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
  "description" : "MOPED Profil der Claim Ressource für die Leistungsabrechnungsanfrage.",
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
        "path" : "Claim.extension",
        "sliceName" : "DiagnoseKnoten",
        "min" : 1,
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
        "id" : "Claim.extension:FehlerWarnung",
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
        "min" : 2
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
        "path" : "Claim.diagnosisRelatedGroup",
        "short" : "\"Abrechnung - Gruppe:\" Dieses Datenfeld ist mit der Codenummer der zutreffenden Abrechnungsgruppe zu befüllen. Bei Datensätzen von stationären Krankenhausaufenthalten, die keiner leistungsorientier- ten Diagnosenfallgruppe zugeordnet werden, erfolgt ein Eintrag entsprechend der jeweiligen Aufnahmeart.",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/LKFAbrechnungsGruppeVS"
        }
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
        "min" : 2
      },
      {
        "id" : "Claim.supportingInfo:Plausibilitaetskennzeichen",
        "path" : "Claim.supportingInfo",
        "sliceName" : "Plausibilitaetskennzeichen",
        "short" : "Plausibilitätskennzeichen - Dieses Datenfeld enthält eine Kennzeichnung als Ergebnis der vom Gesundheitsministerium vorgegebenen Plausibilitätsprüfung.",
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
        "path" : "Claim.supportingInfo.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Claim.supportingInfo:EndgueltigeMeldung",
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
        "id" : "Claim.diagnosis.diagnosis[x]",
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
        "path" : "Claim.diagnosis.onAdmission",
        "definition" : "Gibt an ob die Diagnose bereits bei Aufnahme in den stationären Aufenthalt vorhanden war"
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
        "path" : "Claim.procedure.extension",
        "sliceName" : "AbrechnungsRelevanz",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/moped-ext-AbrechnungsRelevanz"
            ]
          }
        ]
      },
      {
        "id" : "Claim.procedure.procedure[x]",
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
      }
    ]
  }
}

```
