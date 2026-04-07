# ELGA.MOPED\MOPED QuestionnaireResponse einmelden Bundle - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED QuestionnaireResponse einmelden Bundle**

## Resource Profile: MOPED QuestionnaireResponse einmelden Bundle 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedQuestionnaireResponseEinmeldenBundle | *Version*:0.1.0 | |
| Draft as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedQuestionnaireResponseEinmeldenBundle |

 
Bundle für die Input-Ressourcen beim Einmelden von nicht fallspezifischen QuestionnaireResponses 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedQuestionnaireResponseEinmeldenBundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedQuestionnaireResponseEinmeldenBundle.csv), [Excel](StructureDefinition-MopedQuestionnaireResponseEinmeldenBundle.xlsx), [Schematron](StructureDefinition-MopedQuestionnaireResponseEinmeldenBundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedQuestionnaireResponseEinmeldenBundle",
  "url" : "https://elga.moped.at/StructureDefinition/MopedQuestionnaireResponseEinmeldenBundle",
  "version" : "0.1.0",
  "name" : "MopedQuestionnaireResponseEinmeldenBundle",
  "title" : "MOPED QuestionnaireResponse einmelden Bundle",
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
  "description" : "Bundle für die Input-Ressourcen beim Einmelden von nicht fallspezifischen QuestionnaireResponses",
  "fhirVersion" : "5.0.0",
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "patternCode" : "transaction"
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "min" : 1
    },
    {
      "id" : "Bundle.entry.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "QuestionnaireResponse",
        "profile" : ["https://elga.moped.at/StructureDefinition/MopedQuestionnaireResponseNichtFallbezogen"]
      }]
    },
    {
      "id" : "Bundle.entry.request.method",
      "path" : "Bundle.entry.request.method",
      "short" : "POST | PUT | DELETE",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbInsertUpdateDeleteVS"
      }
    }]
  }
}

```
