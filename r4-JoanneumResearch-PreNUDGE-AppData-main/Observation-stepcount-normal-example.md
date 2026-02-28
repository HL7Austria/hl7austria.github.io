# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Step Count - Normal Example - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Step Count - Normal Example**

## Example Observation: Step Count - Normal Example

Profile: [AT PreNUDGE Observation Step Count](StructureDefinition-at-prenudge-stepcount-observation.md)

**identifier**: `http://cdehealth.org/fhir/observation-id`/sc-2026-02-28-001

**status**: Final

**code**: Number of steps in 24 hour Measured

**subject**: [James Pond (no stated gender), DoB Unknown](Patient-example.md)

**effective**: 2026-02-28

**value**: 8432 {steps}/d (Details: UCUM code{steps}/d = '{steps}/d')

**method**: Automated



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "stepcount-normal-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-stepcount-observation"]
  },
  "identifier" : [{
    "system" : "http://cdehealth.org/fhir/observation-id",
    "value" : "sc-2026-02-28-001"
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
    "value" : 8432,
    "unit" : "{steps}/d",
    "system" : "http://unitsofmeasure.org",
    "code" : "{steps}/d"
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "8359006",
      "display" : "Automated"
    }]
  }
}

```
