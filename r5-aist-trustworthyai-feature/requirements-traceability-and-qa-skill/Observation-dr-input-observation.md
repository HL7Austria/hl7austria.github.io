# Input Observation: C-Reactive Protein - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Input Observation: C-Reactive Protein**

## Example Observation: Input Observation: C-Reactive Protein

**status**: Final

**code**: C-reactive protein concentration

**subject**: [Anonymous Patient Female, DoB: 1965-06-15](Patient-dr-patient.md)

**effective**: 2026-03-10 09:00:00+0000

**performer**: [Organization Example Diagnostic Center](Organization-dr-organization.md)

**value**: 148 mg/L



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "dr-input-observation",
  "status" : "final",
  "code" : {
    "text" : "C-reactive protein concentration"
  },
  "subject" : {
    "reference" : "Patient/dr-patient"
  },
  "effectiveDateTime" : "2026-03-10T09:00:00Z",
  "performer" : [{
    "reference" : "Organization/dr-organization"
  }],
  "valueQuantity" : {
    "value" : 148,
    "unit" : "mg/L"
  }
}

```
