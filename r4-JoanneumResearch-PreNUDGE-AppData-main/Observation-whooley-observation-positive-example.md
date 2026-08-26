# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Whooley O mapped from Q - Example - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Whooley O mapped from Q - Example**

## Example Observation: Whooley O mapped from Q - Example

Profile: [AT PreNUDGE Observation Whooley Depression Screening](StructureDefinition-at-prenudge-whooley-observation.md)

**identifier**: `https://www.joanneum.at`/qr-whooley-2026-04-15-positive

**status**: Final

**code**: Adult depression screening assessment

**subject**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

**effective**: 2026-04-15 10:00:00+0000

**issued**: 2026-04-15 10:00:00+0000

**value**: Positive (qualifier value)

**method**: Manual

**derivedFrom**: [Response to Questionnaire '->PHQ-2; "Whooley Questions"' about '->James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)'](QuestionnaireResponse-whooley-response-positive-example.md)

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
  "resourceType" : "Observation",
  "id" : "whooley-observation-positive-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-whooley-observation"]
  },
  "identifier" : [{
    "system" : "https://www.joanneum.at",
    "value" : "qr-whooley-2026-04-15-positive"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "73832-8",
      "display" : "Adult depression screening assessment"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-04-15T10:00:00+00:00",
  "issued" : "2026-04-15T10:00:00Z",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "10828004",
      "display" : "Positive (qualifier value)"
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
    "reference" : "QuestionnaireResponse/whooley-response-positive-example"
  }]
}

```
