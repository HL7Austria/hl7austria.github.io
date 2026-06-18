# Data Provenance: AI Lineage - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Data Provenance: AI Lineage**

## Example Provenance: Data Provenance: AI Lineage

Profile: [EU AI Act Provenance (Human-in-the-Loop)](StructureDefinition-eu-ai-provenance.md)

Provenance for [Observation Nodule of lung (disorder)](Observation-observation-ai-nodule.md)

Summary

| | |
| :--- | :--- |
| Occurrence | 2026-04-08 08:00:00+0000 --> 2026-04-08 08:00:05+0000 |

**Agents**

* **who**: [Device: extension = ->DocumentReference: extension = ,,; status = current; type = AI Model Card; description = Intended for adult thorax CTs. Residual Risk: Potential for false-positive vascular artifacts.,; identifier = EU AI Database Identifier: EU-AI-2042-XJ992; manufacturer = Aetheria HealthTech Systems Corp.; contact = support@aetheria-health.test(Work),ph: +49 000 98765432(Work); note = Maintenance: Hardware calibration required every 12 months.,Security: Software patches are deployed monthly via remote update.](Device-device-aurascan-ai.md)



## Resource Content

```json
{
  "resourceType" : "Provenance",
  "id" : "prov-ai-lineage",
  "meta" : {
    "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-provenance"]
  },
  "extension" : [{
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ehds-usage-category",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
        "code" : "secondary-use",
        "display" : "Secondary Use"
      }]
    }
  },
  {
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ehds-data-permit",
    "valueIdentifier" : {
      "system" : "http://example.org/fhir/eu-ai-transparency/sid/ehds-data-permit",
      "value" : "EHDS-TEST-2042-991"
    }
  }],
  "target" : [{
    "reference" : "Observation/observation-ai-nodule"
  }],
  "occurredPeriod" : {
    "start" : "2026-04-08T08:00:00Z",
    "end" : "2026-04-08T08:00:05Z"
  },
  "authorization" : [{
    "concept" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/gdpr-art6-codesystem",
        "code" : "gdpr-art-6-1-b"
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
      "reference" : "Device/device-aurascan-ai"
    }
  }],
  "entity" : [{
    "role" : "source",
    "what" : {
      "reference" : "ImagingStudy/input-ct-thorax"
    }
  }]
}

```
