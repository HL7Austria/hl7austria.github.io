# Provenance: AI Output Generation (2) - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Provenance: AI Output Generation (2)**

## Example Provenance: Provenance: AI Output Generation (2)

Profile: [Trust AI Provenance](StructureDefinition-trust-ai-provenance.md)

Provenance for [Observation AI-assisted early warning risk assessment](Observation-sc-02-validation-ai-observation-risk-001.md)

Summary

| | |
| :--- | :--- |
| Occurrence | 2026-03-01 10:15:00+0000 --> 2026-03-01 10:15:03+0000 |
| Recorded | 2026-03-01 10:15:04+0000 |
| Activity | ai-output-generation |
| Authorization | * Vital Interests (Art. 6(1)(d))
* Health or Social Care (Art. 9(2)(h))
 |
| Subject | [Anonymous Patient Female, DoB: 1959-04-12](Patient-patient-001.md) |
| Encounter | [Encounter: status = completed; class = ambulatory; actualPeriod = 2026-03-01 10:00:00+0000 --> 2026-03-01 10:30:00+0000](Encounter-encounter-001.md) |

**Agents**

* **who**: [Device: extension = ,->DocumentReference: extension = Not Clinically Validated,,,; status = current; type = AI Model Card; date = 2026-03-01 10:00:00+0000; description = Synthetic model card for a deterministic AI-output simulation component used in the PoC.,->DocumentReference: status = current; identifier = Trust AI Registration Number: trust-ai-000123; status = active; manufacturer = ExampleMed AI GmbH; note = Synthetic maintenance information for PoC purposes.,AI-assisted early warning risk assessment based on synthetic NEWS2-inspired vital parameters.](Device-device-riskassist-ai.md)

**Entities**

* **Role**: Source
  * **What**: [Observation Body temperature](Observation-sc-02-validation-observation-temperature-001.md)
* **Role**: Source
  * **What**: [Observation Heart rate](Observation-sc-02-validation-observation-heart-rate-001.md)
* **Role**: Source
  * **What**: [Observation Respiratory rate](Observation-sc-02-validation-observation-respiratory-rate-001.md)
* **Role**: Source
  * **What**: [Observation Blood pressure panel with all children optional](Observation-sc-02-validation-observation-blood-pressure-001.md)
* **Role**: Source
  * **What**: [Observation Oxygen saturation in Arterial blood by Pulse oximetry](Observation-sc-02-validation-observation-oxygen-saturation-001.md)
* **Role**: Source
  * **What**: [Observation Consciousness status](Observation-sc-02-validation-observation-consciousness-status-001.md)



## Resource Content

```json
{
  "resourceType" : "Provenance",
  "id" : "sc-02-validation-provenance-ai-output-001",
  "meta" : {
    "profile" : ["http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-provenance"]
  },
  "extension" : [{
    "url" : "http://example.org/fhir/trust-ai-transparency/StructureDefinition/usage-category",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/usage-category-cs",
        "code" : "primary-use",
        "display" : "Primary Use"
      }]
    }
  },
  {
    "url" : "http://example.org/fhir/trust-ai-transparency/StructureDefinition/case-specific-indication",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-case-specific-indication-cs",
        "code" : "prognosis",
        "display" : "Prognostic Prediction"
      }]
    }
  },
  {
    "url" : "http://example.org/fhir/trust-ai-transparency/StructureDefinition/automated-decision-flag",
    "valueBoolean" : false
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
        "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/gdpr-art6-codesystem",
        "code" : "gdpr-art-6-1-d"
      }]
    }
  },
  {
    "concept" : {
      "coding" : [{
        "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/gdpr-art9-codesystem",
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
