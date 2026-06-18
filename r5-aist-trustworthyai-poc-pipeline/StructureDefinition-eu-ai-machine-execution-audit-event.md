# EU AI Act Machine Execution Audit Event - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EU AI Act Machine Execution Audit Event**

## Resource Profile: EU AI Act Machine Execution Audit Event 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-machine-execution-audit-event | *Version*:0.1.0 |
| Draft as of 2026-06-18 | *Computable Name*:EU_AIAuditEvent |

 
Logs the automated execution of an AI model, establishing the core traceability chain. 

**Usages:**

* Examples for this Profile: [AuditEvent/sc-02-validation-audit-event-ai-execution-001](AuditEvent-sc-02-validation-audit-event-ai-execution-001.md)

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
  "title" : "EU AI Act Machine Execution Audit Event",
  "status" : "draft",
  "date" : "2026-06-18T09:07:35+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Logs the automated execution of an AI model, establishing the core traceability chain.",
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
      },
      "min" : 1
    },
    {
      "id" : "AuditEvent.extension:logIntegrity",
      "path" : "AuditEvent.extension",
      "sliceName" : "logIntegrity",
      "short" : "Cryptographic signature of this log entry",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-log-integrity"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.code",
      "path" : "AuditEvent.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/audit-event-type",
          "code" : "rest",
          "display" : "RESTful Operation"
        }]
      }
    },
    {
      "id" : "AuditEvent.action",
      "path" : "AuditEvent.action",
      "patternCode" : "C"
    },
    {
      "id" : "AuditEvent.occurred[x]",
      "path" : "AuditEvent.occurred[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "AuditEvent.occurred[x]:occurredPeriod",
      "path" : "AuditEvent.occurred[x]",
      "sliceName" : "occurredPeriod",
      "short" : "Exact execution period (Start/End)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
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
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-device"]
      }]
    },
    {
      "id" : "AuditEvent.agent.requestor",
      "path" : "AuditEvent.agent.requestor",
      "patternBoolean" : false
    },
    {
      "id" : "AuditEvent.source",
      "path" : "AuditEvent.source",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.source.observer",
      "path" : "AuditEvent.source.observer",
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
      "min" : 2,
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity:inputData",
      "path" : "AuditEvent.entity",
      "sliceName" : "inputData",
      "short" : "Input Data Processed",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity:inputData.role",
      "path" : "AuditEvent.entity.role",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/object-role",
          "code" : "4"
        }]
      }
    },
    {
      "id" : "AuditEvent.entity:referenceDb",
      "path" : "AuditEvent.entity",
      "sliceName" : "referenceDb",
      "short" : "Identification of specific reference databases or versions (e.g., Clinical Guidelines)",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity:referenceDb.role",
      "path" : "AuditEvent.entity.role",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/object-role",
          "code" : "17"
        }]
      }
    },
    {
      "id" : "AuditEvent.entity:outputData",
      "path" : "AuditEvent.entity",
      "sliceName" : "outputData",
      "short" : "The resulting AI-generated Observation",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity:outputData.what",
      "path" : "AuditEvent.entity.what",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-observation"]
      }]
    },
    {
      "id" : "AuditEvent.entity:outputData.role",
      "path" : "AuditEvent.entity.role",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/object-role",
          "code" : "3"
        }]
      }
    }]
  }
}

```
