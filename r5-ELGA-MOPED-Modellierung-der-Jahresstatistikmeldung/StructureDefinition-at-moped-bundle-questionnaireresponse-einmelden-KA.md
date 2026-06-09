# ELGA.MOPED\AT MOPED Bundle QuestionnaireResponse $einmelden Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Bundle QuestionnaireResponse $einmelden Profil**

## Resource Profile: AT MOPED Bundle QuestionnaireResponse $einmelden Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-bundle-questionnaireresponse-einmelden-KA | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedBundleQuestionnaireResponseEinmeldenKA |

 
MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Einmelden von nicht fallspezifischen QuestionnaireResponses 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-bundle-questionnaireresponse-einmelden-KA.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-bundle-questionnaireresponse-einmelden-KA.csv), [Excel](StructureDefinition-at-moped-bundle-questionnaireresponse-einmelden-KA.xlsx), [Schematron](StructureDefinition-at-moped-bundle-questionnaireresponse-einmelden-KA.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-bundle-questionnaireresponse-einmelden-KA",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-bundle-questionnaireresponse-einmelden-KA",
  "version" : "0.1.0",
  "name" : "AtMopedBundleQuestionnaireResponseEinmeldenKA",
  "title" : "AT MOPED Bundle QuestionnaireResponse $einmelden Profil",
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
  "description" : "MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Einmelden von nicht fallspezifischen QuestionnaireResponses",
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
        "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-questionnaireresponse-nicht-fallbezogen"]
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
