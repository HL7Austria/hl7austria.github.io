# ELGA.MOPED\Claim Subtype CodeSystem - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Claim Subtype CodeSystem**

## CodeSystem: Claim Subtype CodeSystem (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/MopedClaimSubTypeCS | *Version*:0.1.0 | |
| Active as of 2026-04-23 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedClaimSubTypeCS |

 
CodeSystem für die Arten der Claims/ClaimResponses 

 This Code system is referenced in the content logical definition of the following value sets: 

* [KostenmeldungARKVS](ValueSet-KostenmeldungARKVS.md)
* [MopedLKFRequestSubTypeVS](ValueSet-MopedLKFRequestSubTypeVS.md)
* [MopedVAERequestSubTypeVS](ValueSet-MopedVAERequestSubTypeVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "MopedClaimSubTypeCS",
  "url" : "https://elga.moped.at/CodeSystem/MopedClaimSubTypeCS",
  "version" : "0.1.0",
  "name" : "MopedClaimSubTypeCS",
  "title" : "Claim Subtype CodeSystem",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-04-23T07:59:48+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "CodeSystem für die Arten der Claims/ClaimResponses",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "A",
    "display" : "Ausländerverrechnung"
  },
  {
    "code" : "R",
    "display" : "Regressangelegenheiten"
  },
  {
    "code" : "K",
    "display" : "Kosteninformation"
  },
  {
    "code" : "VAEREQI",
    "display" : "initiale VAE"
  },
  {
    "code" : "VAEREQV",
    "display" : "VAE Verlängerung"
  },
  {
    "code" : "LKFREQENDG",
    "display" : "LKF Endgültige Meldung"
  },
  {
    "code" : "LKFREQVORL",
    "display" : "LKF Vorläufige Meldung"
  }]
}

```
