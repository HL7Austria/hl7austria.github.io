# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Blood Glucose - Elevated Example - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Blood Glucose - Elevated Example**

## Example Observation: Blood Glucose - Elevated Example

Profile: [AT PreNUDGE Observation Blood Glucose (only in mg/dL)](StructureDefinition-at-prenudge-bloodglucose-observation.md)

**identifier**: `http://cdehealth.org/fhir/observation-id`/bg-2026-02-28-002

**status**: Final

**code**: Fasting glucose [Mass/volume] in Capillary blood

**subject**: [James Pond (no stated gender), DoB Unknown](Patient-example.md)

**effective**: 2026-02-28 07:45:00+0000

**value**: 142 mg/dL (Details: UCUM codemg/dL = 'mg/dL')

**note**: 

> 

Patient berichtet, gestern Abend spät gegessen zu haben.


**method**: Manual



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "bloodglucose-elevated-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-bloodglucose-observation"]
  },
  "identifier" : [{
    "system" : "http://cdehealth.org/fhir/observation-id",
    "value" : "bg-2026-02-28-002"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "1556-0",
      "display" : "Fasting glucose [Mass/volume] in Capillary blood"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-02-28T07:45:00Z",
  "valueQuantity" : {
    "value" : 142,
    "unit" : "mg/dL",
    "system" : "http://unitsofmeasure.org",
    "code" : "mg/dL"
  },
  "note" : [{
    "text" : "Patient berichtet, gestern Abend spät gegessen zu haben."
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
