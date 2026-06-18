# Audit Log: AI Execution Trace - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Log: AI Execution Trace**

## Example AuditEvent: Audit Log: AI Execution Trace

Profile: [EU AI Act Machine Execution Audit Event](StructureDefinition-eu-ai-machine-execution-audit-event.md)

**EU AI Act Log Integrity Signature**: No display for Signature (type: Proof of origin (ETSI Signature Type Codes#ProofOfOrigin); when: 2026-04-08 08:00:06+0000; who: ->Device: extension = ->DocumentReference: extension = ,,; status = current; type = AI Model Card; description = Intended for adult thorax CTs. Residual Risk: Potential for false-positive vascular artifacts.,; identifier = EU AI Database Identifier: EU-AI-2042-XJ992; manufacturer = Aetheria HealthTech Systems Corp.; contact = support@aetheria-health.test(Work),ph: +49 000 98765432(Work); note = Maintenance: Hardware calibration required every 12 months.,Security: Software patches are deployed monthly via remote update.; data: e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855)

**code**: RESTful Operation

**occurred**: 2026-04-08 08:00:00+0000 --> 2026-04-08 08:00:05+0000

**recorded**: 2026-04-08 08:00:06+0000

### Agents

| | | |
| :--- | :--- | :--- |
| - | **Who** | **Requestor** |
| * | [Device: extension = ->DocumentReference: extension = ,,; status = current; type = AI Model Card; description = Intended for adult thorax CTs. Residual Risk: Potential for false-positive vascular artifacts.,; identifier = EU AI Database Identifier: EU-AI-2042-XJ992; manufacturer = Aetheria HealthTech Systems Corp.; contact = support@aetheria-health.test(Work),ph: +49 000 98765432(Work); note = Maintenance: Hardware calibration required every 12 months.,Security: Software patches are deployed monthly via remote update.](Device-device-aurascan-ai.md) | false |

### Sources

| | |
| :--- | :--- |
| - | **Observer** |
| * | [Device: extension = ->DocumentReference: extension = ,,; status = current; type = AI Model Card; description = Intended for adult thorax CTs. Residual Risk: Potential for false-positive vascular artifacts.,; identifier = EU AI Database Identifier: EU-AI-2042-XJ992; manufacturer = Aetheria HealthTech Systems Corp.; contact = support@aetheria-health.test(Work),ph: +49 000 98765432(Work); note = Maintenance: Hardware calibration required every 12 months.,Security: Software patches are deployed monthly via remote update.](Device-device-aurascan-ai.md) |

> **entity****what**: [ImagingStudy: status = available; started = 2026-04-08 07:45:00+0000](ImagingStudy-input-ct-thorax.md)**role**: Domain Resource

> **entity****what**: Identifier: `http://example.org/fhir/eu-ai-transparency/identifier/reference-database`/Atlas-Version-9**role**: Data Repository

> **entity****what**: [Observation Nodule of lung (disorder)](Observation-observation-ai-nodule.md)**role**: Report



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "audit-ai-execution",
  "meta" : {
    "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-machine-execution-audit-event"]
  },
  "extension" : [{
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-log-integrity",
    "valueSignature" : {
      "type" : [{
        "system" : "http://uri.etsi.org/01903/v1.2.2",
        "code" : "ProofOfOrigin"
      }],
      "when" : "2026-04-08T08:00:06Z",
      "who" : {
        "reference" : "Device/device-aurascan-ai"
      },
      "data" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    }
  }],
  "code" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/audit-event-type",
      "code" : "rest",
      "display" : "RESTful Operation"
    }]
  },
  "occurredPeriod" : {
    "start" : "2026-04-08T08:00:00Z",
    "end" : "2026-04-08T08:00:05Z"
  },
  "recorded" : "2026-04-08T08:00:06Z",
  "agent" : [{
    "who" : {
      "reference" : "Device/device-aurascan-ai"
    },
    "requestor" : false
  }],
  "source" : {
    "observer" : {
      "reference" : "Device/device-aurascan-ai"
    }
  },
  "entity" : [{
    "what" : {
      "reference" : "ImagingStudy/input-ct-thorax"
    },
    "role" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/object-role",
        "code" : "4"
      }]
    }
  },
  {
    "what" : {
      "identifier" : {
        "system" : "http://example.org/fhir/eu-ai-transparency/identifier/reference-database",
        "value" : "Atlas-Version-9"
      }
    },
    "role" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/object-role",
        "code" : "17"
      }]
    }
  },
  {
    "what" : {
      "reference" : "Observation/observation-ai-nodule"
    },
    "role" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/object-role",
        "code" : "3"
      }]
    }
  }]
}

```
