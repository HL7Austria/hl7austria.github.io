# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Questionnaire Response - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Questionnaire Response**

## Resource Profile: AT PreNUDGE Questionnaire Response 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse | *Version*:0.1.0 | |
| Draft as of 2026-02-25 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeQuestionnaireResponse |

 
This FHIR profile is defining the overall Questionnaire Response for PreNUDGE. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.prenudge.appdata.r4|current/StructureDefinition/at-prenudge-questionnaireresponse)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-prenudge-questionnaireresponse.csv), [Excel](StructureDefinition-at-prenudge-questionnaireresponse.xlsx), [Schematron](StructureDefinition-at-prenudge-questionnaireresponse.sch) 



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
  "description" : "This FHIR profile is defining the overall Questionnaire Response for PreNUDGE.",
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
      "short" : "Unique id for this set of answers, at least one is assigned by the data provider",
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.identifier.system",
      "path" : "QuestionnaireResponse.identifier.system",
      "short" : "The namespace for the identifier value, if no other information is given, use your website url",
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.identifier.value",
      "path" : "QuestionnaireResponse.identifier.value",
      "min" : 1
    }]
  }
}

```
