# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Physical Activity Classification Method CodeSystem - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Physical Activity Classification Method CodeSystem**

## CodeSystem: AT PreNUDGE Physical Activity Classification Method CodeSystem 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-physical-activity-classification-method-cs | *Version*:0.1.0 | |
| Active as of 2026-07-23 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgePhysicalActivityClassificationMethodCS |

 
Codes for the algorithm or technique used to classify the intensity of a physical activity measurement into moderate / vigorous categories. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PrenudgePhysicalActivityClassificationMethodVS](ValueSet-prenudge-physical-activity-classification-method-vs.md)

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-07-23

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "at-prenudge-physical-activity-classification-method-cs",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-physical-activity-classification-method-cs",
  "version" : "0.1.0",
  "name" : "AtPrenudgePhysicalActivityClassificationMethodCS",
  "title" : "AT PreNUDGE Physical Activity Classification Method CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-23T14:49:55+00:00",
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
  "description" : "Codes for the algorithm or technique used to classify the intensity of a physical activity measurement into moderate / vigorous categories.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "hrz",
    "display" : "Heart Rate Zones",
    "definition" : "Intensity derived from percentage of maximum heart rate.\n    Moderate: 50–70 % HRmax; Vigorous: > 70 % HRmax.\n    Applicable to Automated sources (method = SCT 8359006) only."
  },
  {
    "code" : "met-lu",
    "display" : "MET Value Look-up",
    "definition" : "MET assigned from a reference table (e.g. Ainsworth Compendium of Physical Activities).\n    Moderate: 3.0–5.9 MET; Vigorous: ≥ 6.0 MET.\n    Applicable to Automated sources only."
  },
  {
    "code" : "met-cal",
    "display" : "MET Value Calculated",
    "definition" : "MET estimated from raw sensor data (e.g. accelerometer signal, VO2 proxy algorithm).\n    Moderate: 3.0–5.9 MET; Vigorous: ≥ 6.0 MET.\n    Applicable to Automated sources only."
  },
  {
    "code" : "self-rp",
    "display" : "Self-Reported via Questionnaire",
    "definition" : "Patient-reported activity type used as the basis for intensity classification.\n    The MET look-up table is applied to the reported activity type.\n    Applicable to both Automated and Manual sources.\n    For Manual sources (SCT 87982008) this is the ONLY permitted code (see pa-manual-comp-01)."
  }]
}

```
