# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Sleep Quality O mapped from Q - Satisfied Example - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sleep Quality O mapped from Q - Satisfied Example**

## Example Observation: Sleep Quality O mapped from Q - Satisfied Example

Profile: [AT PreNUDGE Observation Sleep Quality](StructureDefinition-at-prenudge-sleep-quality-observation.md)

**identifier**: `https://www.joanneum.at`/qr-slq-2026-03-10-001

**status**: Final

**code**: My sleep quality was...in past 7 days [PROMIS]

**subject**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

**effective**: 2026-03-10 08:00:00+0000

**issued**: 2026-03-10 08:00:00+0000

**value**: Good

**method**: Manual

**derivedFrom**: [Response to Questionnaire '->Schlafqualität – Selbsteinschätzung (WHOQOL-BREF Q16)' about '->James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)'](QuestionnaireResponse-sleep-quality-response-satisfied-example.md)

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-08-06

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "sleep-quality-satisfied-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-sleep-quality-observation"]
  },
  "identifier" : [{
    "system" : "https://www.joanneum.at",
    "value" : "qr-slq-2026-03-10-001"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "61987-4",
      "display" : "My sleep quality was...in past 7 days [PROMIS]"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-03-10T08:00:00Z",
  "issued" : "2026-03-10T08:00:00Z",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA8967-7",
      "display" : "Good"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "87982008",
      "display" : "Manual"
    }]
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/sleep-quality-response-satisfied-example"
  }]
}

```
