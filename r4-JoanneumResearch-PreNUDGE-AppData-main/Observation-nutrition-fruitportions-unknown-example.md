# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Nutrition Fruit Portions O mapped from Q - Unknown Example - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nutrition Fruit Portions O mapped from Q - Unknown Example**

## Example Observation: Nutrition Fruit Portions O mapped from Q - Unknown Example

Profile: [AT PreNUDGE Observation Nutrition Fruit Portions](StructureDefinition-at-prenudge-nutrition-fruitportions-observation.md)

**identifier**: `https://www.joanneum.at`/qr-nut-fv-2026-06-03-metadata

**status**: Final

**code**: Fruit servings 24 hour Estimated

**subject**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

**effective**: 2026-06-03

**issued**: 2026-06-03 09:00:00+0000

**dataAbsentReason**: Asked But Unknown

**method**: Manual

**derivedFrom**: [Response to Questionnaire '->Portionen Obst und Gemüse pro Tag' about '->James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)'](QuestionnaireResponse-nutrition-fruitvegetable-response-metadata-example.md)

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-08-13

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "nutrition-fruitportions-unknown-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-nutrition-fruitportions-observation"]
  },
  "identifier" : [{
    "system" : "https://www.joanneum.at",
    "value" : "qr-nut-fv-2026-06-03-metadata"
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
  "effectiveDateTime" : "2026-06-03",
  "issued" : "2026-06-03T09:00:00Z",
  "dataAbsentReason" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
      "code" : "asked-unknown",
      "display" : "Asked But Unknown"
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
    "reference" : "QuestionnaireResponse/nutrition-fruitvegetable-response-metadata-example"
  }]
}

```
