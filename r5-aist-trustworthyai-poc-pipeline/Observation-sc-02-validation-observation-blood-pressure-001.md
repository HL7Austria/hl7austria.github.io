# Input Observation: Systolic Blood Pressure - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Input Observation: Systolic Blood Pressure**

## Example Observation: Input Observation: Systolic Blood Pressure

**status**: Final

**code**: Systolic blood pressure

**subject**: [Anonymous Patient Female, DoB: 1959-04-12](Patient-patient-001.md)

**encounter**: [Encounter: status = completed; class = ambulatory; actualPeriod = 2026-03-01 10:00:00+0000 --> 2026-03-01 10:30:00+0000](Encounter-encounter-001.md)

**effective**: 2026-03-01 10:10:00+0000

**performer**: [Practitioner Clinical Reviewer ](Practitioner-practitioner-001.md)

**value**: 96 mmHg (Details: UCUM codemm[Hg] = 'mm[Hg]')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "sc-02-validation-observation-blood-pressure-001",
  "status" : "final",
  "code" : {
    "text" : "Systolic blood pressure"
  },
  "subject" : {
    "reference" : "Patient/patient-001"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-001"
  },
  "effectiveDateTime" : "2026-03-01T10:10:00Z",
  "performer" : [{
    "reference" : "Practitioner/practitioner-001"
  }],
  "valueQuantity" : {
    "value" : 96,
    "unit" : "mmHg",
    "system" : "http://unitsofmeasure.org",
    "code" : "mm[Hg]"
  }
}

```
