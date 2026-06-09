# ELGA.MOPED\AT MOPED Patient generisches Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Patient generisches Profil**

## Resource Profile: AT MOPED Patient generisches Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-patient-generisch | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedPatientGenerisch |

 
MOPED generisches Profil der Patienten Ressource für Moped 

**Usages:**

* Derived from this Profile: [AT MOPED Patient Klarname Basis Profil](StructureDefinition-at-moped-patient-klarname-basis.md) and [AT MOPED Patient vbPK Basis Profil](StructureDefinition-at-moped-patient-vbPK-basis.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-patient-generisch.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-patient-generisch.csv), [Excel](StructureDefinition-at-moped-patient-generisch.xlsx), [Schematron](StructureDefinition-at-moped-patient-generisch.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-patient-generisch",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-patient-generisch",
  "version" : "0.1.0",
  "name" : "AtMopedPatientGenerisch",
  "title" : "AT MOPED Patient generisches Profil",
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
  "description" : "MOPED generisches Profil der Patienten Ressource für Moped",
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
  "type" : "Patient",
  "baseDefinition" : "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient",
      "constraint" : [{
        "key" : "mandatory-gemeindecode-for-AUT",
        "severity" : "error",
        "human" : "Der Gemeindecode ist für inländische Patienten verpflichtend anzugeben",
        "expression" : "address.where(country = 'AUT').extension.where(url = 'http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-ext-address-municipalityCode').exists()",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-patient-generisch"
      },
      {
        "key" : "mandatory-postal-code-for-AUT",
        "severity" : "error",
        "human" : "Die Postleitzahl ist für inländische Patienten verpflichtend anzugeben",
        "expression" : "address.where(country = 'AUT').postalCode.exists()",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-patient-generisch"
      }]
    },
    {
      "id" : "Patient.implicitRules",
      "path" : "Patient.implicitRules",
      "max" : "0"
    },
    {
      "id" : "Patient.language",
      "path" : "Patient.language",
      "max" : "0"
    },
    {
      "id" : "Patient.contained",
      "path" : "Patient.contained",
      "max" : "0"
    },
    {
      "id" : "Patient.extension:citizenship",
      "path" : "Patient.extension",
      "sliceName" : "citizenship",
      "mustSupport" : true
    },
    {
      "id" : "Patient.extension:citizenship.extension:code",
      "path" : "Patient.extension.extension",
      "sliceName" : "code"
    },
    {
      "id" : "Patient.extension:citizenship.extension:code.value[x]",
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
      "path" : "Patient.extension.extension.value[x]",
      "short" : "Staatsbürgerschaft",
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Staatsbürgerschaft"
      },
      {
        "identity" : "KaOrg",
        "map" : "Staatsbürgerschaftsschlüssel"
      },
      {
        "identity" : "KaOrg",
        "map" : "Staatsbürgerschaft"
      }]
    },
    {
      "id" : "Patient.extension:citizenship.extension:period",
      "path" : "Patient.extension.extension",
      "sliceName" : "period",
      "max" : "0"
    },
    {
      "id" : "Patient.extension:PatientReligion",
      "path" : "Patient.extension",
      "sliceName" : "PatientReligion",
      "max" : "0"
    },
    {
      "id" : "Patient.extension:birthPlace",
      "path" : "Patient.extension",
      "sliceName" : "birthPlace",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type.coding.code"
        },
        {
          "type" : "value",
          "path" : "system"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.identifier.use",
      "path" : "Patient.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier.assigner",
      "path" : "Patient.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:socialSecurityNumber",
      "path" : "Patient.identifier",
      "sliceName" : "socialSecurityNumber",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:bPK",
      "path" : "Patient.identifier",
      "sliceName" : "bPK",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:localPatientId",
      "path" : "Patient.identifier",
      "sliceName" : "localPatientId",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:vbPKGH",
      "path" : "Patient.identifier",
      "sliceName" : "vbPKGH",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:vbPKGH.type",
      "path" : "Patient.identifier.type",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:vbPKGH.type.coding.system",
      "path" : "Patient.identifier.type.coding.system",
      "patternUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Patient.identifier:vbPKGH.type.coding.code",
      "path" : "Patient.identifier.type.coding.code",
      "min" : 1,
      "patternCode" : "ANON"
    },
    {
      "id" : "Patient.identifier:vbPKGH.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.2.40.0.34.4.22.1"
    },
    {
      "id" : "Patient.identifier:vbPKGH.value",
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
      "path" : "Patient.identifier.value",
      "short" : "vbPK GH Patient/Patientin",
      "min" : 1,
      "mapping" : [{
        "identity" : "LKF",
        "map" : "vbPK GH Patient/Patientin"
      }]
    },
    {
      "id" : "Patient.identifier:vbPKSV",
      "path" : "Patient.identifier",
      "sliceName" : "vbPKSV",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:vbPKSV.type.coding.system",
      "path" : "Patient.identifier.type.coding.system",
      "patternUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Patient.identifier:vbPKSV.type.coding.code",
      "path" : "Patient.identifier.type.coding.code",
      "min" : 1,
      "patternCode" : "ANON"
    },
    {
      "id" : "Patient.identifier:vbPKSV.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.2.40.0.34.4.22.2"
    },
    {
      "id" : "Patient.identifier:vbPKSV.value",
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
      "path" : "Patient.identifier.value",
      "short" : "vbPK SV Patient/Patientin",
      "min" : 1,
      "mapping" : [{
        "identity" : "LKF",
        "map" : "vbPK SV Patient/Patientin"
      }]
    },
    {
      "id" : "Patient.identifier:vbPKAS",
      "path" : "Patient.identifier",
      "sliceName" : "vbPKAS",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:vbPKAS.type.coding.system",
      "path" : "Patient.identifier.type.coding.system",
      "patternUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Patient.identifier:vbPKAS.type.coding.code",
      "path" : "Patient.identifier.type.coding.code",
      "min" : 1,
      "patternCode" : "ANON"
    },
    {
      "id" : "Patient.identifier:vbPKAS.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.2.40.0.34.4.22.3"
    },
    {
      "id" : "Patient.identifier:vbPKAS.value",
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
      "path" : "Patient.identifier.value",
      "short" : "vbPK AS Patient/Patientin",
      "min" : 1,
      "mapping" : [{
        "identity" : "LKF",
        "map" : "vbPK AS Patient/Patientin"
      }]
    },
    {
      "id" : "Patient.active",
      "path" : "Patient.active",
      "max" : "0"
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "max" : "1"
    },
    {
      "id" : "Patient.name.use",
      "path" : "Patient.name.use",
      "max" : "0"
    },
    {
      "id" : "Patient.name.text",
      "path" : "Patient.name.text",
      "max" : "0"
    },
    {
      "id" : "Patient.name.family",
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
      "path" : "Patient.name.family",
      "short" : "Zuname des Patienten",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "Zuname"
      },
      {
        "identity" : "KaOrg",
        "map" : "Zuname des Hauptversicherten"
      },
      {
        "identity" : "KaOrg",
        "map" : "Zuname des Mitversicherten"
      }]
    },
    {
      "id" : "Patient.name.given",
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
      "path" : "Patient.name.given",
      "short" : "Vorname des Patienten",
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "Vorname"
      },
      {
        "identity" : "KaOrg",
        "map" : "Vorname des Hauptversicherten"
      },
      {
        "identity" : "KaOrg",
        "map" : "Vorname des Mitversicherten"
      }]
    },
    {
      "id" : "Patient.name.prefix",
      "path" : "Patient.name.prefix",
      "max" : "0"
    },
    {
      "id" : "Patient.name.suffix",
      "path" : "Patient.name.suffix",
      "max" : "0"
    },
    {
      "id" : "Patient.name.period",
      "path" : "Patient.name.period",
      "max" : "0"
    },
    {
      "id" : "Patient.telecom",
      "path" : "Patient.telecom",
      "max" : "0"
    },
    {
      "id" : "Patient.gender",
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
      "path" : "Patient.gender",
      "short" : "Administratives Geschlecht des Patienten",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Geschlecht"
      },
      {
        "identity" : "KaOrg",
        "map" : "Geschlecht des Hauptversicherten"
      },
      {
        "identity" : "KaOrg",
        "map" : "Geschlecht des Mitversicherten"
      },
      {
        "identity" : "KaOrg",
        "map" : "Geschlecht"
      }]
    },
    {
      "id" : "Patient.gender.extension:AdministrativeGenderAddition",
      "path" : "Patient.gender.extension",
      "sliceName" : "AdministrativeGenderAddition",
      "mustSupport" : true
    },
    {
      "id" : "Patient.birthDate",
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
      "path" : "Patient.birthDate",
      "short" : "Geburtsdatum des Patienten",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Geburtsdatum"
      },
      {
        "identity" : "KaOrg",
        "map" : "Geburtsdatum des Hauptversicherten"
      },
      {
        "identity" : "KaOrg",
        "map" : "Geburtsdatum des Mitversicherten"
      },
      {
        "identity" : "KaOrg",
        "map" : "Geburtsdatum"
      }]
    },
    {
      "id" : "Patient.birthDate.extension:birthTime",
      "path" : "Patient.birthDate.extension",
      "sliceName" : "birthTime",
      "max" : "0"
    },
    {
      "id" : "Patient.deceased[x]",
      "path" : "Patient.deceased[x]",
      "max" : "0"
    },
    {
      "id" : "Patient.deceased[x]:deceasedBoolean",
      "path" : "Patient.deceased[x]",
      "sliceName" : "deceasedBoolean",
      "max" : "0",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Patient.deceased[x]:deceasedDateTime",
      "path" : "Patient.deceased[x]",
      "sliceName" : "deceasedDateTime",
      "max" : "0",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Patient.address",
      "path" : "Patient.address",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address.extension",
      "path" : "Patient.address.extension",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address.extension:municipalityCode",
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
      "path" : "Patient.address.extension",
      "sliceName" : "municipalityCode",
      "short" : "Wohnsitz – Gemeindecode",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Wohnsitz – Gemeindecode"
      }]
    },
    {
      "id" : "Patient.address.use",
      "path" : "Patient.address.use",
      "max" : "0"
    },
    {
      "id" : "Patient.address.type",
      "path" : "Patient.address.type",
      "max" : "0"
    },
    {
      "id" : "Patient.address.text",
      "path" : "Patient.address.text",
      "max" : "0"
    },
    {
      "id" : "Patient.address.line.extension:street",
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
      "path" : "Patient.address.line.extension",
      "sliceName" : "street",
      "short" : "Wohnadresse",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "Wohandresse des Patienten - Straße"
      }]
    },
    {
      "id" : "Patient.address.city",
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
      "path" : "Patient.address.city",
      "short" : "Wohnort",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "Wohnadresse des Patienten - Ort"
      }]
    },
    {
      "id" : "Patient.address.state",
      "path" : "Patient.address.state",
      "max" : "0"
    },
    {
      "id" : "Patient.address.postalCode",
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
      "path" : "Patient.address.postalCode",
      "short" : "Wohnsitz – Postleitzahl",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Wohnsitz – Postleitzahl"
      },
      {
        "identity" : "KaOrg",
        "map" : "Wohnadresse des Patienten - Postleitzahl"
      },
      {
        "identity" : "KaOrg",
        "map" : "Hauptwohnsitz Postleitzahl"
      }]
    },
    {
      "id" : "Patient.address.country",
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
      "path" : "Patient.address.country",
      "short" : "Wohnsitz – Staat",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Wohnsitz – Staat"
      },
      {
        "identity" : "KaOrg",
        "map" : "Wohnadresse des Patienten - Länderkennzeichen"
      },
      {
        "identity" : "KaOrg",
        "map" : "Hauptwohnsitz Staat"
      }]
    },
    {
      "id" : "Patient.maritalStatus",
      "path" : "Patient.maritalStatus",
      "max" : "0"
    },
    {
      "id" : "Patient.multipleBirth[x]",
      "path" : "Patient.multipleBirth[x]",
      "max" : "0"
    },
    {
      "id" : "Patient.multipleBirth[x]:multipleBirthBoolean",
      "path" : "Patient.multipleBirth[x]",
      "sliceName" : "multipleBirthBoolean",
      "max" : "0",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Patient.multipleBirth[x]:multipleBirthInteger",
      "path" : "Patient.multipleBirth[x]",
      "sliceName" : "multipleBirthInteger",
      "max" : "0",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Patient.photo",
      "path" : "Patient.photo",
      "max" : "0"
    },
    {
      "id" : "Patient.contact",
      "path" : "Patient.contact",
      "max" : "0"
    },
    {
      "id" : "Patient.communication",
      "path" : "Patient.communication",
      "max" : "0"
    },
    {
      "id" : "Patient.generalPractitioner",
      "path" : "Patient.generalPractitioner",
      "max" : "0"
    },
    {
      "id" : "Patient.managingOrganization",
      "path" : "Patient.managingOrganization",
      "max" : "0"
    },
    {
      "id" : "Patient.link",
      "path" : "Patient.link",
      "max" : "0"
    }]
  }
}

```
