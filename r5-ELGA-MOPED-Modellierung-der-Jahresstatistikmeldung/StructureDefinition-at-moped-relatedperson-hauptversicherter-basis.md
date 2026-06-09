# ELGA.MOPED\AT MOPED RelatedPerson Hauptversicherter Basis Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED RelatedPerson Hauptversicherter Basis Profil**

## Resource Profile: AT MOPED RelatedPerson Hauptversicherter Basis Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-relatedperson-hauptversicherter-basis | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedRelatedPersonHauptversicherterBasis |

 
MOPED generisches Profil der RelatedPerson Ressource für Daten zum Hauptversicherten 

**Usages:**

* Use this Profile: [AT MOPED Bundle Input KA Profil](StructureDefinition-at-moped-bundle-input-KA.md)
* Refer to this Profile: [AT MOPED Composition generisches Profil](StructureDefinition-at-moped-composition-generisch.md) and [AT MOPED Coverage Versicherter Basis Profil](StructureDefinition-at-moped-coverage-versicherter-basis.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-relatedperson-hauptversicherter-basis.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-relatedperson-hauptversicherter-basis.csv), [Excel](StructureDefinition-at-moped-relatedperson-hauptversicherter-basis.xlsx), [Schematron](StructureDefinition-at-moped-relatedperson-hauptversicherter-basis.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-relatedperson-hauptversicherter-basis",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-relatedperson-hauptversicherter-basis",
  "version" : "0.1.0",
  "name" : "AtMopedRelatedPersonHauptversicherterBasis",
  "title" : "AT MOPED RelatedPerson Hauptversicherter Basis Profil",
  "status" : "draft",
  "date" : "2026-06-09T11:53:00+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED generisches Profil der RelatedPerson Ressource für Daten zum Hauptversicherten",
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
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/at-moped-relatedperson-hauptversicherter-generisch",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
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
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
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
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
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
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-patient-vbPK-basis",
        "https://elga.moped.at/StructureDefinition/at-moped-patient-klarname-basis"]
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
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
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
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
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
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
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
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
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
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
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
