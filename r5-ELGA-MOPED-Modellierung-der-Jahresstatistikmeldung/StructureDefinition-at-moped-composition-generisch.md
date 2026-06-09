# ELGA.MOPED\AT MOPED Composition generisches Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Composition generisches Profil**

## Resource Profile: AT MOPED Composition generisches Profil ( Experimental ) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-composition-generisch | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedCompositionGenerisch |

 
MOPED generisches Profil der Composition Ressource von der alle anderen Compositions ableiten 

**Usages:**

* Derived from this Profile: [AT MOPED Composition $anfragen Profil](StructureDefinition-at-moped-composition-anfragen.md), [AT MOPED Composition $aufnehmen Profil](StructureDefinition-at-moped-composition-aufnehmen.md), [AT MOPED Composition Basis Profil](StructureDefinition-at-moped-composition-basis.md), [AT MOPED Composition $beantworten Profil](StructureDefinition-at-moped-composition-beantworten.md)... Show 3 more, [AT MOPED Composition $entlassen Aviso Profil](StructureDefinition-at-moped-composition-entlassen-aviso.md), [AT MOPED Composition $entlassen vollständig Profil](StructureDefinition-at-moped-composition-entlassen-vollstaendig.md) and [AT MOPED Composition $update Profil](StructureDefinition-at-moped-composition-update.md)
* Examples for this Profile: [Composition/PJ1Composition](Composition-PJ1Composition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-composition-generisch.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-composition-generisch.csv), [Excel](StructureDefinition-at-moped-composition-generisch.xlsx), [Schematron](StructureDefinition-at-moped-composition-generisch.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-composition-generisch",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-composition-generisch",
  "version" : "0.1.0",
  "name" : "AtMopedCompositionGenerisch",
  "title" : "AT MOPED Composition generisches Profil",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-09T11:53:00+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED generisches Profil der Composition Ressource von der alle anderen Compositions ableiten",
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
  "type" : "Composition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Composition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Composition",
      "path" : "Composition"
    },
    {
      "id" : "Composition.id",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Composition.id",
      "short" : "KaOrg: Datensatz-ID",
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "Datensatz-ID"
      }]
    },
    {
      "id" : "Composition.status",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Composition.status"
    },
    {
      "id" : "Composition.type",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Composition.type"
    },
    {
      "id" : "Composition.subject",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Composition.subject",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-patient-vbPK-basis",
        "https://elga.moped.at/StructureDefinition/at-moped-patient-klarname-basis"]
      }]
    },
    {
      "id" : "Composition.encounter",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Composition.encounter",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-encounter-aufenthalt-stationaer-basis",
        "https://elga.moped.at/StructureDefinition/at-moped-encounter-besuch-ambulant-basis"]
      }]
    },
    {
      "id" : "Composition.date",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Composition.date"
    },
    {
      "id" : "Composition.useContext",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Composition.useContext",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code"
        }],
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
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/WorkflowStatusVS"
      }
    },
    {
      "id" : "Composition.author",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Composition.author",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-KA"]
      }],
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Krankenanstaltennummer/Leistungserbringer-Stammdaten-ID"
      },
      {
        "identity" : "LKF",
        "map" : "Krankenanstaltennummer"
      },
      {
        "identity" : "KaOrg",
        "map" : "Krankenanstaltennummer des Bundesministeriums"
      },
      {
        "identity" : "KaOrg",
        "map" : "Vertragspartnernummer der Krankenanstalt"
      }]
    },
    {
      "id" : "Composition.title",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Composition.title"
    },
    {
      "id" : "Composition.section",
      "path" : "Composition.section",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code.coding.code"
        }],
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
      "id" : "Composition.section:Bewegungen",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Composition.section",
      "sliceName" : "Bewegungen",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Composition.section:Bewegungen.code.coding.system",
      "path" : "Composition.section.code.coding.system",
      "patternUri" : "https://elga.moped.at/CodeSystem/MopedEncounterTypesCS"
    },
    {
      "id" : "Composition.section:Bewegungen.code.coding.code",
      "path" : "Composition.section.code.coding.code",
      "min" : 1,
      "patternCode" : "BENC"
    },
    {
      "id" : "Composition.section:Bewegungen.entry",
      "path" : "Composition.section.entry",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-encounter-bewegung-intensiv-basis",
        "https://elga.moped.at/StructureDefinition/at-moped-encounter-bewegung-ambulant-basis",
        "https://elga.moped.at/StructureDefinition/at-moped-encounter-bewegung-stationaer-basis"]
      }]
    },
    {
      "id" : "Composition.section:zustaendigeSV",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Composition.section",
      "sliceName" : "zustaendigeSV",
      "short" : "LKF: Leistungszuständiger Kostenträger – Code; KaOrg: Kostenträger (leistungszuständig)",
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
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Composition.section.entry",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-SV"]
      }],
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Leistungszuständiger Kostenträger – Code"
      },
      {
        "identity" : "KaOrg",
        "map" : "Kostenträger (leistungszuständig)"
      }]
    },
    {
      "id" : "Composition.section:zustaendigerLGF",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
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
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-LGF"]
      }]
    },
    {
      "id" : "Composition.section:zustaendigeKA",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Composition.section",
      "sliceName" : "zustaendigeKA",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Composition.section:zustaendigeKA.code.coding.system",
      "path" : "Composition.section.code.coding.system",
      "patternUri" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS"
    },
    {
      "id" : "Composition.section:zustaendigeKA.code.coding.code",
      "path" : "Composition.section.code.coding.code",
      "min" : 1,
      "patternCode" : "KA"
    },
    {
      "id" : "Composition.section:zustaendigeKA.entry",
      "path" : "Composition.section.entry",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-KA"]
      }]
    },
    {
      "id" : "Composition.section:besuchteAbteilungen",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
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
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-KA"]
      }]
    },
    {
      "id" : "Composition.section:besuchteAbteilungen.entry",
      "path" : "Composition.section.entry",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-organisationseinheit-KA"]
      }]
    },
    {
      "id" : "Composition.section:Diagnosen",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
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
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-condition-basis"]
      }]
    },
    {
      "id" : "Composition.section:Leistungen",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
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
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-KA"]
      }]
    },
    {
      "id" : "Composition.section:Leistungen.entry",
      "path" : "Composition.section.entry",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-procedure-basis"]
      }]
    },
    {
      "id" : "Composition.section:Versichertenanspruch",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Composition.section",
      "sliceName" : "Versichertenanspruch",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Composition.section:Versichertenanspruch.code.coding.system",
      "path" : "Composition.section.code.coding.system",
      "patternUri" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS"
    },
    {
      "id" : "Composition.section:Versichertenanspruch.code.coding.code",
      "path" : "Composition.section.code.coding.code",
      "min" : 1,
      "patternCode" : "COV"
    },
    {
      "id" : "Composition.section:Versichertenanspruch.author",
      "path" : "Composition.section.author",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-KA"]
      }]
    },
    {
      "id" : "Composition.section:Versichertenanspruch.entry",
      "path" : "Composition.section.entry",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-coverage-versicherter-basis",
        "https://elga.moped.at/StructureDefinition/at-moped-coverage-selbstzahler"]
      }]
    },
    {
      "id" : "Composition.section:VAERequests",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Composition.section",
      "sliceName" : "VAERequests",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Composition.section:VAERequests.code.coding.system",
      "path" : "Composition.section.code.coding.system",
      "patternUri" : "https://elga.moped.at/CodeSystem/MopedClaimTypeCS"
    },
    {
      "id" : "Composition.section:VAERequests.code.coding.code",
      "path" : "Composition.section.code.coding.code",
      "min" : 1,
      "patternCode" : "VAEREQ"
    },
    {
      "id" : "Composition.section:VAERequests.author",
      "path" : "Composition.section.author",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-KA"]
      }]
    },
    {
      "id" : "Composition.section:VAERequests.entry",
      "path" : "Composition.section.entry",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-claim-VAE-request-initial",
        "https://elga.moped.at/StructureDefinition/at-moped-claim-vaerequest-verlaengerung"]
      }]
    },
    {
      "id" : "Composition.section:VAEResponses",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Composition.section",
      "sliceName" : "VAEResponses",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Composition.section:VAEResponses.code.coding.system",
      "path" : "Composition.section.code.coding.system",
      "patternUri" : "https://elga.moped.at/CodeSystem/MopedClaimTypeCS"
    },
    {
      "id" : "Composition.section:VAEResponses.code.coding.code",
      "path" : "Composition.section.code.coding.code",
      "min" : 1,
      "patternCode" : "VAERESP"
    },
    {
      "id" : "Composition.section:VAEResponses.author",
      "path" : "Composition.section.author",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-SV"]
      }]
    },
    {
      "id" : "Composition.section:VAEResponses.entry",
      "path" : "Composition.section.entry",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-claimresponse-vaeresponse-generisch"]
      }]
    },
    {
      "id" : "Composition.section:LKFRequests",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Composition.section",
      "sliceName" : "LKFRequests",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Composition.section:LKFRequests.code.coding.system",
      "path" : "Composition.section.code.coding.system",
      "patternUri" : "https://elga.moped.at/CodeSystem/MopedClaimTypeCS"
    },
    {
      "id" : "Composition.section:LKFRequests.code.coding.code",
      "path" : "Composition.section.code.coding.code",
      "min" : 1,
      "patternCode" : "LKFREQ"
    },
    {
      "id" : "Composition.section:LKFRequests.author",
      "path" : "Composition.section.author",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-KA"]
      }]
    },
    {
      "id" : "Composition.section:LKFRequests.entry",
      "path" : "Composition.section.entry",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-claim-lkfrequest-basis"]
      }]
    },
    {
      "id" : "Composition.section:LKFResponses",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Composition.section",
      "sliceName" : "LKFResponses",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Composition.section:LKFResponses.code.coding.system",
      "path" : "Composition.section.code.coding.system",
      "patternUri" : "https://elga.moped.at/CodeSystem/MopedClaimTypeCS"
    },
    {
      "id" : "Composition.section:LKFResponses.code.coding.code",
      "path" : "Composition.section.code.coding.code",
      "min" : 1,
      "patternCode" : "LKFRESP"
    },
    {
      "id" : "Composition.section:LKFResponses.author",
      "path" : "Composition.section.author",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-LGF"]
      }]
    },
    {
      "id" : "Composition.section:LKFResponses.entry",
      "path" : "Composition.section.entry",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-claimresponse-lkfresponse-basis"]
      }]
    },
    {
      "id" : "Composition.section:ARKKostenInformation",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Composition.section",
      "sliceName" : "ARKKostenInformation",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Composition.section:ARKKostenInformation.code.coding.system",
      "path" : "Composition.section.code.coding.system",
      "patternUri" : "https://elga.moped.at/CodeSystem/MopedClaimTypeCS"
    },
    {
      "id" : "Composition.section:ARKKostenInformation.code.coding.code",
      "path" : "Composition.section.code.coding.code",
      "min" : 1,
      "patternCode" : "ARKREQ"
    },
    {
      "id" : "Composition.section:ARKKostenInformation.author",
      "path" : "Composition.section.author",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-KA"]
      }]
    },
    {
      "id" : "Composition.section:ARKKostenInformation.entry",
      "path" : "Composition.section.entry",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedARKRequest"]
      }]
    },
    {
      "id" : "Composition.section:ARKRueckmeldung",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Composition.section",
      "sliceName" : "ARKRueckmeldung",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Composition.section:ARKRueckmeldung.code.coding.system",
      "path" : "Composition.section.code.coding.system",
      "patternUri" : "https://elga.moped.at/CodeSystem/MopedClaimTypeCS"
    },
    {
      "id" : "Composition.section:ARKRueckmeldung.code.coding.code",
      "path" : "Composition.section.code.coding.code",
      "min" : 1,
      "patternCode" : "ARKRESP"
    },
    {
      "id" : "Composition.section:ARKRueckmeldung.author",
      "path" : "Composition.section.author",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-LGF"]
      }]
    },
    {
      "id" : "Composition.section:ARKRueckmeldung.entry",
      "path" : "Composition.section.entry",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedARKResponse"]
      }]
    },
    {
      "id" : "Composition.section:ARKStatusUpdate",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
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
      "patternCode" : "ARKPAY"
    },
    {
      "id" : "Composition.section:ARKStatusUpdate.author",
      "path" : "Composition.section.author",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-LGF"]
      }]
    },
    {
      "id" : "Composition.section:ARKStatusUpdate.entry",
      "path" : "Composition.section.entry",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedARKStatusUpdate"]
      }]
    },
    {
      "id" : "Composition.section:Entbindung",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Composition.section",
      "sliceName" : "Entbindung",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Composition.section:Entbindung.code.coding.system",
      "path" : "Composition.section.code.coding.system",
      "patternUri" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS"
    },
    {
      "id" : "Composition.section:Entbindung.code.coding.code",
      "path" : "Composition.section.code.coding.code",
      "min" : 1,
      "patternCode" : "OBS"
    },
    {
      "id" : "Composition.section:Entbindung.author",
      "path" : "Composition.section.author",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-KA"]
      }]
    },
    {
      "id" : "Composition.section:Entbindung.entry",
      "path" : "Composition.section.entry",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-observation-geburtenanzahl-basis",
        "https://elga.moped.at/StructureDefinition/at-moped-observation-entbindungsart-basis"]
      }]
    },
    {
      "id" : "Composition.section:Hauptversicherter",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
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
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-KA"]
      }]
    },
    {
      "id" : "Composition.section:Hauptversicherter.entry",
      "path" : "Composition.section.entry",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-relatedperson-hauptversicherter-basis"]
      }]
    },
    {
      "id" : "Composition.section:Frageboegen",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
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
      "patternCode" : "QRESP"
    },
    {
      "id" : "Composition.section:Frageboegen.author",
      "path" : "Composition.section.author",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-KA"]
      }]
    },
    {
      "id" : "Composition.section:Frageboegen.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-questionnaireresponse-fallbezogen"]
      }]
    },
    {
      "id" : "Composition.section:Kommunikation",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
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
      "patternCode" : "COMM"
    },
    {
      "id" : "Composition.section:Kommunikation.author",
      "path" : "Composition.section.author",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-KA",
        "https://elga.moped.at/StructureDefinition/at-moped-organization-SV",
        "https://elga.moped.at/StructureDefinition/at-moped-organization-LGF"]
      }]
    }]
  }
}

```
