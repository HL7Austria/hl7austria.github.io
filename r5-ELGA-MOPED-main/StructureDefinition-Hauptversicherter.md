# ELGA.MOPED\MOPED Hauptversicherter - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Hauptversicherter**

## Resource Profile: MOPED Hauptversicherter 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/Hauptversicherter | *Version*:0.1.0 | |
| Draft as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:Hauptversicherter |

 
MOPED Profil der Person Ressource für den Hauptversicherten 

**Usages:**

* Use this Profile: [MOPED Input Bundle KH](StructureDefinition-MopedInputBundleKH.md)
* Refer to this Profile: [MOPED Composition](StructureDefinition-MopedComposition.md) and [MOPED Coverage](StructureDefinition-MopedCoverage.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/Hauptversicherter)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Hauptversicherter.csv), [Excel](StructureDefinition-Hauptversicherter.xlsx), [Schematron](StructureDefinition-Hauptversicherter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Hauptversicherter",
  "url" : "https://elga.moped.at/StructureDefinition/Hauptversicherter",
  "version" : "0.1.0",
  "name" : "Hauptversicherter",
  "title" : "MOPED Hauptversicherter",
  "status" : "draft",
  "date" : "2026-04-07T11:10:24+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Profil der Person Ressource für den Hauptversicherten",
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
  "type" : "RelatedPerson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RelatedPerson",
      "path" : "RelatedPerson"
    },
    {
      "id" : "RelatedPerson.identifier",
      "path" : "RelatedPerson.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type.coding.code"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "RelatedPerson.identifier.type",
      "path" : "RelatedPerson.identifier.type",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier"
      }
    },
    {
      "id" : "RelatedPerson.identifier:socialSecurityNumber",
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
      "path" : "RelatedPerson.identifier",
      "sliceName" : "socialSecurityNumber",
      "short" : "KaOrg: Versicherungsnummer des Hauptversicherten",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "RelatedPerson.identifier:socialSecurityNumber.type",
      "path" : "RelatedPerson.identifier.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier"
      }
    },
    {
      "id" : "RelatedPerson.identifier:socialSecurityNumber.type.coding.system",
      "path" : "RelatedPerson.identifier.type.coding.system",
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "RelatedPerson.identifier:socialSecurityNumber.type.coding.code",
      "path" : "RelatedPerson.identifier.type.coding.code",
      "min" : 1,
      "fixedCode" : "SS"
    },
    {
      "id" : "RelatedPerson.identifier:socialSecurityNumber.system",
      "path" : "RelatedPerson.identifier.system",
      "short" : "OID for the Social Security Number in Austria",
      "min" : 1,
      "fixedUri" : "urn:oid:1.2.40.0.10.1.4.3.1"
    },
    {
      "id" : "RelatedPerson.identifier:socialSecurityNumber.value",
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
      "path" : "RelatedPerson.identifier.value",
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "Versicherungsnummer des Hauptversicherten"
      }]
    },
    {
      "id" : "RelatedPerson.identifier:socialSecurityNumber.assigner.display",
      "path" : "RelatedPerson.identifier.assigner.display",
      "fixedString" : "Dachverband der österreichischen Sozialversicherungsträger"
    },
    {
      "id" : "RelatedPerson.patient",
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
      "path" : "RelatedPerson.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedPatient"]
      }]
    },
    {
      "id" : "RelatedPerson.name.family",
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
      "path" : "RelatedPerson.name.family",
      "short" : "KaOrg: Zuname des Hauptversicherten",
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "Zuname des Hauptversicherten"
      }]
    },
    {
      "id" : "RelatedPerson.name.given",
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
      "path" : "RelatedPerson.name.given",
      "short" : "KaOrg: Vorname des Hauptversicherten",
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "Vorname des Hauptversicherten"
      }]
    },
    {
      "id" : "RelatedPerson.gender",
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
      "path" : "RelatedPerson.gender",
      "short" : "KaOrg: Geschlecht des Hauptversicherten",
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "Geschlecht des Hauptversicherten"
      }]
    },
    {
      "id" : "RelatedPerson.birthDate",
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
      "path" : "RelatedPerson.birthDate",
      "short" : "KaOrg: Geburtsdatum des Hauptversicherten",
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "Geburtsdatum des Hauptversicherten"
      }]
    },
    {
      "id" : "RelatedPerson.address",
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
      "path" : "RelatedPerson.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-address"]
      }]
    }]
  }
}

```
