# ELGA.MOPED\AT MOPED Coverage generisches Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Coverage generisches Profil**

## Resource Profile: AT MOPED Coverage generisches Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-coverage-generisch | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedCoverageGenerisch |

 
MOPED generisches Profil der Coverage Ressource 

**Usages:**

* Derived from this Profile: [AT MOPED Coverage Selbstzahler Basis Profil](StructureDefinition-at-moped-coverage-selbstzahler.md) and [AT MOPED Coverage Versicherter Basis Profil](StructureDefinition-at-moped-coverage-versicherter-basis.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-coverage-generisch.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-coverage-generisch.csv), [Excel](StructureDefinition-at-moped-coverage-generisch.xlsx), [Schematron](StructureDefinition-at-moped-coverage-generisch.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-coverage-generisch",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-coverage-generisch",
  "version" : "0.1.0",
  "name" : "AtMopedCoverageGenerisch",
  "title" : "AT MOPED Coverage generisches Profil",
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
  "description" : "MOPED generisches Profil der Coverage Ressource",
  "fhirVersion" : "5.0.0",
  "kind" : "resource",
  "abstract" : false,
  "type" : "Coverage",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Coverage",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Coverage",
      "path" : "Coverage"
    }]
  }
}

```
