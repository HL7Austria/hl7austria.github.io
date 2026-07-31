# Input Observation: Respiratory Rate (1) - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Input Observation: Respiratory Rate (1)**

## Example Observation: Input Observation: Respiratory Rate (1)

**status**: Final

**category**: Vital Signs

**code**: Respiratory rate

**subject**: [Anonymous Patient Female, DoB: 1959-04-12](Patient-patient-001.md)

**encounter**: [Encounter: status = completed; class = ambulatory; actualPeriod = 2026-03-01 10:00:00+0000 --> 2026-03-01 10:30:00+0000](Encounter-encounter-001.md)

**effective**: 2026-03-01 10:10:00+0000

**performer**: [Practitioner Clinical Reviewer ](Practitioner-practitioner-001.md)

**value**: 23 breaths/min (Details: UCUM code/min = '/min')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "sc-01-ai-only-observation-respiratory-rate-001",
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
      "code" : "9279-1",
      "display" : "Respiratory rate"
    }]
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
    "value" : 23,
    "unit" : "breaths/min",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  }
}

```
