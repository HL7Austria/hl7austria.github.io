# ELGA.MOPED\MOPED Condition - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Condition**

## Resource Profile: MOPED Condition 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedCondition | *Version*:0.1.0 | |
| Draft as of 2026-03-01 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedCondition |

 
MOPED Profil der Condition Ressource für die LDF-Abrechnung 

**Usages:**

* Use this Profile: [MOPED Input Bundle KH](StructureDefinition-MopedInputBundleKH.md)
* Refer to this Profile: [MOPED Composition](StructureDefinition-MopedComposition.md), [MOPED LKFRequest](StructureDefinition-MopedLKFRequest.md) and [MOPED VAERequest](StructureDefinition-MopedVAERequest.md)
* Examples for this Profile: [Condition/Condition42.1](Condition-Condition42.1.md), [Condition/PJ1Condition1](Condition-PJ1Condition1.md), [Condition/PJ2Condition1](Condition-PJ2Condition1.md) and [Condition/PJ2Condition2](Condition-PJ2Condition2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedCondition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedCondition.csv), [Excel](StructureDefinition-MopedCondition.xlsx), [Schematron](StructureDefinition-MopedCondition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedCondition",
  "url" : "https://elga.moped.at/StructureDefinition/MopedCondition",
  "version" : "0.1.0",
  "name" : "MopedCondition",
  "title" : "MOPED Condition",
  "status" : "draft",
  "date" : "2026-03-01T19:57:07+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Profil der Condition Ressource für die LDF-Abrechnung",
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
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition.extension",
      "path" : "Condition.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Condition.extension:Diagnosetyp",
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
      "path" : "Condition.extension",
      "sliceName" : "Diagnosetyp",
      "short" : "LKF: Diagnose – Typ; KaOrg: Hauptdiagnose oder Zusatzdiagnose",
      "min" : 1,
      "max" : "2",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://elga.moped.at/StructureDefinition/moped-ext-Diagnosetyp"]
      }],
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Diagnose – Typ"
      },
      {
        "identity" : "KaOrg",
        "map" : "Hauptdiagnose oder Zusatzdiagnose"
      }]
    },
    {
      "id" : "Condition.clinicalStatus",
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
      "path" : "Condition.clinicalStatus"
    },
    {
      "id" : "Condition.verificationStatus",
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
      "path" : "Condition.verificationStatus",
      "short" : "LKF: Diagnose – Art",
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Diagnose – Art"
      }]
    },
    {
      "id" : "Condition.code",
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
      "path" : "Condition.code",
      "min" : 1
    },
    {
      "id" : "Condition.code.coding",
      "path" : "Condition.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Condition.code.coding:ICD10",
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
      "path" : "Condition.code.coding",
      "sliceName" : "ICD10",
      "short" : "LKF: Diagnose – Code; KaOrg: Diganose 1, ICD10 BMSGPK Schlüssel; KaOrg: Diagnose 1, Untergliederung 1; KaOrg: Diagnose 1, Untergliederung 2; KaOrg: Diganose 2, ICD10 BMSGPK Schlüssel; KaOrg: Diagnose 2, Untergliederung 1; KaOrg: Diagnose 2, Untergliederung 2; KaOrg: Diganose 3, ICD10 BMSGPK Schlüssel; KaOrg: Diagnose 3, Untergliederung 1; KaOrg: Diagnose 3, Untergliederung 2; KaOrg: Hauptdiagnose ICD 10 BMSGPK Schlüssel; KaOrg: Hauptdiagnose Untergliederung 1; KaOrg: Hauptdiagnose Untergliederung 2, KaOrg: Zusatzdiagnose 1, ICD 10 BMSGPK Schlüssel; KaOrg: Zusatzdiagnose 1, Untergliederung 1; KaOrg: Zusatzdiagnose 1, Untergliederung 2;",
      "min" : 1,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/ICD10ATVS"
      },
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Diagnose – Code"
      },
      {
        "identity" : "KaOrg",
        "map" : "Diganose 1 - ICD10 BMSGPK Schlüssel"
      },
      {
        "identity" : "KaOrg",
        "map" : "Diagnose 1 - Untergliederung 1"
      },
      {
        "identity" : "KaOrg",
        "map" : "Diagnose 1 - Untergliederung 2"
      },
      {
        "identity" : "KaOrg",
        "map" : "Diganose 2 - ICD10 BMSGPK Schlüssel"
      },
      {
        "identity" : "KaOrg",
        "map" : "Diagnose 2 - Untergliederung 1"
      },
      {
        "identity" : "KaOrg",
        "map" : "Diagnose 2 - Untergliederung 2"
      },
      {
        "identity" : "KaOrg",
        "map" : "Diganose 3 - ICD10 BMSGPK Schlüssel"
      },
      {
        "identity" : "KaOrg",
        "map" : "Diagnose 3 - Untergliederung 1"
      },
      {
        "identity" : "KaOrg",
        "map" : "Diagnose 3 - Untergliederung 2"
      },
      {
        "identity" : "KaOrg",
        "map" : "Hauptdiagnose ICD 10 BMSGPK Schlüssel"
      },
      {
        "identity" : "KaOrg",
        "map" : "Hauptdiagnose Untergliederung 1"
      },
      {
        "identity" : "KaOrg",
        "map" : "Hauptdiagnose Untergliederung 2"
      },
      {
        "identity" : "KaOrg",
        "map" : "Zusatzdiagnose 1 - ICD 10 BMSGPK Schlüssel"
      },
      {
        "identity" : "KaOrg",
        "map" : "Zusatzdiagnose 1 - Untergliederung 1"
      },
      {
        "identity" : "KaOrg",
        "map" : "Zusatzdiagnose 1 - Untergliederung 2"
      }]
    },
    {
      "id" : "Condition.code.coding:ICD10.system",
      "path" : "Condition.code.coding.system",
      "min" : 1,
      "patternUri" : "https://termgit.elga.gv.at/CodeSystem/icd-10-bmsgpk-2025"
    },
    {
      "id" : "Condition.code.coding:HDG",
      "path" : "Condition.code.coding",
      "sliceName" : "HDG",
      "min" : 0,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/LKFHauptdiagnosegruppenVS"
      }
    },
    {
      "id" : "Condition.code.coding:HDG.system",
      "path" : "Condition.code.coding.system",
      "min" : 1,
      "patternUri" : "https://elga.moped.at/CodeSystem/LKFHauptdiagnosegruppenCS"
    },
    {
      "id" : "Condition.subject",
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
      "path" : "Condition.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedPatient"]
      }]
    },
    {
      "id" : "Condition.encounter",
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
      "path" : "Condition.encounter",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedEncounter"]
      }]
    }]
  }
}

```
