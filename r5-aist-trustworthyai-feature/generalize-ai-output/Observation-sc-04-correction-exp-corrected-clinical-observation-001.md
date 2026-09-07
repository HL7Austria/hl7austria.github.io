# Corrected Clinical Observation: Early Warning Risk Assessment (4) - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Corrected Clinical Observation: Early Warning Risk Assessment (4)**

## Example Observation: Corrected Clinical Observation: Early Warning Risk Assessment (4)

**status**: Final

**code**: Human-corrected early warning risk assessment

**subject**: [Anonymous Patient Female, DoB: 1959-04-12](Patient-patient-001.md)

**encounter**: [Encounter: status = completed; class = ambulatory; actualPeriod = 2026-03-01 10:00:00+0000 --> 2026-03-01 10:30:00+0000](Encounter-encounter-001.md)

**effective**: 2026-03-01 10:20:00+0000

**performer**: [Practitioner Clinical Reviewer ](Practitioner-practitioner-001.md)

**value**: high-risk

**note**: , , 

> 

Urgent clinical review recommended


> 

The simulated AI output was intentionally configured as inconsistent and corrected by the human reviewer.


> 

Corrected clinical result created for PoC traceability demonstration.


**derivedFrom**: [Observation ](Observation-sc-04-correction-exp-ai-observation-risk-001.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "sc-04-correction-exp-corrected-clinical-observation-001",
  "status" : "final",
  "code" : {
    "text" : "Human-corrected early warning risk assessment"
  },
  "subject" : {
    "reference" : "Patient/patient-001"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-001"
  },
  "effectiveDateTime" : "2026-03-01T10:20:00Z",
  "performer" : [{
    "reference" : "Practitioner/practitioner-001"
  }],
  "valueCodeableConcept" : {
    "text" : "high-risk"
  },
  "note" : [{
    "text" : "Urgent clinical review recommended"
  },
  {
    "text" : "The simulated AI output was intentionally configured as inconsistent and corrected by the human reviewer."
  },
  {
    "text" : "Corrected clinical result created for PoC traceability demonstration."
  }],
  "derivedFrom" : [{
    "reference" : "Observation/sc-04-correction-exp-ai-observation-risk-001"
  }]
}

```
