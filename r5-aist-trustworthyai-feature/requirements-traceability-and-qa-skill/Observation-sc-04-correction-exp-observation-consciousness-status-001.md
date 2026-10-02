# Input Observation: Consciousness Status (4) - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Input Observation: Consciousness Status (4)**

## Example Observation: Input Observation: Consciousness Status (4)

**status**: Final

**code**: Consciousness status

**subject**: [Anonymous Patient Female, DoB: 1959-04-12](Patient-patient-001.md)

**encounter**: [Encounter: status = completed; class = ambulatory; actualPeriod = 2026-03-01 10:00:00+0000 --> 2026-03-01 10:30:00+0000](Encounter-encounter-001.md)

**effective**: 2026-03-01 10:10:00+0000

**performer**: [Practitioner Clinical Reviewer ](Practitioner-practitioner-001.md)

**value**: Alert



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "sc-04-correction-exp-observation-consciousness-status-001",
  "status" : "final",
  "code" : {
    "text" : "Consciousness status"
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
  "valueCodeableConcept" : {
    "text" : "Alert"
  }
}

```
