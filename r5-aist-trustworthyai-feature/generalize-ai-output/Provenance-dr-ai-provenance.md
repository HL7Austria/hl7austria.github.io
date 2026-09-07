# Provenance: AI Diagnostic Report - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Provenance: AI Diagnostic Report**

## Example Provenance: Provenance: AI Diagnostic Report

Profile: [EU AI Provenance](StructureDefinition-eu-ai-provenance.md)

Provenance for [Diagnostic Report for '' for '->Anonymous Patient Female, DoB: 1965-06-15'](DiagnosticReport-dr-ai-diagnostic-report.md)

Summary

| | |
| :--- | :--- |
| Occurrence | 2026-03-10 09:05:00+0000 --> 2026-03-10 09:05:03+0000 |
| Recorded | 2026-03-10 09:05:04+0000 |

**Agents**

* **who**: [Device: extension = ,->DocumentReference: extension = Not Clinically Validated,,,; status = current; type = AI Model Card; date = 2026-03-01 10:00:00+0000; description = Synthetic model card for an AI system generating diagnostic reports from structured clinical input.,->DocumentReference: status = current; identifier = EU AI Registration Number; status = active; manufacturer = Example AI Medical GmbH; contact = manufacturer@example-ai-medical.example,dpo@example-ai-medical.example; note = Annual maintenance and validation required.](Device-dr-ai-device.md)



## Resource Content

```json
{
  "resourceType" : "Provenance",
  "id" : "dr-ai-provenance",
  "meta" : {
    "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-provenance"]
  },
  "extension" : [{
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ehds-usage-category",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/ehds-usage-category-cs",
        "code" : "primary-use",
        "display" : "Primary Use"
      }]
    }
  },
  {
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/case-specific-indication",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-case-specific-indication-cs",
        "code" : "diagnostic-support",
        "display" : "Diagnostic Support"
      }]
    }
  },
  {
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/automated-decision-flag",
    "valueBoolean" : false
  }],
  "target" : [{
    "reference" : "DiagnosticReport/dr-ai-diagnostic-report"
  }],
  "occurredPeriod" : {
    "start" : "2026-03-10T09:05:00Z",
    "end" : "2026-03-10T09:05:03Z"
  },
  "recorded" : "2026-03-10T09:05:04Z",
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
  "agent" : [{
    "who" : {
      "reference" : "Device/dr-ai-device"
    }
  }],
  "entity" : [{
    "role" : "source",
    "what" : {
      "reference" : "Observation/dr-input-observation"
    }
  }]
}

```
