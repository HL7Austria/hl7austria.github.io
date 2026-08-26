# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE PSS Frequency Answer Scale - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE PSS Frequency Answer Scale**

## CodeSystem: AT PreNUDGE PSS Frequency Answer Scale 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem | *Version*:0.1.0 | |
| Active as of 2026-08-26 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgePSSFrequencyCS |

 
5-point frequency answer scale (0–4) used by the Perceived Stress Scale (PSS-4 and PSS-10) instruments. Based on Cohen, S., Kamarck, T., & Mermelstein, R. (1983). A global measure of perceived stress. Journal of Health and Social Behavior, 24(4), 385–396. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AT PreNUDGE ValueSet PSS Frequency Answer Scale](ValueSet-at-prenudge-pss-frequency-valueset.md)

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
  "id" : "at-prenudge-pss-frequency-codesystem",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
  "version" : "0.1.0",
  "name" : "AtPrenudgePSSFrequencyCS",
  "title" : "AT PreNUDGE PSS Frequency Answer Scale",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-26T07:22:28+00:00",
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
  "description" : "5-point frequency answer scale (0–4) used by the Perceived Stress Scale (PSS-4 and PSS-10) instruments. Based on Cohen, S., Kamarck, T., & Mermelstein, R. (1983). A global measure of perceived stress. Journal of Health and Social Behavior, 24(4), 385–396.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "property" : [{
    "code" : "score",
    "description" : "Numeric ordinal value for PSS total score calculation (0 = never, 4 = very often).",
    "type" : "integer"
  }],
  "concept" : [{
    "code" : "never",
    "display" : "Nie",
    "property" : [{
      "code" : "score",
      "valueInteger" : 0
    }]
  },
  {
    "code" : "rarely",
    "display" : "Selten",
    "property" : [{
      "code" : "score",
      "valueInteger" : 1
    }]
  },
  {
    "code" : "sometimes",
    "display" : "Manchmal",
    "property" : [{
      "code" : "score",
      "valueInteger" : 2
    }]
  },
  {
    "code" : "often",
    "display" : "Häufig",
    "property" : [{
      "code" : "score",
      "valueInteger" : 3
    }]
  },
  {
    "code" : "very-often",
    "display" : "Sehr oft",
    "property" : [{
      "code" : "score",
      "valueInteger" : 4
    }]
  }]
}

```
