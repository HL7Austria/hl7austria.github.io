# ELGA.MOPED\MOPED VAEResponse - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED VAEResponse**

## Resource Profile: MOPED VAEResponse 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedVAEResponse | *Version*:0.1.0 | |
| Draft as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedVAEResponse |

 
MOPED Profil für die Beantwortung der Versichertenanspruchserklärung VAE. 

**Usages:**

* Use this Profile: [MOPED Antworten Bundle SV](StructureDefinition-MopedAntwortenBundleSV.md)
* Refer to this Profile: [MOPED Composition](StructureDefinition-MopedComposition.md)
* Examples for this Profile: [ClaimResponse/PJ1VAEResponse1](ClaimResponse-PJ1VAEResponse1.md) and [ClaimResponse/PJ2VAEResponse1](ClaimResponse-PJ2VAEResponse1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedVAEResponse)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedVAEResponse.csv), [Excel](StructureDefinition-MopedVAEResponse.xlsx), [Schematron](StructureDefinition-MopedVAEResponse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedVAEResponse",
  "url" : "https://elga.moped.at/StructureDefinition/MopedVAEResponse",
  "version" : "0.1.0",
  "name" : "MopedVAEResponse",
  "title" : "MOPED VAEResponse",
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
  "description" : "MOPED Profil für die Beantwortung der Versichertenanspruchserklärung VAE.",
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
        },
        "min" : 3
      },
      {
        "id" : "ClaimResponse.extension:MopedSupportingInfoSonderklasse",
        "path" : "ClaimResponse.extension",
        "sliceName" : "MopedSupportingInfoSonderklasse",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/MopedSupportingInfoSonderklasse"
            ]
          }
        ]
      },
      {
        "id" : "ClaimResponse.extension:VerpflegskostenBeitragsbefreiung",
        "path" : "ClaimResponse.extension",
        "sliceName" : "VerpflegskostenBeitragsbefreiung",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/moped-ext-verpflegskostenBeitragsbefreiung"
            ]
          }
        ]
      },
      {
        "id" : "ClaimResponse.extension:MopedSupportingInfoVortageanzahlAufKostenbeitrag",
        "path" : "ClaimResponse.extension",
        "sliceName" : "MopedSupportingInfoVortageanzahlAufKostenbeitrag",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/MopedSupportingInfoVortageanzahlAufKostenbeitrag"
            ]
          }
        ]
      },
      {
        "id" : "ClaimResponse.status",
        "path" : "ClaimResponse.status",
        "patternCode" : "active"
      },
      {
        "id" : "ClaimResponse.type.coding",
        "path" : "ClaimResponse.type.coding",
        "min" : 1,
        "patternCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/claim-type",
          "code" : "institutional"
        }
      },
      {
        "id" : "ClaimResponse.use",
        "path" : "ClaimResponse.use",
        "patternCode" : "preauthorization"
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
        "id" : "ClaimResponse.insurer",
        "path" : "ClaimResponse.insurer",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/SVOrganization"]
          }
        ]
      },
      {
        "id" : "ClaimResponse.requestor",
        "path" : "ClaimResponse.requestor",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/KHOrganization"]
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
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedVAERequest"]
          }
        ]
      },
      {
        "id" : "ClaimResponse.outcome",
        "path" : "ClaimResponse.outcome",
        "short" : "VAE Bewilligung/Ablehnung"
      },
      {
        "id" : "ClaimResponse.decision",
        "path" : "ClaimResponse.decision",
        "short" : "\"VAEST - Status der Versichertenanspruchserklärung\"",
        "definition" : "\"VAEST - Status der Versichertenanspruchserklärung\"",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/VAEStatusVS"
        }
      },
      {
        "id" : "ClaimResponse.preAuthPeriod",
        "path" : "ClaimResponse.preAuthPeriod",
        "definition" : "Ist diese Zeitspanne angegeben so gibt es ein Fristende.\nBefristungen sind in folgenden Fällen vorgesehen:\n- Bei zeitlichen Beschränkungen aufgrund einer zu erwartenden, nachfolgenden medizini-\nschen Hauskrankenpflege\n- Bei Vorhersehbarkeit des Eintritts einer Asylierung\n- Bei unsicherer, versicherungsrechtlicher Entwicklung\nBei den ersten beiden Punkten wird von den Krankenversicherungsträgern das Fristende individuell gesetzt. Beim dritten Punkt wird im Regelfall eine generelle Tagesbeschränkung erfolgen, weil die Versichertenanspruchserklärung in die Zukunft gerichtet ist und der Krankenversicherungsträger seine Zuständigkeit von vornherein nur für einen bestimmten Zeitraum annehmen kann (Ausleis- tungssituation gem. § 122 ASVG).\nDurch die Angabe eines Fristendes wird signalisiert, dass bei einem über das Fristende hinaus dau- ernden Aufenthalt eine Verlängerungsanzeige vorzulegen ist.",
        "min" : 1
      },
      {
        "id" : "ClaimResponse.preAuthPeriod.start",
        "path" : "ClaimResponse.preAuthPeriod.start",
        "short" : "VAE Beginndatum",
        "min" : 1
      },
      {
        "id" : "ClaimResponse.preAuthPeriod.end",
        "path" : "ClaimResponse.preAuthPeriod.end",
        "short" : "VAE Enddatum und Indikator, ob es ein Fristende gibt"
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
      }
    ]
  }
}

```
