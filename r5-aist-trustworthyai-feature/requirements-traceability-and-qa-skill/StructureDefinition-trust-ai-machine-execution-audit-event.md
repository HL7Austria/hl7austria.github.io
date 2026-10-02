# Trust AI Execution Audit Event - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Trust AI Execution Audit Event**

## Resource Profile: Trust AI Execution Audit Event 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-machine-execution-audit-event | *Version*:0.1.0 |
| Draft as of 2026-10-02 | *Computable Name*:Trust_AIAuditEvent |

 
An AuditEvent profile documenting execution-related metadata of an AI-supported processing event to support retrospective reconstruction and auditability. 

### Regulatory Requirements

This profile is part of the **AI Output Context** layer. It implements the following documentation requirements from the [Requirements Traceability](requirements.md) analysis.

| | | | |
| :--- | :--- | :--- | :--- |
| [SYS-10](requirements.md#req-sys-10) | AI Act Art. 12 / EHDS ANNEX II (3) | Audit Trail & Access Logging | Dynamic |
| [LAW-08](requirements.md#req-law-08) | AI Act Art. 12(3) | Log Integrity | Dynamic |

#### Element Mapping

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| [SYS-10.1](requirements.md#sys-101) | Execution Period (Start/End) | 1..1 | [`AuditEvent.occurredPeriod`](StructureDefinition-trust-ai-machine-execution-audit-event-definitions.md#AuditEvent.occurredPeriod) | ✅ Covered | Also:[Trust_AIProvenance](StructureDefinition-trust-ai-provenance.md),[Trust_AIObservation](StructureDefinition-trust-ai-observation.md). |
| [SYS-10.3](requirements.md#sys-103) | Reference Database | 0..* | [`AuditEvent.entity:referenceDb`](StructureDefinition-trust-ai-machine-execution-audit-event-definitions.md#AuditEvent.entity:referenceDb) | ✅ Covered |   |
| [LAW-08](requirements.md#law-08) | Log Integrity | 1..1 | [`AuditEvent.extension:logIntegrity`](StructureDefinition-trust-ai-machine-execution-audit-event-definitions.md#AuditEvent.extension:logIntegrity) | ⚠️ Partial | Extension`trust-ai-log-integrity`is 0..1, while the matrix requires 1..1. |

**Usages:**

* Examples for this Profile: [AuditEvent/dr-ai-audit-event](AuditEvent-dr-ai-audit-event.md), [AuditEvent/sc-01-ai-only-audit-event-ai-execution-001](AuditEvent-sc-01-ai-only-audit-event-ai-execution-001.md), [AuditEvent/sc-02-validation-audit-event-ai-execution-001](AuditEvent-sc-02-validation-audit-event-ai-execution-001.md), [AuditEvent/sc-03-override-audit-event-ai-execution-001](AuditEvent-sc-03-override-audit-event-ai-execution-001.md) and [AuditEvent/sc-04-correction-exp-audit-event-ai-execution-001](AuditEvent-sc-04-correction-exp-audit-event-ai-execution-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.trust.aitransparency|current/StructureDefinition/StructureDefinition-trust-ai-machine-execution-audit-event.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-trust-ai-machine-execution-audit-event.csv), [Excel](StructureDefinition-trust-ai-machine-execution-audit-event.xlsx), [Schematron](StructureDefinition-trust-ai-machine-execution-audit-event.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "trust-ai-machine-execution-audit-event",
  "url" : "http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-machine-execution-audit-event",
  "version" : "0.1.0",
  "name" : "Trust_AIAuditEvent",
  "title" : "Trust AI Execution Audit Event",
  "status" : "draft",
  "date" : "2026-10-02T06:03:15+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "An AuditEvent profile documenting execution-related metadata of an AI-supported processing event to support retrospective reconstruction and auditability.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "dicom",
    "uri" : "http://nema.org/dicom",
    "name" : "DICOM Tag Mapping"
  },
  {
    "identity" : "w3c.prov",
    "uri" : "http://www.w3.org/ns/prov",
    "name" : "W3C PROV"
  },
  {
    "identity" : "fhirprovenance",
    "uri" : "http://hl7.org/fhir/provenance",
    "name" : "FHIR Provenance Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AuditEvent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AuditEvent",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "AuditEvent",
      "path" : "AuditEvent"
    },
    {
      "id" : "AuditEvent.extension",
      "path" : "AuditEvent.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "AuditEvent.extension:logIntegrity",
      "path" : "AuditEvent.extension",
      "sliceName" : "logIntegrity",
      "short" : "Cryptographic signature of this log entry",
      "requirements" : "AI Act Art. 12 | Log Integrity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-log-integrity"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.occurred[x]",
      "path" : "AuditEvent.occurred[x]",
      "requirements" : "AI Act Art. 12 | Audit Trail",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "AuditEvent.occurred[x].start",
      "path" : "AuditEvent.occurred[x].start",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.occurred[x].end",
      "path" : "AuditEvent.occurred[x].end",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.recorded",
      "path" : "AuditEvent.recorded",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent",
      "path" : "AuditEvent.agent",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent.who",
      "path" : "AuditEvent.agent.who",
      "short" : "AI system that performed the processing activity",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-device"]
      }]
    },
    {
      "id" : "AuditEvent.source",
      "path" : "AuditEvent.source",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.source.observer",
      "path" : "AuditEvent.source.observer",
      "short" : "AI system that generated this audit record",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-device"]
      }]
    },
    {
      "id" : "AuditEvent.entity",
      "path" : "AuditEvent.entity",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "role"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "AuditEvent.entity:referenceDb",
      "path" : "AuditEvent.entity",
      "sliceName" : "referenceDb",
      "short" : "Reference database or knowledge source used by the AI system",
      "requirements" : "AI Act Art. 12 | Audit Trail",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity:referenceDb.what",
      "path" : "AuditEvent.entity.what",
      "min" : 1
    },
    {
      "id" : "AuditEvent.entity:referenceDb.role",
      "path" : "AuditEvent.entity.role",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-audit-entity-role",
          "code" : "reference-database"
        }]
      }
    },
    {
      "id" : "AuditEvent.entity:outputData",
      "path" : "AuditEvent.entity",
      "sliceName" : "outputData",
      "short" : "A FHIR resource representing an output generated by the AI system during the audited execution",
      "requirements" : "AI Act Art. 12 | Audit Trail",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity:outputData.what",
      "path" : "AuditEvent.entity.what",
      "min" : 1
    },
    {
      "id" : "AuditEvent.entity:outputData.role",
      "path" : "AuditEvent.entity.role",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-audit-entity-role",
          "code" : "ai-output"
        }]
      }
    }]
  }
}

```
