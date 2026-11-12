# Encounter: Acute Care Assessment - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Encounter: Acute Care Assessment**

## Example Encounter: Encounter: Acute Care Assessment

**status**: Completed

**class**: ambulatory

**subject**: [Anonymous Patient Female, DoB: 1959-04-12](Patient-patient-001.md)

**actualPeriod**: 2026-03-01 10:00:00+0000 --> 2026-03-01 10:30:00+0000

> **reason**

### Values

| | |
| :--- | :--- |
| - | **Concept** |
| * | suspected-infection-early-warning-risk-assessment |




## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "encounter-001",
  "status" : "completed",
  "class" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "code" : "AMB",
      "display" : "ambulatory"
    }]
  }],
  "subject" : {
    "reference" : "Patient/patient-001"
  },
  "actualPeriod" : {
    "start" : "2026-03-01T10:00:00Z",
    "end" : "2026-03-01T10:30:00Z"
  },
  "reason" : [{
    "value" : [{
      "concept" : {
        "text" : "suspected-infection-early-warning-risk-assessment"
      }
    }]
  }]
}

```
