# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Workability Codes - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Workability Codes**

## CodeSystem: AT PreNUDGE Workability Codes 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability | *Version*:0.1.0 | |
| Active as of 2026-06-30 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeCodeSystemWorkability |

 
Local PreNUDGE codes for workability questionnaires and derived Work-SoC score observations. Work-SoC source DOI: https://doi.org/10.4102/sajip.v39i1.1111 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-06-30

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "prenudge-workability",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability",
  "version" : "0.1.0",
  "name" : "AtPrenudgeCodeSystemWorkability",
  "title" : "AT PreNUDGE Workability Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-30T14:49:39+00:00",
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
  "description" : "Local PreNUDGE codes for workability questionnaires and derived Work-SoC score observations. Work-SoC source DOI: https://doi.org/10.4102/sajip.v39i1.1111",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 17,
  "concept" : [{
    "code" : "work-soc-questionnaire",
    "display" : "Work-SoC Questionnaire"
  },
  {
    "code" : "work-soc-item-1",
    "display" : "Work-SoC item 1"
  },
  {
    "code" : "work-soc-item-2",
    "display" : "Work-SoC item 2"
  },
  {
    "code" : "work-soc-item-3",
    "display" : "Work-SoC item 3"
  },
  {
    "code" : "work-soc-item-4",
    "display" : "Work-SoC item 4"
  },
  {
    "code" : "work-soc-item-5",
    "display" : "Work-SoC item 5"
  },
  {
    "code" : "work-soc-item-6",
    "display" : "Work-SoC item 6"
  },
  {
    "code" : "work-soc-item-7",
    "display" : "Work-SoC item 7"
  },
  {
    "code" : "work-soc-item-8",
    "display" : "Work-SoC item 8"
  },
  {
    "code" : "work-soc-item-9",
    "display" : "Work-SoC item 9"
  },
  {
    "code" : "work-soc-category-score",
    "display" : "Work-SoC category score"
  },
  {
    "code" : "work-soc-comprehensibility",
    "display" : "Work-SoC comprehensibility score",
    "definition" : "Calculated Work-SoC comprehensibility score. Formula: (Item 1 + Item 3 + Item 6 + Item 9) / 4."
  },
  {
    "code" : "work-soc-manageability",
    "display" : "Work-SoC manageability score",
    "definition" : "Calculated Work-SoC manageability score. Formula: (Item 4 + Item 7) / 2."
  },
  {
    "code" : "work-soc-meaningfulness",
    "display" : "Work-SoC meaningfulness score",
    "definition" : "Calculated Work-SoC meaningfulness score. Formula: (Item 2 + Item 5 + Item 8) / 3."
  },
  {
    "code" : "wai-questionnaire",
    "display" : "Work Ability Index short questionnaire"
  },
  {
    "code" : "wai-current-work-ability",
    "display" : "Current work ability compared with lifetime best"
  },
  {
    "code" : "wai-physical-demands-work-ability",
    "display" : "Current work ability in relation to physical work demands"
  }]
}

```
