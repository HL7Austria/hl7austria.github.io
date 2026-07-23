# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Nutrition Vegetable Portions O mapped from Q - Normal Example - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nutrition Vegetable Portions O mapped from Q - Normal Example**

## Example Observation: Nutrition Vegetable Portions O mapped from Q - Normal Example

Profile: [AT PreNUDGE Observation Nutrition Vegetable Portions](StructureDefinition-at-prenudge-nutrition-vegetableportions-observation.md)

**identifier**: `https://www.joanneum.at`/qr-nut-fv-2026-06-01-001

**status**: Final

**code**: Vegetable servings 24 hour Estimated

**subject**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

**effective**: 2026-06-01

**issued**: 2026-06-01 09:00:00+0000

**value**: 2 Portionen (Details: UCUM code{serving} = '{serving}')

**note**: 

> 

Selbstberichtet: täglich 2 Portionen Gemüse oder Salat.


**method**: Manual

**derivedFrom**: [Response to Questionnaire '->Portionen Obst und Gemüse pro Tag' about '->James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)'](QuestionnaireResponse-nutrition-fruitvegetable-response-daily-example.md)

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
  "resourceType" : "Observation",
  "id" : "nutrition-vegetableportions-normal-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-nutrition-vegetableportions-observation"]
  },
  "identifier" : [{
    "system" : "https://www.joanneum.at",
    "value" : "qr-nut-fv-2026-06-01-001"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "80459-1",
      "display" : "Vegetable servings 24 hour Estimated"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-06-01",
  "issued" : "2026-06-01T09:00:00Z",
  "valueQuantity" : {
    "value" : 2,
    "unit" : "Portionen",
    "system" : "http://unitsofmeasure.org",
    "code" : "{serving}"
  },
  "note" : [{
    "text" : "Selbstberichtet: täglich 2 Portionen Gemüse oder Salat."
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "87982008",
      "display" : "Manual"
    }]
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/nutrition-fruitvegetable-response-daily-example"
  }]
}

```
