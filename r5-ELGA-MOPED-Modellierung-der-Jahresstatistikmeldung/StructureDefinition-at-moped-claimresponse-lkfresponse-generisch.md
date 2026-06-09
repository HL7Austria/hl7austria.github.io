# ELGA.MOPED\AT MOPED ClaimResponse LKFResponse generisches Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED ClaimResponse LKFResponse generisches Profil**

## Resource Profile: AT MOPED ClaimResponse LKFResponse generisches Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-claimresponse-lkfresponse-generisch | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedClaimResponseLKFResponseGenerisch |

 
MOPED generisches Profil der ClaimResponse Ressource für die Leistungsabrechnungsantwort. 

**Usages:**

* Derived from this Profile: [AT MOPED ClaimResponse LKFResponse Basis Profil](StructureDefinition-at-moped-claimresponse-lkfresponse-basis.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-claimresponse-lkfresponse-generisch.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-claimresponse-lkfresponse-generisch.csv), [Excel](StructureDefinition-at-moped-claimresponse-lkfresponse-generisch.xlsx), [Schematron](StructureDefinition-at-moped-claimresponse-lkfresponse-generisch.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-claimresponse-lkfresponse-generisch",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-claimresponse-lkfresponse-generisch",
  "version" : "0.1.0",
  "name" : "AtMopedClaimResponseLKFResponseGenerisch",
  "title" : "AT MOPED ClaimResponse LKFResponse generisches Profil",
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
  "description" : "MOPED generisches Profil der ClaimResponse Ressource für die Leistungsabrechnungsantwort.",
  "fhirVersion" : "5.0.0",
  "kind" : "resource",
  "abstract" : false,
  "type" : "ClaimResponse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ClaimResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ClaimResponse.status",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedLGFActor"
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
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedLGFActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/MopedClaimTypeVS"
      }
    },
    {
      "id" : "ClaimResponse.type.coding",
      "path" : "ClaimResponse.type.coding",
      "fixedCoding" : {
        "system" : "https://elga.moped.at/CodeSystem/MopedClaimTypeCS",
        "code" : "LKFRESP"
      }
    },
    {
      "id" : "ClaimResponse.subType",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedLGFActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.subType",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/KostenmeldungARKVS"
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
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedLGFActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.use",
      "patternCode" : "claim"
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
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-patient-vbPK-basis",
        "https://elga.moped.at/StructureDefinition/at-moped-patient-klarname-basis"]
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
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedLGFActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.created"
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
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-KA"]
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
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedLGFActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.request",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-claim-lkfrequest-basis"]
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
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedLGFActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.outcome",
      "short" : "LKF Bewilligung/Ablehnung"
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
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedLGFActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.decision",
      "min" : 1
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
