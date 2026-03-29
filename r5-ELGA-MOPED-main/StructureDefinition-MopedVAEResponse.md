# ELGA.MOPED\MOPED VAEResponse - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED VAEResponse**

## Resource Profile: MOPED VAEResponse 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedVAEResponse | *Version*:0.1.0 | |
| Draft as of 2026-03-29 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedVAEResponse |

 
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
  "date" : "2026-03-29T16:14:43+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Profil für die Beantwortung der Versichertenanspruchserklärung VAE.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "LKF",
    "uri" : "https://elga.moped.at/mapping/LKF",
    "name" : "LKF"
  },
  {
    "identity" : "KaOrg",
    "uri" : "https://elga.moped.at/mapping/KaOrg",
    "name" : "KaOrg"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ClaimResponse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ClaimResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ClaimResponse.extension",
      "path" : "ClaimResponse.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 2
    },
    {
      "id" : "ClaimResponse.extension:VerpflegskostenBeitragsbefreiung",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.extension",
      "sliceName" : "VerpflegskostenBeitragsbefreiung",
      "short" : "KaOrg: Verpflegskosten-Beitragsbefreiung",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://elga.moped.at/StructureDefinition/moped-ext-verpflegskostenBeitragsbefreiung"]
      }],
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "Verpflegskosten-Beitragsbefreiung"
      }]
    },
    {
      "id" : "ClaimResponse.extension:MopedSupportingInfoVortageanzahlAufKostenbeitrag",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.extension",
      "sliceName" : "MopedSupportingInfoVortageanzahlAufKostenbeitrag",
      "short" : "KaOrg: Vortageanzahl auf Kostenbeitrag",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://elga.moped.at/StructureDefinition/MopedSupportingInfoVortageanzahlAufKostenbeitrag"]
      }],
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "Vortageanzahl auf Kostenbeitrag"
      }]
    },
    {
      "id" : "ClaimResponse.status",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:handle"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.status",
      "patternCode" : "active"
    },
    {
      "id" : "ClaimResponse.type",
      "path" : "ClaimResponse.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/MopedClaimTypeVS"
      }
    },
    {
      "id" : "ClaimResponse.type.coding",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.type.coding",
      "min" : 1,
      "fixedCoding" : {
        "system" : "https://elga.moped.at/CodeSystem/MopedClaimTypeCS",
        "code" : "VAERESP"
      }
    },
    {
      "id" : "ClaimResponse.use",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.use",
      "patternCode" : "preauthorization"
    },
    {
      "id" : "ClaimResponse.patient",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:handle"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedPatient"]
      }]
    },
    {
      "id" : "ClaimResponse.created",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.created"
    },
    {
      "id" : "ClaimResponse.insurer",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.insurer",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/SVOrganization"]
      }]
    },
    {
      "id" : "ClaimResponse.requestor",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:handle"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.requestor",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/KHOrganization"]
      }]
    },
    {
      "id" : "ClaimResponse.request",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.request",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedVAERequestInitial",
        "https://elga.moped.at/StructureDefinition/MopedVAERequestVerlaengerung"]
      }]
    },
    {
      "id" : "ClaimResponse.outcome",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.outcome",
      "short" : "VAE Bewilligung/Ablehnung"
    },
    {
      "id" : "ClaimResponse.decision",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.decision",
      "short" : "KaOrg: Status der VAE",
      "definition" : "\"VAEST - Status der Versichertenanspruchserklärung\"",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/VAEStatusVS"
      },
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "Status der VAE"
      }]
    },
    {
      "id" : "ClaimResponse.preAuthPeriod",
      "path" : "ClaimResponse.preAuthPeriod",
      "definition" : "Ist diese Zeitspanne angegeben so gibt es ein Fristende.\nBefristungen sind in folgenden Fällen vorgesehen:\n- Bei zeitlichen Beschränkungen aufgrund einer zu erwartenden, nachfolgenden medizini-\nschen Hauskrankenpflege\n- Bei Vorhersehbarkeit des Eintritts einer Asylierung\n- Bei unsicherer, versicherungsrechtlicher Entwicklung\nBei den ersten beiden Punkten wird von den Krankenversicherungsträgern das Fristende individuell gesetzt. Beim dritten Punkt wird im Regelfall eine generelle Tagesbeschränkung erfolgen, weil die Versichertenanspruchserklärung in die Zukunft gerichtet ist und der Krankenversicherungsträger seine Zuständigkeit von vornherein nur für einen bestimmten Zeitraum annehmen kann (Ausleis- tungssituation gem. § 122 ASVG).\nDurch die Angabe eines Fristendes wird signalisiert, dass bei einem über das Fristende hinaus dau- ernden Aufenthalt eine Verlängerungsanzeige vorzulegen ist.",
      "min" : 1
    },
    {
      "id" : "ClaimResponse.preAuthPeriod.start",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.preAuthPeriod.start",
      "short" : "KaOrg: VAE Beginndatum",
      "min" : 1,
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "VAE Beginndatum"
      }]
    },
    {
      "id" : "ClaimResponse.preAuthPeriod.end",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.preAuthPeriod.end",
      "short" : "KaOrg: Fristende; KaOrg: VAE Endedatum; VAE Enddatum und Indikator, ob es ein Fristende gibt",
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "Fristende"
      },
      {
        "identity" : "KaOrg",
        "map" : "VAE Endedatum"
      }]
    },
    {
      "id" : "ClaimResponse.addItem.extension",
      "path" : "ClaimResponse.addItem.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ClaimResponse.addItem.extension:AddItemCategory",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.addItem.extension",
      "sliceName" : "AddItemCategory",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://elga.moped.at/StructureDefinition/moped-ext-AddItemCategory"]
      }]
    }]
  }
}

```
