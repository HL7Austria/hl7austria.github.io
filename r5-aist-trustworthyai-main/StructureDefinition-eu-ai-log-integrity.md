# EU AI Log Integrity Signature - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EU AI Log Integrity Signature**

## Extension: EU AI Log Integrity Signature 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-log-integrity | *Version*:0.1.0 |
| Draft as of 2026-09-03 | *Computable Name*:LogIntegritySignature |

Provides a digital signature and associated metadata to support verification of the integrity and origin of the AI execution audit record.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EU AI Execution Audit Event](StructureDefinition-eu-ai-machine-execution-audit-event.md)
* Examples for this Extension: [AuditEvent/sc-01-ai-only-audit-event-ai-execution-001](AuditEvent-sc-01-ai-only-audit-event-ai-execution-001.md), [AuditEvent/sc-02-validation-audit-event-ai-execution-001](AuditEvent-sc-02-validation-audit-event-ai-execution-001.md), [AuditEvent/sc-03-override-audit-event-ai-execution-001](AuditEvent-sc-03-override-audit-event-ai-execution-001.md) and [AuditEvent/sc-04-correction-exp-audit-event-ai-execution-001](AuditEvent-sc-04-correction-exp-audit-event-ai-execution-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.eu.aitransparency|current/StructureDefinition/StructureDefinition-eu-ai-log-integrity.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-eu-ai-log-integrity.csv), [Excel](StructureDefinition-eu-ai-log-integrity.xlsx), [Schematron](StructureDefinition-eu-ai-log-integrity.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "eu-ai-log-integrity",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-log-integrity",
  "version" : "0.1.0",
  "name" : "LogIntegritySignature",
  "title" : "EU AI Log Integrity Signature",
  "status" : "draft",
  "date" : "2026-09-03T11:53:05+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Provides a digital signature and associated metadata to support verification of the integrity and origin of the AI execution audit record.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "AuditEvent"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "EU AI Log Integrity Signature",
      "definition" : "Provides a digital signature and associated metadata to support verification of the integrity and origin of the AI execution audit record."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-log-integrity"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Signature"
      }]
    },
    {
      "id" : "Extension.value[x].type",
      "path" : "Extension.value[x].type",
      "min" : 1
    },
    {
      "id" : "Extension.value[x].when",
      "path" : "Extension.value[x].when",
      "min" : 1
    },
    {
      "id" : "Extension.value[x].who",
      "path" : "Extension.value[x].who",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Device"]
      }]
    },
    {
      "id" : "Extension.value[x].sigFormat",
      "path" : "Extension.value[x].sigFormat",
      "min" : 1
    },
    {
      "id" : "Extension.value[x].data",
      "path" : "Extension.value[x].data",
      "min" : 1
    }]
  }
}

```
