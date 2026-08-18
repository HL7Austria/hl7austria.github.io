# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Body Weight O - Example - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Body Weight O - Example**

## Example Observation: Body Weight O - Example

Profile: [AT PreNUDGE Observation Body Weight](StructureDefinition-at-prenudge-bodyweight-observation.md)

**identifier**: `https://www.joanneum.at`/obs-bodyweight-2026-03-20-001

**status**: Final

**category**: Vital Signs

**code**: Body weight

**subject**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

**effective**: 2026-03-20 09:00:00+0000

**issued**: 2026-03-20 09:00:00+0000

**value**: 81 kg (Details: UCUM codekg = 'kg')

**method**: Manual

**derivedFrom**: [Response to Questionnaire '->Körpergröße, Körpergewicht und Body Mass Index (BMI)' about '->James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)'](QuestionnaireResponse-bmi-questionnaire-response-example.md)

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
  "resourceType" : "Observation",
  "id" : "bodyweight-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-bodyweight-observation"]
  },
  "identifier" : [{
    "system" : "https://www.joanneum.at",
    "value" : "obs-bodyweight-2026-03-20-001"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs",
      "display" : "Vital Signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "29463-7",
      "display" : "Body weight"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-03-20T09:00:00Z",
  "issued" : "2026-03-20T09:00:00Z",
  "valueQuantity" : {
    "value" : 81,
    "unit" : "kg",
    "system" : "http://unitsofmeasure.org",
    "code" : "kg"
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "87982008",
      "display" : "Manual"
    }]
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/bmi-questionnaire-response-example"
  }]
}

```
