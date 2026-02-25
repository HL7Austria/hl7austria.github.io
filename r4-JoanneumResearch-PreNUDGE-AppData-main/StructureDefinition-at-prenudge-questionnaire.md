# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Questionnaire - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Questionnaire**

## Resource Profile: AT PreNUDGE Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire | *Version*:0.1.0 | |
| Draft as of 2026-02-25 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeQuestionnaire |

 
This FHIR profile is defining the overall Questionnaire for PreNUDGE. Every top level item requires one comment subitem, with the linkId ending or equal 'comment'. 

**Usages:**

* Examples for this Profile: [AtPrenudgeQuestionnaireAlcoholUse](Questionnaire-AtPrenudgeQuestionnaireAlcoholUse.md), [QoLByRandSF36v1](Questionnaire-QolQuestionnaire.md) and [StepCountQuestionnaire](Questionnaire-StepCountQuestionnaire.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.prenudge.appdata.r4|current/StructureDefinition/at-prenudge-questionnaire)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-prenudge-questionnaire.csv), [Excel](StructureDefinition-at-prenudge-questionnaire.xlsx), [Schematron](StructureDefinition-at-prenudge-questionnaire.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-prenudge-questionnaire",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire",
  "version" : "0.1.0",
  "name" : "AtPrenudgeQuestionnaire",
  "title" : "AT PreNUDGE Questionnaire",
  "status" : "draft",
  "date" : "2026-02-25T07:03:20+00:00",
  "publisher" : "The PreNUDGE Consortium",
  "contact" : [{
    "name" : "The PreNUDGE Consortium",
    "telecom" : [{
      "system" : "url",
      "value" : "https://prenudge.at"
    }]
  },
  {
    "name" : "The PreNUDGE Consortium",
    "telecom" : [{
      "system" : "url",
      "value" : "https://prenudge.at",
      "use" : "work"
    }]
  }],
  "description" : "This FHIR profile is defining the overall Questionnaire for PreNUDGE. Every top level item requires one comment subitem, with the linkId ending or equal 'comment'.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "objimpl",
    "uri" : "http://hl7.org/fhir/object-implementation",
    "name" : "Object Implementation Information"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Questionnaire",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Questionnaire",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Questionnaire",
      "path" : "Questionnaire"
    },
    {
      "id" : "Questionnaire.item",
      "path" : "Questionnaire.item",
      "constraint" : [{
        "key" : "at-prenudge-every-item-has-comment",
        "severity" : "error",
        "human" : "Jedes top-level Item muss genau ein Unter-Item enthalten, dessen linkId auf 'comment' endet",
        "expression" : "item.where(linkId.endsWith('comment') and type = 'string').count() = 1",
        "source" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire"
      }]
    }]
  }
}

```
