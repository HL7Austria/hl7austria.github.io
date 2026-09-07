# AuditEvent: AI Diagnostic Report Generation - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AuditEvent: AI Diagnostic Report Generation**

## Example AuditEvent: AuditEvent: AI Diagnostic Report Generation

Profile: [EU AI Execution Audit Event](StructureDefinition-eu-ai-machine-execution-audit-event.md)

**code**: AI diagnostic report generation

**action**: Create

**occurred**: 2026-03-10 09:05:00+0000 --> 2026-03-10 09:05:03+0000

**recorded**: 2026-03-10 09:05:04+0000

### Agents

| | | |
| :--- | :--- | :--- |
| - | **Who** | **Requestor** |
| * | [Device: extension = ,->DocumentReference: extension = Not Clinically Validated,,,; status = current; type = AI Model Card; date = 2026-03-01 10:00:00+0000; description = Synthetic model card for an AI system generating diagnostic reports from structured clinical input.,->DocumentReference: status = current; identifier = EU AI Registration Number; status = active; manufacturer = Example AI Medical GmbH; contact = manufacturer@example-ai-medical.example,dpo@example-ai-medical.example; note = Annual maintenance and validation required.](Device-dr-ai-device.md) | false |

### Sources

| | |
| :--- | :--- |
| - | **Observer** |
| * | [Device: extension = ,->DocumentReference: extension = Not Clinically Validated,,,; status = current; type = AI Model Card; date = 2026-03-01 10:00:00+0000; description = Synthetic model card for an AI system generating diagnostic reports from structured clinical input.,->DocumentReference: status = current; identifier = EU AI Registration Number; status = active; manufacturer = Example AI Medical GmbH; contact = manufacturer@example-ai-medical.example,dpo@example-ai-medical.example; note = Annual maintenance and validation required.](Device-dr-ai-device.md) |

### Entities

| | | |
| :--- | :--- | :--- |
| - | **What** | **Role** |
| * | [Diagnostic Report for '' for '->Anonymous Patient Female, DoB: 1965-06-15'](DiagnosticReport-dr-ai-diagnostic-report.md) | AI Output |



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "dr-ai-audit-event",
  "meta" : {
    "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-machine-execution-audit-event"]
  },
  "code" : {
    "text" : "AI diagnostic report generation"
  },
  "action" : "C",
  "occurredPeriod" : {
    "start" : "2026-03-10T09:05:00Z",
    "end" : "2026-03-10T09:05:03Z"
  },
  "recorded" : "2026-03-10T09:05:04Z",
  "agent" : [{
    "who" : {
      "reference" : "Device/dr-ai-device"
    },
    "requestor" : false
  }],
  "source" : {
    "observer" : {
      "reference" : "Device/dr-ai-device"
    }
  },
  "entity" : [{
    "what" : {
      "reference" : "DiagnosticReport/dr-ai-diagnostic-report"
    },
    "role" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-audit-entity-role",
        "code" : "ai-output"
      }]
    }
  }]
}

```
