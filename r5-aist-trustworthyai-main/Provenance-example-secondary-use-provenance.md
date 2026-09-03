# Provenance: Secondary Use Example - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Provenance: Secondary Use Example**

## Example Provenance: Provenance: Secondary Use Example

Profile: [EU AI Provenance](StructureDefinition-eu-ai-provenance.md)

Provenance for [Observation ](Observation-sc-01-ai-only-ai-observation-risk-001.md)

Summary

| | |
| :--- | :--- |
| Occurrence | 2026-03-01 10:15:00+0000 --> 2026-03-01 10:15:03+0000 |
| Recorded | 2026-03-01 10:15:04+0000 |
| Activity | secondary-use-ai-validation |

**Agents**

* **who**: [Device: extension = ,->DocumentReference: extension = Not Clinically Validated,,,; status = current; type = AI Model Card; date = 2026-03-01 10:00:00+0000; description = Synthetic model card for a deterministic AI-output simulation component used in the PoC.,->DocumentReference: status = current; identifier = EU AI Registration Number; status = active; manufacturer = ExampleMed AI GmbH; note = Synthetic maintenance information for PoC purposes.,AI-assisted early warning risk assessment based on synthetic NEWS2-inspired vital parameters.](Device-device-riskassist-ai.md)



## Resource Content

```json
{
  "resourceType" : "Provenance",
  "id" : "example-secondary-use-provenance",
  "meta" : {
    "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-provenance"]
  },
  "extension" : [{
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ehds-usage-category",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/ehds-usage-category-cs",
        "code" : "secondary-use",
        "display" : "Secondary Use"
      }]
    }
  },
  {
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ehds-secondary-use-purpose",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/ehds-secondary-use-purpose-cs",
        "code" : "scientific-research",
        "display" : "Scientific Research"
      }]
    }
  },
  {
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ehds-data-permit",
    "valueIdentifier" : {
      "system" : "http://example.org/fhir/sid/ehds-data-permit",
      "value" : "EHDS-PERMIT-2026-0001"
    }
  }],
  "target" : [{
    "reference" : "Observation/sc-01-ai-only-ai-observation-risk-001"
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
    "text" : "secondary-use-ai-validation"
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
      "reference" : "Observation/sc-04-correction-exp-observation-temperature-001"
    }
  }]
}

```
