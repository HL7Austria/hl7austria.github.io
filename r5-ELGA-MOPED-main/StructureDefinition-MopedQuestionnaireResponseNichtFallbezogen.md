# ELGA.MOPED\Moped QuestionnaireResponse nicht fallbezogen - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Moped QuestionnaireResponse nicht fallbezogen**

## Resource Profile: Moped QuestionnaireResponse nicht fallbezogen 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedQuestionnaireResponseNichtFallbezogen | *Version*:0.1.0 | |
| Draft as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedQuestionnaireResponseNichtFallbezogen |

 
MOPED Profil für QuestionnaireResponses die im Kontext von Moped ohne Fallbezug erhoben werden 

**Usages:**

* Use this Profile: [MOPED QuestionnaireResponse einmelden Bundle](StructureDefinition-MopedQuestionnaireResponseEinmeldenBundle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedQuestionnaireResponseNichtFallbezogen)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedQuestionnaireResponseNichtFallbezogen.csv), [Excel](StructureDefinition-MopedQuestionnaireResponseNichtFallbezogen.xlsx), [Schematron](StructureDefinition-MopedQuestionnaireResponseNichtFallbezogen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedQuestionnaireResponseNichtFallbezogen",
  "url" : "https://elga.moped.at/StructureDefinition/MopedQuestionnaireResponseNichtFallbezogen",
  "version" : "0.1.0",
  "name" : "MopedQuestionnaireResponseNichtFallbezogen",
  "title" : "Moped QuestionnaireResponse nicht fallbezogen",
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
  "description" : "MOPED Profil für QuestionnaireResponses die im Kontext von Moped ohne Fallbezug erhoben werden",
  "fhirVersion" : "5.0.0",
  "kind" : "resource",
  "abstract" : false,
  "type" : "QuestionnaireResponse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "QuestionnaireResponse.authored",
      "path" : "QuestionnaireResponse.authored",
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.author",
      "path" : "QuestionnaireResponse.author",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/KHOrganization"]
      }]
    },
    {
      "id" : "QuestionnaireResponse.item",
      "path" : "QuestionnaireResponse.item",
      "min" : 1
    }]
  }
}

```
