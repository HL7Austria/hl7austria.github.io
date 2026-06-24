# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Questionnaire Response - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Questionnaire Response**

## Resource Profile: AT PreNUDGE Questionnaire Response 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse | *Version*:0.1.0 | |
| Draft as of 2026-06-24 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeQuestionnaireResponse |

 
This FHIR profile is defining the overall Questionnaire Response for PreNUDGE. Be aware that if the user enters values from a device into a questionnaire, it is still considered a manual input. Please keep in mind that all questionnaire responses must comply with the qualification matrix on https://prenudge.at/qualificationmatrix/. 

**Usages:**

* Examples for this Profile: [QuestionnaireResponse/AlcoholResponseDaily](QuestionnaireResponse-AlcoholResponseDaily.md), [QuestionnaireResponse/AlcoholResponseNever](QuestionnaireResponse-AlcoholResponseNever.md), [QuestionnaireResponse/SmokingStatusResponseCurrentEveryDay](QuestionnaireResponse-SmokingStatusResponseCurrentEveryDay.md), [QuestionnaireResponse/SmokingStatusResponseFormer](QuestionnaireResponse-SmokingStatusResponseFormer.md)... Show 17 more, [QuestionnaireResponse/SmokingStatusResponseNever](QuestionnaireResponse-SmokingStatusResponseNever.md), [QuestionnaireResponse/SmokingStatusResponseNotStated](QuestionnaireResponse-SmokingStatusResponseNotStated.md), [QuestionnaireResponse/bloodglucose-response-elevated-example](QuestionnaireResponse-bloodglucose-response-elevated-example.md), [QuestionnaireResponse/bloodglucose-response-normal-example](QuestionnaireResponse-bloodglucose-response-normal-example.md), [QuestionnaireResponse/education-response-bachelor-example](QuestionnaireResponse-education-response-bachelor-example.md), [QuestionnaireResponse/education-response-upper-secondary-example](QuestionnaireResponse-education-response-upper-secondary-example.md), [QuestionnaireResponse/sleep-duration-response-normal-example](QuestionnaireResponse-sleep-duration-response-normal-example.md), [QuestionnaireResponse/sleep-duration-response-short-example](QuestionnaireResponse-sleep-duration-response-short-example.md), [QuestionnaireResponse/sleep-quality-response-dissatisfied-example](QuestionnaireResponse-sleep-quality-response-dissatisfied-example.md), [QuestionnaireResponse/sleep-quality-response-satisfied-example](QuestionnaireResponse-sleep-quality-response-satisfied-example.md), [QuestionnaireResponse/stepcount-ehispaq-high](QuestionnaireResponse-stepcount-ehispaq-high.md), [QuestionnaireResponse/stepcount-ehispaq-normal](QuestionnaireResponse-stepcount-ehispaq-normal.md), [QuestionnaireResponse/stepcount-quantity-response-high-example](QuestionnaireResponse-stepcount-quantity-response-high-example.md), [QuestionnaireResponse/stepcount-quantity-response-normal-example](QuestionnaireResponse-stepcount-quantity-response-normal-example.md), [QuestionnaireResponse/wai-response-example](QuestionnaireResponse-wai-response-example.md), [QuestionnaireResponse/whoqol-bref-response-example](QuestionnaireResponse-whoqol-bref-response-example.md) and [QuestionnaireResponse/work-soc-response-example](QuestionnaireResponse-work-soc-response-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.prenudge.appdata.r4|current/StructureDefinition/StructureDefinition-at-prenudge-questionnaireresponse.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-prenudge-questionnaireresponse.csv), [Excel](StructureDefinition-at-prenudge-questionnaireresponse.xlsx), [Schematron](StructureDefinition-at-prenudge-questionnaireresponse.sch) 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-06-24

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-prenudge-questionnaireresponse",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse",
  "version" : "0.1.0",
  "name" : "AtPrenudgeQuestionnaireResponse",
  "title" : "AT PreNUDGE Questionnaire Response",
  "status" : "draft",
  "date" : "2026-06-24T07:21:07+00:00",
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
  "description" : "This FHIR profile is defining the overall Questionnaire Response for PreNUDGE. Be aware that if the user enters values from a device into a questionnaire, it is still considered a manual input. Please keep in mind that all questionnaire responses must comply with the qualification matrix on https://prenudge.at/qualificationmatrix/.",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "QuestionnaireResponse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "QuestionnaireResponse",
      "path" : "QuestionnaireResponse"
    },
    {
      "id" : "QuestionnaireResponse.identifier",
      "path" : "QuestionnaireResponse.identifier",
      "short" : "Mandatory date the answers were gathered",
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.identifier.system",
      "path" : "QuestionnaireResponse.identifier.system",
      "short" : "The namespace for the identifier value, if no other specifications are given, use your website url",
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.identifier.value",
      "path" : "QuestionnaireResponse.identifier.value",
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.status",
      "path" : "QuestionnaireResponse.status",
      "short" : "In PreNUDGE only completed QuestionnaireResponses are beeing accepted",
      "patternCode" : "completed"
    },
    {
      "id" : "QuestionnaireResponse.authored",
      "path" : "QuestionnaireResponse.authored",
      "min" : 1
    }]
  }
}

```
