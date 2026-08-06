# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Step Count O mapped from Q - Normal Example - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Step Count O mapped from Q - Normal Example**

## Example Observation: Step Count O mapped from Q - Normal Example

Profile: [AT PreNUDGE Observation Step Count](StructureDefinition-at-prenudge-stepcount-observation.md)

**identifier**: `https://www.joanneum.at`/obs-sc-2026-02-28-001

**status**: Final

**code**: Number of steps in 24 hour Measured

**subject**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

**effective**: 2026-02-27

**issued**: 2026-02-28 20:00:00+0000

**value**: 8432 {steps}/d (Details: UCUM code{steps}/d = '{steps}/d')

**note**: 

> 

Normaler Arbeitstag mit Spaziergang in der Mittagspause.


**method**: Manual

**derivedFrom**: [Response to Questionnaire '->Schrittzahl am heutigen Tag' about '->James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)'](QuestionnaireResponse-stepcount-quantity-response-normal-example.md)

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
  "id" : "stepcount-normal-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-stepcount-observation"]
  },
  "identifier" : [{
    "system" : "https://www.joanneum.at",
    "value" : "obs-sc-2026-02-28-001"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "41950-7",
      "display" : "Number of steps in 24 hour Measured"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-02-27",
  "issued" : "2026-02-28T20:00:00Z",
  "valueQuantity" : {
    "value" : 8432,
    "unit" : "{steps}/d",
    "system" : "http://unitsofmeasure.org",
    "code" : "{steps}/d"
  },
  "note" : [{
    "text" : "Normaler Arbeitstag mit Spaziergang in der Mittagspause."
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "87982008",
      "display" : "Manual"
    }]
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/stepcount-quantity-response-normal-example"
  }]
}

```
