# ELGA.MOPED\AT MOPED Procedure Basis Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Procedure Basis Profil**

## Resource Profile: AT MOPED Procedure Basis Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-procedure-basis | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedProcedureBasis |

 
MOPED Basis Profil der Procedure Ressource für Leistungen 

**Usages:**

* Use this Profile: [AT MOPED Bundle Input KA Profil](StructureDefinition-at-moped-bundle-input-KA.md)
* Refer to this Profile: [AT MOPED Claim LKFRequest generisches Profil](StructureDefinition-at-moped-claim-lkfrequest-generisch.md) and [AT MOPED Composition generisches Profil](StructureDefinition-at-moped-composition-generisch.md)
* Examples for this Profile: [Procedure/PJ1Procedure1](Procedure-PJ1Procedure1.md), [Procedure/PJ2Procedure1](Procedure-PJ2Procedure1.md) and [Procedure/PJ2Procedure2](Procedure-PJ2Procedure2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-procedure-basis.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-procedure-basis.csv), [Excel](StructureDefinition-at-moped-procedure-basis.xlsx), [Schematron](StructureDefinition-at-moped-procedure-basis.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-procedure-basis",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-procedure-basis",
  "version" : "0.1.0",
  "name" : "AtMopedProcedureBasis",
  "title" : "AT MOPED Procedure Basis Profil",
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
  "description" : "MOPED Basis Profil der Procedure Ressource für Leistungen",
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
  "type" : "Procedure",
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/at-moped-procedure-generisch",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    }]
  }
}

```
