# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE PSS Instrument Codes - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE PSS Instrument Codes**

## CodeSystem: AT PreNUDGE PSS Instrument Codes 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-codes-codesystem | *Version*:0.1.0 | |
| Active as of 2026-08-18 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgePSSCodesCS |

 
IG-internal codes for PSS-4 instrument identification and per-item Observation component codes for PSS-4 and PSS-10. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-08-18

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "at-prenudge-pss-codes-codesystem",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-codes-codesystem",
  "version" : "0.1.0",
  "name" : "AtPrenudgePSSCodesCS",
  "title" : "AT PreNUDGE PSS Instrument Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-18T12:08:37+00:00",
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
  "description" : "IG-internal codes for PSS-4 instrument identification and per-item Observation component codes for PSS-4 and PSS-10.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 15,
  "concept" : [{
    "code" : "pss4",
    "display" : "PSS-4 Perceived Stress Scale (4-item)"
  },
  {
    "code" : "pss4-q1",
    "display" : "PSS-4 Item 1 (Kontrollverlust)"
  },
  {
    "code" : "pss4-q2",
    "display" : "PSS-4 Item 2 (Selbstwirksamkeit — positiv)"
  },
  {
    "code" : "pss4-q3",
    "display" : "PSS-4 Item 3 (Kontrolle — positiv)"
  },
  {
    "code" : "pss4-q4",
    "display" : "PSS-4 Item 4 (Überforderung)"
  },
  {
    "code" : "pss10-q1",
    "display" : "PSS-10 Item 1"
  },
  {
    "code" : "pss10-q2",
    "display" : "PSS-10 Item 2"
  },
  {
    "code" : "pss10-q3",
    "display" : "PSS-10 Item 3"
  },
  {
    "code" : "pss10-q4",
    "display" : "PSS-10 Item 4 (positiv)"
  },
  {
    "code" : "pss10-q5",
    "display" : "PSS-10 Item 5 (positiv)"
  },
  {
    "code" : "pss10-q6",
    "display" : "PSS-10 Item 6"
  },
  {
    "code" : "pss10-q7",
    "display" : "PSS-10 Item 7 (positiv)"
  },
  {
    "code" : "pss10-q8",
    "display" : "PSS-10 Item 8 (positiv)"
  },
  {
    "code" : "pss10-q9",
    "display" : "PSS-10 Item 9"
  },
  {
    "code" : "pss10-q10",
    "display" : "PSS-10 Item 10"
  }]
}

```
