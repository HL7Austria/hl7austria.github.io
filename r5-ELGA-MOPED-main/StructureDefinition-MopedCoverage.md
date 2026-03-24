# ELGA.MOPED\MOPED Coverage - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Coverage**

## Resource Profile: MOPED Coverage 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedCoverage | *Version*:0.1.0 | |
| Draft as of 2026-03-24 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedCoverage |

 
MOPED Profil der Coverage Ressource für Versicherungen. 

**Usages:**

* Use this Profile: [MOPED Input Bundle KH](StructureDefinition-MopedInputBundleKH.md)
* Refer to this Profile: [MOPED Composition](StructureDefinition-MopedComposition.md), [MOPED LKFRequest](StructureDefinition-MopedLKFRequest.md) and [MOPED VAERequest](StructureDefinition-MopedVAERequest.md)
* Examples for this Profile: [Coverage/PJ1Coverage](Coverage-PJ1Coverage.md) and [Coverage/PJ2Coverage](Coverage-PJ2Coverage.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedCoverage)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedCoverage.csv), [Excel](StructureDefinition-MopedCoverage.xlsx), [Schematron](StructureDefinition-MopedCoverage.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedCoverage",
  "url" : "https://elga.moped.at/StructureDefinition/MopedCoverage",
  "version" : "0.1.0",
  "name" : "MopedCoverage",
  "title" : "MOPED Coverage",
  "status" : "draft",
  "date" : "2026-03-24T19:35:33+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Profil der Coverage Ressource für Versicherungen.",
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
  "type" : "Coverage",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Coverage",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Coverage.identifier",
      "path" : "Coverage.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Coverage.identifier:VDASID",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Coverage.identifier",
      "sliceName" : "VDASID",
      "short" : "KaOrg: VDAS-ID - Ergebnis der Abfrage",
      "min" : 0,
      "max" : "1",
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "VDAS-ID - Ergebnis der Abfrage"
      }]
    },
    {
      "id" : "Coverage.identifier:VDASID.system",
      "path" : "Coverage.identifier.system",
      "min" : 1,
      "patternUri" : "urn:oid:1.2.40.0.10.1.4.3.9.1"
    },
    {
      "id" : "Coverage.identifier:VDASID.assigner",
      "path" : "Coverage.identifier.assigner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/KHOrganization"]
      }]
    },
    {
      "id" : "Coverage.status",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
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
      "path" : "Coverage.status"
    },
    {
      "id" : "Coverage.kind",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Coverage.kind",
      "patternCode" : "insurance"
    },
    {
      "id" : "Coverage.policyHolder",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Coverage.policyHolder",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedPatient",
        "https://elga.moped.at/StructureDefinition/Hauptversicherter"]
      }]
    },
    {
      "id" : "Coverage.beneficiary",
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
      "path" : "Coverage.beneficiary",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedPatient"]
      }]
    },
    {
      "id" : "Coverage.insurer",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Coverage.insurer",
      "short" : "LKF: Leistungszuständiger Kostenträger – Code",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/SVOrganization"]
      }]
    },
    {
      "id" : "Coverage.class",
      "path" : "Coverage.class",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type.coding"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Coverage.class:Versichertenkategorien",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Coverage.class",
      "sliceName" : "Versichertenkategorien",
      "short" : "KaOrg: Versichertengruppe/Kategorie",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Coverage.class:Versichertenkategorien.type",
      "path" : "Coverage.class.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://svc.co.at/CodeSystem/ecard-versichertenkategorie-cs"
      }
    },
    {
      "id" : "Coverage.class:Versichertenkategorien.type.coding",
      "path" : "Coverage.class.type.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/coverage-class",
        "code" : "group"
      }
    },
    {
      "id" : "Coverage.class:Versichertenkategorien.value",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Coverage.class.value",
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "Versichertengruppe/Kategorie"
      }]
    },
    {
      "id" : "Coverage.class:Versichertenkategorien.value.system",
      "path" : "Coverage.class.value.system",
      "patternUri" : "http://svc.co.at/CodeSystem/ecard-versichertenkategorie-cs"
    }]
  }
}

```
