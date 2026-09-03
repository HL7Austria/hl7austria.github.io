# Audit Log: AI Execution Trace (2) - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Log: AI Execution Trace (2)**

## Example AuditEvent: Audit Log: AI Execution Trace (2)

Profile: [EU AI Execution Audit Event](StructureDefinition-eu-ai-machine-execution-audit-event.md)

**EU AI Log Integrity Signature**: No display for Signature (type: Verification Signature (ASTM Signature Type Codes#1.2.840.10065.1.12.1.5); when: 2026-03-01 10:15:04+0000; who: ->Device: extension = ,->DocumentReference: extension = Not Clinically Validated,,,; status = current; type = AI Model Card; date = 2026-03-01 10:00:00+0000; description = Synthetic model card for a deterministic AI-output simulation component used in the PoC.,->DocumentReference: status = current; identifier = EU AI Registration Number; status = active; manufacturer = ExampleMed AI GmbH; note = Synthetic maintenance information for PoC purposes.,AI-assisted early warning risk assessment based on synthetic NEWS2-inspired vital parameters.; sigFormat: text/plain; data: c2hhMjU2LTIzNGY0MmQxMzQyN2YyMzRi...)

**code**: RESTful Operation

**action**: Create

**occurred**: 2026-03-01 10:15:00+0000 --> 2026-03-01 10:15:03+0000

**recorded**: 2026-03-01 10:15:04+0000

**authorization**: Document simulated AI execution for PoC traceability.

**patient**: [Anonymous Patient Female, DoB: 1959-04-12](Patient-patient-001.md)

**encounter**: [Encounter: status = completed; class = ambulatory; actualPeriod = 2026-03-01 10:00:00+0000 --> 2026-03-01 10:30:00+0000](Encounter-encounter-001.md)

### Agents

| | | |
| :--- | :--- | :--- |
| - | **Who** | **Requestor** |
| * | [Device: extension = ,->DocumentReference: extension = Not Clinically Validated,,,; status = current; type = AI Model Card; date = 2026-03-01 10:00:00+0000; description = Synthetic model card for a deterministic AI-output simulation component used in the PoC.,->DocumentReference: status = current; identifier = EU AI Registration Number; status = active; manufacturer = ExampleMed AI GmbH; note = Synthetic maintenance information for PoC purposes.,AI-assisted early warning risk assessment based on synthetic NEWS2-inspired vital parameters.](Device-device-riskassist-ai.md) | false |

### Sources

| | |
| :--- | :--- |
| - | **Observer** |
| * | [Device: extension = ,->DocumentReference: extension = Not Clinically Validated,,,; status = current; type = AI Model Card; date = 2026-03-01 10:00:00+0000; description = Synthetic model card for a deterministic AI-output simulation component used in the PoC.,->DocumentReference: status = current; identifier = EU AI Registration Number; status = active; manufacturer = ExampleMed AI GmbH; note = Synthetic maintenance information for PoC purposes.,AI-assisted early warning risk assessment based on synthetic NEWS2-inspired vital parameters.](Device-device-riskassist-ai.md) |

### Entities

| | | |
| :--- | :--- | :--- |
| - | **What** | **Role** |
| * | [Observation ](Observation-sc-02-validation-ai-observation-risk-001.md) | AI Output |



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "sc-02-validation-audit-event-ai-execution-001",
  "meta" : {
    "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-machine-execution-audit-event"]
  },
  "extension" : [{
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-log-integrity",
    "valueSignature" : {
      "type" : [{
        "system" : "urn:iso-astm:E1762-95:2013",
        "code" : "1.2.840.10065.1.12.1.5",
        "display" : "Verification Signature"
      }],
      "when" : "2026-03-01T10:15:04Z",
      "who" : {
        "reference" : "Device/device-riskassist-ai"
      },
      "sigFormat" : "text/plain",
      "data" : "c2hhMjU2LTIzNGY0MmQxMzQyN2YyMzRiOWU3YTg5NTJjMGU1ZjA1MmRkZDNiNTBkMWMxMGZjY2Q0OWNjN2EwMWM5OWQ0NjA="
    }
  }],
  "code" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/audit-event-type",
      "code" : "rest",
      "display" : "RESTful Operation"
    }],
    "text" : "RESTful Operation"
  },
  "action" : "C",
  "occurredPeriod" : {
    "start" : "2026-03-01T10:15:00Z",
    "end" : "2026-03-01T10:15:03Z"
  },
  "recorded" : "2026-03-01T10:15:04Z",
  "authorization" : [{
    "text" : "Document simulated AI execution for PoC traceability."
  }],
  "patient" : {
    "reference" : "Patient/patient-001"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-001"
  },
  "agent" : [{
    "who" : {
      "reference" : "Device/device-riskassist-ai"
    },
    "requestor" : false
  }],
  "source" : {
    "observer" : {
      "reference" : "Device/device-riskassist-ai"
    }
  },
  "entity" : [{
    "what" : {
      "reference" : "Observation/sc-02-validation-ai-observation-risk-001"
    },
    "role" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-audit-entity-role",
        "code" : "ai-output"
      }],
      "text" : "AI Output"
    }
  }]
}

```
