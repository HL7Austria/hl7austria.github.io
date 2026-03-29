# ELGA.MOPED\MOPED VAERequest für die Verlängerung der VAE - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED VAERequest für die Verlängerung der VAE**

## Resource Profile: MOPED VAERequest für die Verlängerung der VAE 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedVAERequestVerlaengerung | *Version*:0.1.0 | |
| Draft as of 2026-03-29 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedVAERequestVerlaengerung |

 
MOPED Profil für die Verlängerung der Versichertenanspruchserklärung (VAE) 

**Usages:**

* Use this Profile: [MOPED Anfragen Bundle KH](StructureDefinition-MopedAnfragenBundleKH.md)
* Refer to this Profile: [MOPED Composition](StructureDefinition-MopedComposition.md), [MOPED VAERequest für die Verlängerung der VAE](StructureDefinition-MopedVAERequestVerlaengerung.md) and [MOPED VAEResponse](StructureDefinition-MopedVAEResponse.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedVAERequestVerlaengerung)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedVAERequestVerlaengerung.csv), [Excel](StructureDefinition-MopedVAERequestVerlaengerung.xlsx), [Schematron](StructureDefinition-MopedVAERequestVerlaengerung.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedVAERequestVerlaengerung",
  "url" : "https://elga.moped.at/StructureDefinition/MopedVAERequestVerlaengerung",
  "version" : "0.1.0",
  "name" : "MopedVAERequestVerlaengerung",
  "title" : "MOPED VAERequest für die Verlängerung der VAE",
  "status" : "draft",
  "date" : "2026-03-29T08:30:46+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Profil für die Verlängerung der Versichertenanspruchserklärung (VAE)",
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
  "type" : "Claim",
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/MopedVAERequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Claim.subType",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        },
        {
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.subType",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://elga.moped.at/CodeSystem/MopedClaimSubTypeCS",
          "code" : "VAEREQV"
        }]
      }
    },
    {
      "id" : "Claim.billablePeriod.start",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        },
        {
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.billablePeriod.start",
      "short" : "KaOrg: Ereignis-/Unfalldatum (Verlängerungsdatum)",
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "Ereignis-/Unfalldatum (Verlängerungsdatum)"
      }]
    },
    {
      "id" : "Claim.billablePeriod.end",
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
      "path" : "Claim.billablePeriod.end",
      "short" : "KaOrg: Anzahl der Verlängerungstage",
      "min" : 1,
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "Anzahl der Verlängerungstage"
      }]
    },
    {
      "id" : "Claim.related",
      "path" : "Claim.related",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "claim.resolve().subType"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Claim.related:InitialeVAE",
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
      "path" : "Claim.related",
      "sliceName" : "InitialeVAE",
      "short" : "Initiale Anfrage der VAE",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Claim.related:InitialeVAE.claim",
      "path" : "Claim.related.claim",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : false
        }],
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedVAERequestInitial"]
      }]
    },
    {
      "id" : "Claim.related:InitialeVAE.relationship",
      "path" : "Claim.related.relationship",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/ex-relatedclaimrelationship",
          "code" : "prior"
        }]
      }
    },
    {
      "id" : "Claim.related:VerlaengerteVAE",
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
      "path" : "Claim.related",
      "sliceName" : "VerlaengerteVAE",
      "short" : "Vorherige Verlängerungsanfrage der VAE",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Claim.related:VerlaengerteVAE.claim",
      "path" : "Claim.related.claim",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : false
        }],
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedVAERequestVerlaengerung"]
      }]
    },
    {
      "id" : "Claim.related:VerlaengerteVAE.relationship",
      "path" : "Claim.related.relationship",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/ex-relatedclaimrelationship",
          "code" : "prior"
        }]
      }
    }]
  }
}

```
