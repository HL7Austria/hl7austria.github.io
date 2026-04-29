# ELGA.MOPED\MOPED Patient - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Patient**

## Resource Profile: MOPED Patient 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedPatient | *Version*:0.1.0 | |
| Draft as of 2026-04-29 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedPatient |

 
MOPED Profil der Patient Ressource 

**Usages:**

* Derived from this Profile: [MOPED Patient Bund](StructureDefinition-MopedPatientBund.md), [MOPED Patient LGF](StructureDefinition-MopedPatientLGF.md) and [MOPED Patient SV](StructureDefinition-MopedPatientSV.md)
* Use this Profile: [MOPED Input Bundle KA](StructureDefinition-MopedInputBundleKA.md)
* Refer to this Profile: [MOPED Hauptversicherter](StructureDefinition-Hauptversicherter.md), [MOPED ARKRequest](StructureDefinition-MopedARKRequest.md), [MOPED ARKResponse](StructureDefinition-MopedARKResponse.md), [MOPED Composition](StructureDefinition-MopedComposition.md)... Show 11 more, [MOPED Condition](StructureDefinition-MopedCondition.md), [MOPED Coverage](StructureDefinition-MopedCoverage.md), [MOPED Coverage für Selbstzahler](StructureDefinition-MopedCoverageSelbstzahler.md), [MOPED Encounter](StructureDefinition-MopedEncounter.md), [MOPED LKFRequest](StructureDefinition-MopedLKFRequest.md), [MOPED LKFResponse](StructureDefinition-MopedLKFResponse.md), [MOPED Procedure](StructureDefinition-MopedProcedure.md), [Moped QuestionnaireResponse fallbezogen](StructureDefinition-MopedQuestionnaireResponseFallbezogen.md), [MOPED TransferEncounter](StructureDefinition-MopedTransferEncounter.md), [MOPED VAERequest](StructureDefinition-MopedVAERequest.md) and [MOPED VAEResponse](StructureDefinition-MopedVAEResponse.md)
* Examples for this Profile: [Patient/PJ1Patient](Patient-PJ1Patient.md), [Patient/PJ2Patient](Patient-PJ2Patient.md) and [Patient/Test1PatientOhneMaskierung](Patient-Test1PatientOhneMaskierung.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedPatient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedPatient.csv), [Excel](StructureDefinition-MopedPatient.xlsx), [Schematron](StructureDefinition-MopedPatient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedPatient",
  "url" : "https://elga.moped.at/StructureDefinition/MopedPatient",
  "version" : "0.1.0",
  "name" : "MopedPatient",
  "title" : "MOPED Patient",
  "status" : "draft",
  "date" : "2026-04-29T09:14:27+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Profil der Patient Ressource",
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
      "id" : "Patient.extension:citizenship",
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
      "path" : "Patient.extension",
      "sliceName" : "citizenship",
      "short" : "LKF: Staatsbürgerschaft; KaOrg: Staatsbürgerschaftsschlüssel",
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
      "id" : "Patient.identifier:socialSecurityNumber",
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
      "path" : "Patient.identifier",
      "sliceName" : "socialSecurityNumber",
      "short" : "KaOrg: Versicherungsnummer des Hauptversicherten; KaOrg: Versicherungsnummer des Mitversicherten; Hier ist immer die SVNR des Patienten angegeben - je nachdem ob der Hauptversicherte selbst der Patient ist, ist hier die SVNR des Haupt- oder Mitversicherten angegeben",
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "Versicherungsnummer des Hauptversicherten"
      },
      {
        "identity" : "KaOrg",
        "map" : "Versicherungsnummer des Mitversicherten"
      }]
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
      "short" : "KaOrg: Zuname; KaOrg: Zuname des Hauptversicherten; KaOrg: Zuname des Mitversicherten; Vorname des Patienten - je nachdem ob es einen Mitversicherten gibt oder nicht ist das der Zuname des Mitversicherten oder des Hauptversicherten.",
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
      "short" : "KaOrg: Vorname; KaOrg: Vorname des Hauptversicherten; KaOrg: Vorname des Mitversicherten; Vorname des Patienten - je nachdem ob es einen Mitversicherten gibt oder nicht ist das der Vorname des Mitversicherten oder des Hauptversicherten.",
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
      "short" : "LKF: Geschlecht; KaOrg: Geschlecht des Hauptversicherten; KaOrg: Geschlecht des Mitversicherten; KaOrg: Geschlecht",
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
      "short" : "LKF: Geburtsdatum; KaOrg: Geburtsdatum des Hauptversicherten; KaOrg: Geburtsdatum des Mitversicherten; KaOrg: Geburtsdatum",
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
      "short" : "LKF: Wohnsitz – Gemeindecode ",
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Wohnsitz – Gemeindecode"
      }]
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
      "short" : "KaOrg: Wohandresse des Patienten, Straße",
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
      "short" : "KaOrg: Wohnadresse des Patienten - Ort",
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "Wohnadresse des Patienten - Ort"
      }]
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
      "short" : "LKF: Wohnsitz – Postleitzahl; KaOrg: Wohnadresse des Patienten - Postleitzahl",
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
      "short" : "LKF: Wohnsitz – Staat; KaOrg: Wohnadresse des Patienten - Länderkennzeichen",
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
    }]
  }
}

```
