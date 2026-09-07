# Input Observation: Body Temperature (4) - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Input Observation: Body Temperature (4)**

## Example Observation: Input Observation: Body Temperature (4)

**status**: Final

**category**: Vital Signs

**code**: Body temperature

**subject**: [Anonymous Patient Female, DoB: 1959-04-12](Patient-patient-001.md)

**encounter**: [Encounter: status = completed; class = ambulatory; actualPeriod = 2026-03-01 10:00:00+0000 --> 2026-03-01 10:30:00+0000](Encounter-encounter-001.md)

**effective**: 2026-03-01 10:10:00+0000

**performer**: [Practitioner Clinical Reviewer ](Practitioner-practitioner-001.md)

**value**: 38.6 °C (Details: UCUM codeCel = 'Cel')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "sc-04-correction-exp-observation-temperature-001",
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
      "code" : "8310-5",
      "display" : "Body temperature"
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
    "value" : 38.6,
    "unit" : "°C",
    "system" : "http://unitsofmeasure.org",
    "code" : "Cel"
  }
}

```
