# ELGA.MOPED\AT MOPED ClaimResponse VAEResponse Basis Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED ClaimResponse VAEResponse Basis Profil**

## Resource Profile: AT MOPED ClaimResponse VAEResponse Basis Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-claimresponse-vaeresponse-basis | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedClaimResponseVAEResponseBasis |

 
MOPED Basis Profil der ClaimResponse Ressource für die Beantwortung der Versichertenanspruchserklärung VAE. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-claimresponse-vaeresponse-basis.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-claimresponse-vaeresponse-basis.csv), [Excel](StructureDefinition-at-moped-claimresponse-vaeresponse-basis.xlsx), [Schematron](StructureDefinition-at-moped-claimresponse-vaeresponse-basis.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-claimresponse-vaeresponse-basis",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-claimresponse-vaeresponse-basis",
  "version" : "0.1.0",
  "name" : "AtMopedClaimResponseVAEResponseBasis",
  "title" : "AT MOPED ClaimResponse VAEResponse Basis Profil",
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
  "description" : "MOPED Basis Profil der ClaimResponse Ressource für die Beantwortung der Versichertenanspruchserklärung VAE.",
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
  "type" : "ClaimResponse",
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/at-moped-claimresponse-vaeresponse-generisch",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ClaimResponse",
      "path" : "ClaimResponse"
    }]
  }
}

```
