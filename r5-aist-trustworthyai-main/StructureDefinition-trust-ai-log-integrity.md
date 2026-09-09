# Trust AI Log Integrity Signature - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Trust AI Log Integrity Signature**

## Extension: Trust AI Log Integrity Signature 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-log-integrity | *Version*:0.1.0 |
| Draft as of 2026-09-09 | *Computable Name*:LogIntegritySignature |

Provides a digital signature and associated metadata to support verification of the integrity and origin of the AI execution audit record.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Trust AI Execution Audit Event](StructureDefinition-trust-ai-machine-execution-audit-event.md)
* Examples for this Extension: [AuditEvent/sc-01-ai-only-audit-event-ai-execution-001](AuditEvent-sc-01-ai-only-audit-event-ai-execution-001.md), [AuditEvent/sc-02-validation-audit-event-ai-execution-001](AuditEvent-sc-02-validation-audit-event-ai-execution-001.md), [AuditEvent/sc-03-override-audit-event-ai-execution-001](AuditEvent-sc-03-override-audit-event-ai-execution-001.md) and [AuditEvent/sc-04-correction-exp-audit-event-ai-execution-001](AuditEvent-sc-04-correction-exp-audit-event-ai-execution-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.trust.aitransparency|current/StructureDefinition/StructureDefinition-trust-ai-log-integrity.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-trust-ai-log-integrity.csv), [Excel](StructureDefinition-trust-ai-log-integrity.xlsx), [Schematron](StructureDefinition-trust-ai-log-integrity.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "trust-ai-log-integrity",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-log-integrity",
  "version" : "0.1.0",
  "name" : "LogIntegritySignature",
  "title" : "Trust AI Log Integrity Signature",
  "status" : "draft",
  "date" : "2026-09-09T11:13:25+00:00",
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
      "short" : "Trust AI Log Integrity Signature",
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
      "fixedUri" : "http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-log-integrity"
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
