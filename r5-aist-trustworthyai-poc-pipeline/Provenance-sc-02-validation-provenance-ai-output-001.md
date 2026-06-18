# Provenance: AI Output Generation - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Provenance: AI Output Generation**

## Example Provenance: Provenance: AI Output Generation

Profile: [EU AI Provenance](StructureDefinition-eu-ai-provenance.md)

Provenance for [Observation ](Observation-sc-02-validation-ai-observation-risk-001.md)

Summary

| | |
| :--- | :--- |
| Occurrence | 2026-03-01 10:15:00+0000 --> 2026-03-01 10:15:03+0000 |
| Recorded | 2026-03-01 10:15:04+0000 |
| Activity | ai-output-generation |

**Agents**

* **who**: [Device: extension = ,->DocumentReference: extension = Not Clinically Validated,,,; status = current; type = AI Model Card; description = Synthetic model card for a deterministic AI-output simulation component used in the PoC.; identifier = EU AI Database Identifier: EU-AI-000123; status = active; manufacturer = ExampleMed AI GmbH; contact = contact@examplemed.example(Work),dpo@examplemed.example(Work); note = Synthetic maintenance information for PoC purposes.,AI-assisted early warning risk assessment based on synthetic NEWS2-inspired vital parameters.](Device-device-riskassist-ai.md)



## Resource Content

```json
{
  "resourceType" : "Provenance",
  "id" : "sc-02-validation-provenance-ai-output-001",
  "meta" : {
    "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-provenance"]
  },
  "extension" : [{
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ehds-usage-category",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
        "code" : "primary-use",
        "display" : "Primary Use"
      }]
    }
  },
  {
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ehds-data-permit",
    "valueIdentifier" : {
      "value" : "EHDS-PERMIT-001"
    }
  }],
  "target" : [{
    "reference" : "Observation/sc-02-validation-ai-observation-risk-001"
  }],
  "occurredPeriod" : {
    "start" : "2026-03-01T10:15:00Z",
    "end" : "2026-03-01T10:15:03Z"
  },
  "recorded" : "2026-03-01T10:15:04Z",
  "authorization" : [{
    "concept" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/gdpr-art6-codesystem",
        "code" : "gdpr-art-6-1-d"
      }]
    }
  },
  {
    "concept" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/gdpr-art9-codesystem",
        "code" : "gdpr-art-9-2-h"
      }]
    }
  }],
  "activity" : {
    "text" : "ai-output-generation"
  },
  "patient" : {
    "reference" : "Patient/patient-001"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-001"
  },
  "agent" : [{
    "who" : {
      "reference" : "Device/device-riskassist-ai"
    }
  }],
  "entity" : [{
    "role" : "source",
    "what" : {
      "reference" : "Observation/sc-02-validation-observation-temperature-001"
    }
  },
  {
    "role" : "source",
    "what" : {
      "reference" : "Observation/sc-02-validation-observation-heart-rate-001"
    }
  },
  {
    "role" : "source",
    "what" : {
      "reference" : "Observation/sc-02-validation-observation-respiratory-rate-001"
    }
  },
  {
    "role" : "source",
    "what" : {
      "reference" : "Observation/sc-02-validation-observation-blood-pressure-001"
    }
  },
  {
    "role" : "source",
    "what" : {
      "reference" : "Observation/sc-02-validation-observation-oxygen-saturation-001"
    }
  },
  {
    "role" : "source",
    "what" : {
      "reference" : "Observation/sc-02-validation-observation-consciousness-status-001"
    }
  }]
}

```
