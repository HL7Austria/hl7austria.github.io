# ELGA.MOPED\MOPED VAERequest für die initiale Anfrage der VAE - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED VAERequest für die initiale Anfrage der VAE**

## Resource Profile: MOPED VAERequest für die initiale Anfrage der VAE 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedVAERequestInitial | *Version*:0.1.0 | |
| Draft as of 2026-03-29 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedVAERequestInitial |

 
MOPED Profil für die initiale Anfrage der Versichertenanspruchserklärung (VAE) 

**Usages:**

* Use this Profile: [MOPED Anfragen Bundle KH](StructureDefinition-MopedAnfragenBundleKH.md)
* Refer to this Profile: [MOPED Composition](StructureDefinition-MopedComposition.md), [MOPED VAERequest für die Verlängerung der VAE](StructureDefinition-MopedVAERequestVerlaengerung.md) and [MOPED VAEResponse](StructureDefinition-MopedVAEResponse.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedVAERequestInitial)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedVAERequestInitial.csv), [Excel](StructureDefinition-MopedVAERequestInitial.xlsx), [Schematron](StructureDefinition-MopedVAERequestInitial.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedVAERequestInitial",
  "url" : "https://elga.moped.at/StructureDefinition/MopedVAERequestInitial",
  "version" : "0.1.0",
  "name" : "MopedVAERequestInitial",
  "title" : "MOPED VAERequest für die initiale Anfrage der VAE",
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
  "description" : "MOPED Profil für die initiale Anfrage der Versichertenanspruchserklärung (VAE)",
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
          "code" : "VAEREQI"
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
      "short" : "KaOrg: VAE Beginndatum",
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "VAE Beginndatum"
      }]
    }]
  }
}

```
