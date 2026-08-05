# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Nutrition Fruit Portions O mapped from Q - High Intake Example - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nutrition Fruit Portions O mapped from Q - High Intake Example**

## Example Observation: Nutrition Fruit Portions O mapped from Q - High Intake Example

Profile: [AT PreNUDGE Observation Nutrition Fruit Portions](StructureDefinition-at-prenudge-nutrition-fruitportions-observation.md)

**identifier**: `https://www.joanneum.at`/obs-nut-fp-2026-06-02-001

**status**: Final

**code**: Fruit servings 24 hour Estimated

**subject**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

**effective**: 2026-06-02

**issued**: 2026-06-02 09:00:00+0000

**value**: 5 Portionen (Details: UCUM code{serving} = '{serving}')

**note**: 

> 

Selbstberichtet: hoher Obstkonsum, 5 Portionen täglich.


**method**: Manual

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-08-05

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "nutrition-fruitportions-high-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-nutrition-fruitportions-observation"]
  },
  "identifier" : [{
    "system" : "https://www.joanneum.at",
    "value" : "obs-nut-fp-2026-06-02-001"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "80457-5",
      "display" : "Fruit servings 24 hour Estimated"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-06-02",
  "issued" : "2026-06-02T09:00:00Z",
  "valueQuantity" : {
    "value" : 5,
    "unit" : "Portionen",
    "system" : "http://unitsofmeasure.org",
    "code" : "{serving}"
  },
  "note" : [{
    "text" : "Selbstberichtet: hoher Obstkonsum, 5 Portionen täglich."
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "87982008",
      "display" : "Manual"
    }]
  }
}

```
