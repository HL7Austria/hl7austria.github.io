# ELGA.MOPED\AT MOPED Claim VAERequest Initiales Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Claim VAERequest Initiales Profil**

## Resource Profile: AT MOPED Claim VAERequest Initiales Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-claim-VAE-request-initial | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedClaimVAERequestInitial |

 
MOPED Profile der Claim Ressource für die initiale Anfrage der Versichertenanspruchserklärung (VAE) 

**Usages:**

* Use this Profile: [AT MOPED Bundle $anfragen KA Profil](StructureDefinition-at-moped-bundle-anfragen-KA.md)
* Refer to this Profile: [AT MOPED Claim VAERequest Verlängerungs Profil](StructureDefinition-at-moped-claim-vaerequest-verlaengerung.md), [AT MOPED ClaimResponse VAEResponse generisches Profil](StructureDefinition-at-moped-claimresponse-vaeresponse-generisch.md) and [AT MOPED Composition generisches Profil](StructureDefinition-at-moped-composition-generisch.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-claim-VAE-request-initial.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-claim-VAE-request-initial.csv), [Excel](StructureDefinition-at-moped-claim-VAE-request-initial.xlsx), [Schematron](StructureDefinition-at-moped-claim-VAE-request-initial.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-claim-VAE-request-initial",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-claim-VAE-request-initial",
  "version" : "0.1.0",
  "name" : "AtMopedClaimVAERequestInitial",
  "title" : "AT MOPED Claim VAERequest Initiales Profil",
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
  "description" : "MOPED Profile der Claim Ressource für die initiale Anfrage der Versichertenanspruchserklärung (VAE)",
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
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/at-moped-claim-vaerequest-basis",
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
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        },
        {
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
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
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        },
        {
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
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
