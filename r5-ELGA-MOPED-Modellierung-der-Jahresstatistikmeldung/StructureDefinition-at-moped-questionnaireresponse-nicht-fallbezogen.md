# ELGA.MOPED\AT MOPED QuestionnaireResponse nicht fallbezogenes Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED QuestionnaireResponse nicht fallbezogenes Profil**

## Resource Profile: AT MOPED QuestionnaireResponse nicht fallbezogenes Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-questionnaireresponse-nicht-fallbezogen | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedQuestionnaireResponseNichtFallbezogen |

 
MOPED Profil der QuestionnaireResponse Ressource für QuestionnaireResponses die im Kontext von Moped ohne Fallbezug erhoben werden 

**Usages:**

* Use this Profile: [AT MOPED Bundle QuestionnaireResponse $einmelden Profil](StructureDefinition-at-moped-bundle-questionnaireresponse-einmelden-KA.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-questionnaireresponse-nicht-fallbezogen.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-questionnaireresponse-nicht-fallbezogen.csv), [Excel](StructureDefinition-at-moped-questionnaireresponse-nicht-fallbezogen.xlsx), [Schematron](StructureDefinition-at-moped-questionnaireresponse-nicht-fallbezogen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-questionnaireresponse-nicht-fallbezogen",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-questionnaireresponse-nicht-fallbezogen",
  "version" : "0.1.0",
  "name" : "AtMopedQuestionnaireResponseNichtFallbezogen",
  "title" : "AT MOPED QuestionnaireResponse nicht fallbezogenes Profil",
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
  "description" : "MOPED Profil der QuestionnaireResponse Ressource für QuestionnaireResponses die im Kontext von Moped ohne Fallbezug erhoben werden",
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
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-KA"]
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
