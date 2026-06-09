# ELGA.MOPED\AT MOPED Claim LKFRequest Basis Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Claim LKFRequest Basis Profil**

## Resource Profile: AT MOPED Claim LKFRequest Basis Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-claim-lkfrequest-basis | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedClaimLKFRequestBasis |

 
MOPED Basis Profil der Claim Ressource für die Leistungsabrechnungsanfrage. 

**Usages:**

* Use this Profile: [AT MOPED Bundle $abrechnen KA Profil](StructureDefinition-at-moped-bundle-abrechnen-KA.md)
* Refer to this Profile: [MOPED ARKRequest](StructureDefinition-MopedARKRequest.md), [AT MOPED Claim LKFRequest generisches Profil](StructureDefinition-at-moped-claim-lkfrequest-generisch.md), [AT MOPED ClaimResponse LKFResponse generisches Profil](StructureDefinition-at-moped-claimresponse-lkfresponse-generisch.md) and [AT MOPED Composition generisches Profil](StructureDefinition-at-moped-composition-generisch.md)
* Examples for this Profile: [Claim/PJ1LKFRequest1](Claim-PJ1LKFRequest1.md) and [Claim/PJ2LKFRequest1](Claim-PJ2LKFRequest1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-claim-lkfrequest-basis.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-claim-lkfrequest-basis.csv), [Excel](StructureDefinition-at-moped-claim-lkfrequest-basis.xlsx), [Schematron](StructureDefinition-at-moped-claim-lkfrequest-basis.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-claim-lkfrequest-basis",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-claim-lkfrequest-basis",
  "version" : "0.1.0",
  "name" : "AtMopedClaimLKFRequestBasis",
  "title" : "AT MOPED Claim LKFRequest Basis Profil",
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
  "description" : "MOPED Basis Profil der Claim Ressource für die Leistungsabrechnungsanfrage.",
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
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/at-moped-claim-lkfrequest-generisch",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Claim",
      "path" : "Claim"
    }]
  }
}

```
