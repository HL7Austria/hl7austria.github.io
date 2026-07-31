# EU AI Execution Audit Event - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EU AI Execution Audit Event**

## Resource Profile: EU AI Execution Audit Event 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-machine-execution-audit-event | *Version*:0.1.0 |
| Draft as of 2026-07-31 | *Computable Name*:EU_AIAuditEvent |

 
An AuditEvent profile documenting execution-related metadata of an AI-supported processing event to support retrospective reconstruction and auditability. 

**Usages:**

* Examples for this Profile: [AuditEvent/sc-01-ai-only-audit-event-ai-execution-001](AuditEvent-sc-01-ai-only-audit-event-ai-execution-001.md), [AuditEvent/sc-02-validation-audit-event-ai-execution-001](AuditEvent-sc-02-validation-audit-event-ai-execution-001.md), [AuditEvent/sc-03-override-audit-event-ai-execution-001](AuditEvent-sc-03-override-audit-event-ai-execution-001.md) and [AuditEvent/sc-04-correction-exp-audit-event-ai-execution-001](AuditEvent-sc-04-correction-exp-audit-event-ai-execution-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.eu.aitransparency|current/StructureDefinition/StructureDefinition-eu-ai-machine-execution-audit-event.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-eu-ai-machine-execution-audit-event.csv), [Excel](StructureDefinition-eu-ai-machine-execution-audit-event.xlsx), [Schematron](StructureDefinition-eu-ai-machine-execution-audit-event.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "eu-ai-machine-execution-audit-event",
  "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-machine-execution-audit-event",
  "version" : "0.1.0",
  "name" : "EU_AIAuditEvent",
  "title" : "EU AI Execution Audit Event",
  "status" : "draft",
  "date" : "2026-07-31T11:07:29+00:00",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-log-integrity"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.occurred[x]",
      "path" : "AuditEvent.occurred[x]",
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
        "targetProfile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-device"]
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
        "targetProfile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-device"]
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
          "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-audit-entity-role",
          "code" : "reference-database"
        }]
      }
    },
    {
      "id" : "AuditEvent.entity:outputData",
      "path" : "AuditEvent.entity",
      "sliceName" : "outputData",
      "short" : "A FHIR resource representing an output generated by the AI system during the audited execution",
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
          "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-audit-entity-role",
          "code" : "ai-output"
        }]
      }
    }]
  }
}

```
