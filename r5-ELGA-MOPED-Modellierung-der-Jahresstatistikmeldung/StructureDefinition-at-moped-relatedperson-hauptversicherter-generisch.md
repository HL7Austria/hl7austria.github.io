# ELGA.MOPED\AT MOPED RelatedPerson generisches Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED RelatedPerson generisches Profil**

## Resource Profile: AT MOPED RelatedPerson generisches Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-relatedperson-hauptversicherter-generisch | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedRelatedPersonGenerisch |

 
MOPED generisches Profil der RelatedPerson Ressource 

**Usages:**

* Derived from this Profile: [AT MOPED RelatedPerson Hauptversicherter Basis Profil](StructureDefinition-at-moped-relatedperson-hauptversicherter-basis.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-relatedperson-hauptversicherter-generisch.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-relatedperson-hauptversicherter-generisch.csv), [Excel](StructureDefinition-at-moped-relatedperson-hauptversicherter-generisch.xlsx), [Schematron](StructureDefinition-at-moped-relatedperson-hauptversicherter-generisch.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-relatedperson-hauptversicherter-generisch",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-relatedperson-hauptversicherter-generisch",
  "version" : "0.1.0",
  "name" : "AtMopedRelatedPersonGenerisch",
  "title" : "AT MOPED RelatedPerson generisches Profil",
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
  "description" : "MOPED generisches Profil der RelatedPerson Ressource",
  "fhirVersion" : "5.0.0",
  "kind" : "resource",
  "abstract" : false,
  "type" : "RelatedPerson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RelatedPerson",
      "path" : "RelatedPerson"
    }]
  }
}

```
