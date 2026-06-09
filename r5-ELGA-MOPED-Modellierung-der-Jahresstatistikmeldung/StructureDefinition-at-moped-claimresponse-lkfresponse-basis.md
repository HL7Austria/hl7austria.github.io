# ELGA.MOPED\AT MOPED ClaimResponse LKFResponse Basis Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED ClaimResponse LKFResponse Basis Profil**

## Resource Profile: AT MOPED ClaimResponse LKFResponse Basis Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-claimresponse-lkfresponse-basis | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedClaimResponseLKFResponseBasis |

 
MOPED Basis Profil der ClaimResponse Ressource für die Leistungsabrechnungsantwort. 

**Usages:**

* Use this Profile: [AT MOPED Bundle $entscheiden LGF Profil](StructureDefinition-at-moped-bundle-entscheiden-LGF.md)
* Refer to this Profile: [AT MOPED Composition generisches Profil](StructureDefinition-at-moped-composition-generisch.md)
* Examples for this Profile: [ClaimResponse/PJ1LKFResponse1](ClaimResponse-PJ1LKFResponse1.md) and [ClaimResponse/PJ2LKFResponse1](ClaimResponse-PJ2LKFResponse1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-claimresponse-lkfresponse-basis.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-claimresponse-lkfresponse-basis.csv), [Excel](StructureDefinition-at-moped-claimresponse-lkfresponse-basis.xlsx), [Schematron](StructureDefinition-at-moped-claimresponse-lkfresponse-basis.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-claimresponse-lkfresponse-basis",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-claimresponse-lkfresponse-basis",
  "version" : "0.1.0",
  "name" : "AtMopedClaimResponseLKFResponseBasis",
  "title" : "AT MOPED ClaimResponse LKFResponse Basis Profil",
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
  "description" : "MOPED Basis Profil der ClaimResponse Ressource für die Leistungsabrechnungsantwort.",
  "fhirVersion" : "5.0.0",
  "kind" : "resource",
  "abstract" : false,
  "type" : "ClaimResponse",
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/at-moped-claimresponse-lkfresponse-generisch",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ClaimResponse",
      "path" : "ClaimResponse"
    }]
  }
}

```
