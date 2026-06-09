# ELGA.MOPED\AT MOPED Claim VAERequest Basis Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Claim VAERequest Basis Profil**

## Resource Profile: AT MOPED Claim VAERequest Basis Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-claim-vaerequest-basis | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedClaimVAERequestBasis |

 
MOPED Basis Profil der Claim Ressource für die Anfrage der Versichertenanspruchserklärung VAE. 

**Usages:**

* Derived from this Profile: [AT MOPED Claim VAERequest Initiales Profil](StructureDefinition-at-moped-claim-VAE-request-initial.md) and [AT MOPED Claim VAERequest Verlängerungs Profil](StructureDefinition-at-moped-claim-vaerequest-verlaengerung.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-claim-vaerequest-basis.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-claim-vaerequest-basis.csv), [Excel](StructureDefinition-at-moped-claim-vaerequest-basis.xlsx), [Schematron](StructureDefinition-at-moped-claim-vaerequest-basis.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-claim-vaerequest-basis",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-claim-vaerequest-basis",
  "version" : "0.1.0",
  "name" : "AtMopedClaimVAERequestBasis",
  "title" : "AT MOPED Claim VAERequest Basis Profil",
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
  "description" : "MOPED Basis Profil der Claim Ressource für die Anfrage der Versichertenanspruchserklärung VAE.",
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
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/at-moped-claim-vaerequest-generisch",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Claim",
      "path" : "Claim"
    }]
  }
}

```
