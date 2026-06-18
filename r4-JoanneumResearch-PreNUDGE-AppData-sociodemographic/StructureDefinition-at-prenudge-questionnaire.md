# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Questionnaire - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Questionnaire**

## Resource Profile: AT PreNUDGE Questionnaire ( Abstract ) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire | *Version*:0.1.0 | |
| Draft as of 2026-06-18 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeQuestionnaire |

 
This FHIR profile is defining the overall Questionnaire for PreNUDGE. Every top level item requires one comment subitem, with the linkId ending or equal 'comment'. Be aware that if the user enters values from a device into a questionnaire, it is still considered a manual input. Please keep in mind that all questionnaires must comply with the qualification matrix on https://prenudge.at/qualificationmatrix/. 

**Usages:**

* Examples for this Profile: [AlcoholUseQuestionnaire](Questionnaire-AlcoholUseQuestionnaire.md), [BloodGlucoseQuestionnaire](Questionnaire-BloodGlucoseQuestionnaire.md), [EducationQuestionnaire](Questionnaire-EducationQuestionnaire.md), [SleepDurationQuestionnaire](Questionnaire-SleepDurationQuestionnaire.md)... Show 5 more, [SleepQualityQuestionnaire](Questionnaire-SleepQualityQuestionnaire.md), [SmokingStatusQuestionnaire](Questionnaire-SmokingStatusQuestionnaire.md), [StepCountEhisPaqQuestionnaire](Questionnaire-StepCountEhisPaqQuestionnaire.md), [StepCountQuantityQuestionnaire](Questionnaire-StepCountQuantityQuestionnaire.md) and [AtPrenudgeQoLByWhoQolBref](Questionnaire-WhoQolBrefQuestionnaire.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.prenudge.appdata.r4|current/StructureDefinition/StructureDefinition-at-prenudge-questionnaire.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-prenudge-questionnaire.csv), [Excel](StructureDefinition-at-prenudge-questionnaire.xlsx), [Schematron](StructureDefinition-at-prenudge-questionnaire.sch) 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-06-18

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

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
  "date" : "2026-06-18T13:38:50+00:00",
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
  "description" : "This FHIR profile is defining the overall Questionnaire for PreNUDGE. Every top level item requires one comment subitem, with the linkId ending or equal 'comment'. Be aware that if the user enters values from a device into a questionnaire, it is still considered a manual input. Please keep in mind that all questionnaires must comply with the qualification matrix on https://prenudge.at/qualificationmatrix/.",
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
  "abstract" : true,
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
        "expression" : "type = 'display' or item.where(linkId.endsWith('comment') and type = 'string').count() >= 1",
        "source" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire"
      }]
    }]
  }
}

```
