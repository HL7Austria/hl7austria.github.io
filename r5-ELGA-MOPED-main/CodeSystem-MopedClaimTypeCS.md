# ELGA.MOPED\Claim Type CodeSystem - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Claim Type CodeSystem**

## CodeSystem: Claim Type CodeSystem 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/MopedClaimTypeCS | *Version*:0.1.0 | |
| Draft as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedClaimTypeCS |

 
CodeSystem für die Arten der Claims/ClaimResponses 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CompositionSectionsVS](ValueSet-CompositionSectionsVS.md)
* [MopedClaimTypeVS](ValueSet-MopedClaimTypeVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "MopedClaimTypeCS",
  "url" : "https://elga.moped.at/CodeSystem/MopedClaimTypeCS",
  "version" : "0.1.0",
  "name" : "MopedClaimTypeCS",
  "title" : "Claim Type CodeSystem",
  "status" : "draft",
  "date" : "2026-04-07T19:34:12+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "CodeSystem für die Arten der Claims/ClaimResponses",
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "VAEREQ",
    "display" : "VAE Request"
  },
  {
    "code" : "VAERESP",
    "display" : "VAE Response"
  },
  {
    "code" : "LKFREQ",
    "display" : "LKF Request"
  },
  {
    "code" : "LKFRESP",
    "display" : "LKF Response"
  },
  {
    "code" : "ARKREQ",
    "display" : "ARK Request"
  },
  {
    "code" : "ARKRESP",
    "display" : "ARK Response"
  }]
}

```
