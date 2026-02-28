# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Step Count - Low Example - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Step Count - Low Example**

## Example Observation: Step Count - Low Example

Profile: [AT PreNUDGE Observation Step Count](StructureDefinition-at-prenudge-stepcount-observation.md)

**identifier**: `http://cdehealth.org/fhir/observation-id`/sc-2026-02-28-002

**status**: Final

**code**: Number of steps in 24 hour Measured

**subject**: [James Pond (no stated gender), DoB Unknown](Patient-example.md)

**effective**: 2026-02-28

**value**: 133519 {steps}/d (Details: UCUM code{steps}/d = '{steps}/d')

**note**: 

> 

Könnte bitte jemand überprüfen ob das ein Weltrekord wäre?


**method**: Manual



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "stepcount-low-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-stepcount-observation"]
  },
  "identifier" : [{
    "system" : "http://cdehealth.org/fhir/observation-id",
    "value" : "sc-2026-02-28-002"
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
  "effectiveDateTime" : "2026-02-28",
  "valueQuantity" : {
    "value" : 133519,
    "unit" : "{steps}/d",
    "system" : "http://unitsofmeasure.org",
    "code" : "{steps}/d"
  },
  "note" : [{
    "text" : "Könnte bitte jemand überprüfen ob das ein Weltrekord wäre?"
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
