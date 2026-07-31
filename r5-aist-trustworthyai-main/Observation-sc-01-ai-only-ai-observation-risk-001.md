# AI Output: Early Warning Risk Assessment (1) - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AI Output: Early Warning Risk Assessment (1)**

## Example Observation: AI Output: Early Warning Risk Assessment (1)

Profile: [EU AI Generated Observation](StructureDefinition-eu-ai-observation.md)

**Case-Specific Indication**: Prognostic Prediction

**Automated Decision-Making Flag**: false

**status**: Final

**code**: AI-assisted early warning risk assessment

**subject**: [Anonymous Patient Female, DoB: 1959-04-12](Patient-patient-001.md)

**encounter**: [Encounter: status = completed; class = ambulatory; actualPeriod = 2026-03-01 10:00:00+0000 --> 2026-03-01 10:30:00+0000](Encounter-encounter-001.md)

**effective**: 2026-03-01 10:15:03+0000

**performer**: [Organization Example Hospital](Organization-organization-examplehospital.md)

**value**: high-risk

**interpretation**: AI Generated Result

**note**: 

> 

Urgent clinical review recommended


**device**: [Device: extension = ,->DocumentReference: extension = Not Clinically Validated,,,; status = current; type = AI Model Card; date = 2026-03-01 10:00:00+0000; description = Synthetic model card for a deterministic AI-output simulation component used in the PoC.; identifier = EU AI Registration Number; status = active; manufacturer = ExampleMed AI GmbH; note = Synthetic maintenance information for PoC purposes.,AI-assisted early warning risk assessment based on synthetic NEWS2-inspired vital parameters.](Device-device-riskassist-ai.md)

> **component****code**: Confidence**value**: 0.86 1 (Details: UCUM code1 = '1')

> **component****code**: Simplified score**value**: 9



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "sc-01-ai-only-ai-observation-risk-001",
  "meta" : {
    "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-observation"]
  },
  "extension" : [{
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/case-specific-indication",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-case-specific-indication-cs",
        "code" : "prognosis",
        "display" : "Prognostic Prediction"
      }]
    }
  },
  {
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/automated-decision-flag",
    "valueBoolean" : false
  }],
  "status" : "final",
  "code" : {
    "text" : "AI-assisted early warning risk assessment"
  },
  "subject" : {
    "reference" : "Patient/patient-001"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-001"
  },
  "effectiveDateTime" : "2026-03-01T10:15:03Z",
  "performer" : [{
    "reference" : "Organization/organization-examplehospital"
  }],
  "valueCodeableConcept" : {
    "text" : "high-risk"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-involvement-cs",
      "code" : "ai-generated"
    }],
    "text" : "AI Generated Result"
  }],
  "note" : [{
    "text" : "Urgent clinical review recommended"
  }],
  "device" : {
    "reference" : "Device/device-riskassist-ai"
  },
  "component" : [{
    "code" : {
      "text" : "Confidence"
    },
    "valueQuantity" : {
      "value" : 0.86,
      "unit" : "1",
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "Simplified score"
    },
    "valueInteger" : 9
  }]
}

```
