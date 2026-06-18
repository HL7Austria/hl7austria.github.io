# EU AI Act Log Integrity Signature - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EU AI Act Log Integrity Signature**

## Extension: EU AI Act Log Integrity Signature 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-log-integrity | *Version*:0.1.0 |
| Draft as of 2026-06-18 | *Computable Name*:LogIntegritySignature |

Cryptographic signature or verification hash to ensure the integrity, accountability, and non-repudiation of the AI execution audit log.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EU AI Act Machine Execution Audit Event](StructureDefinition-eu-ai-machine-execution-audit-event.md)
* Examples for this Extension: [AuditEvent/audit-ai-execution](AuditEvent-audit-ai-execution.md)

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
  "title" : "EU AI Act Log Integrity Signature",
  "status" : "draft",
  "date" : "2026-06-18T08:40:47+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Cryptographic signature or verification hash to ensure the integrity, accountability, and non-repudiation of the AI execution audit log.",
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
      "short" : "EU AI Act Log Integrity Signature",
      "definition" : "Cryptographic signature or verification hash to ensure the integrity, accountability, and non-repudiation of the AI execution audit log."
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
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].type",
      "path" : "Extension.value[x].type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].when",
      "path" : "Extension.value[x].when",
      "min" : 1,
      "mustSupport" : true
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
      "id" : "Extension.value[x].data",
      "path" : "Extension.value[x].data",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
