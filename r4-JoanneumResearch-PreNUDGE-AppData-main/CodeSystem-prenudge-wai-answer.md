# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE WAI Answer Codes - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE WAI Answer Codes**

## CodeSystem: AT PreNUDGE WAI Answer Codes 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-wai-answer | *Version*:0.1.0 | |
| Active as of 2026-08-26 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeCodeSystemWaiAnswer |

 
Local answer codes for categorical Work Ability Index answer options. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AT PreNUDGE WAI Physical Demands Answer ValueSet](ValueSet-prenudge-wai-physical-demands-answer.md)

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-08-26

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "prenudge-wai-answer",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-wai-answer",
  "version" : "0.1.0",
  "name" : "AtPrenudgeCodeSystemWaiAnswer",
  "title" : "AT PreNUDGE WAI Answer Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-26T07:06:07+00:00",
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
  "description" : "Local answer codes for categorical Work Ability Index answer options.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "very-good",
    "display" : "Sehr gut (5)"
  },
  {
    "code" : "rather-good",
    "display" : "Eher gut (4)"
  },
  {
    "code" : "moderate",
    "display" : "Mittelmäßig (3)"
  },
  {
    "code" : "rather-poor",
    "display" : "Eher schlecht (2)"
  },
  {
    "code" : "very-poor",
    "display" : "Sehr schlecht (1)"
  }]
}

```
