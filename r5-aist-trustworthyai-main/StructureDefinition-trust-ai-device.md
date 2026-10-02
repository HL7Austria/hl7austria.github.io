# Trust AI System Device - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Trust AI System Device**

## Resource Profile: Trust AI System Device 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-device | *Version*:0.1.0 |
| Draft as of 2026-10-02 | *Computable Name*:Trust_AIDevice |

 
A Device profile representing an AI system or software component, including system identification, versioning, intended purpose, and selected regulatory documentation metadata. 

### Regulatory Requirements

This profile is part of the **Static System Context** layer. It implements the following documentation requirements from the [Requirements Traceability](requirements.md) analysis.

| | | | |
| :--- | :--- | :--- | :--- |
| [SYS-01](requirements.md#req-sys-01) | AI Act Annex IV 1 | System Name & Version | Static |
| [SYS-02](requirements.md#req-sys-02) | GDPR Art. 13 / AI Act Annex IV 1 | Manufacturer / Provider | Static |
| [SYS-03a](requirements.md#req-sys-03a) | AI Act Art. 47 | EU Declaration of Conformity | Static |
| [SYS-03b](requirements.md#req-sys-03b) | AI Act Art. 48 | Digital CE Marking & Notified Body ID | Static |
| [SYS-03c](requirements.md#req-sys-03c) | AI Act Art. 15 | Cybersecurity Status | Static |
| [SYS-07](requirements.md#req-sys-07) | AI Act Art. 13(3) | Expected Lifetime & Maintenance | Static |
| [SYS-11](requirements.md#req-sys-11) | AI Act Art. 49 | EU Database Registration ID | Static |
| [SYS-12](requirements.md#req-sys-12) | AI Act Art. 17 | QMS Certification | Static |
| [USE-01](requirements.md#req-use-01) | AI Act Art. 13 (3) / GDPR Art. 5 | Intended Purpose | Static |
| [LAW-04](requirements.md#req-law-04) | GDPR Art. 13(1)(f) / Art. 44 | Third-Country Data Transfer | Static |

#### Element Mapping

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| [SYS-01.1](requirements.md#sys-011) | System Name | 1..1 | [`Device.name`](StructureDefinition-trust-ai-device-definitions.md#Device.name) | ✅ Covered |   |
| [SYS-01.2](requirements.md#sys-012) | System Version | 1..1 | [`Device.version`](StructureDefinition-trust-ai-device-definitions.md#Device.version) | ✅ Covered |   |
| [SYS-02.1](requirements.md#sys-021) | Manufacturer Name | 1..1 | [`Device.manufacturer`](StructureDefinition-trust-ai-device-definitions.md#Device.manufacturer),[`Device.owner`](StructureDefinition-trust-ai-device-definitions.md#Device.owner) | ✅ Covered | `owner`references the responsible Trust_AIOrganization. |
| [SYS-03a](requirements.md#sys-03a) | EU Declaration of Conformity | 1..1 | [`Device.extension:conformityDeclaration`](StructureDefinition-trust-ai-device-definitions.md#Device.extension:conformityDeclaration) | ✅ Covered | Extension`trust-ai-conformity-reference`→ DocumentReference of the declaration. |
| [SYS-03b.1](requirements.md#sys-03b1) | CE Marking Flag | 1..1 | [`Device.property:ceMark`](StructureDefinition-trust-ai-device-definitions.md#Device.property:ceMark) | ✅ Covered |   |
| [SYS-03b.2](requirements.md#sys-03b2) | Notified Body ID | 0..1 | [`Device.property:notifiedBody`](StructureDefinition-trust-ai-device-definitions.md#Device.property:notifiedBody) | ✅ Covered |   |
| [SYS-03c](requirements.md#sys-03c) | Cybersecurity Status | 1..1 | [`Device.conformsTo`](StructureDefinition-trust-ai-device-definitions.md#Device.conformsTo) | ⚠️ Partial | No dedicated element; applied security standards can be listed in`conformsTo`, but a reference to the cybersecurity test report is not modelled. |
| [SYS-07.1](requirements.md#sys-071) | Expected Lifetime | 1..1 | [`Device.property:expectedLifetime`](StructureDefinition-trust-ai-device-definitions.md#Device.property:expectedLifetime) | ✅ Covered |   |
| [SYS-07.2](requirements.md#sys-072) | Maintenance Requirements | 1..1 | [`Device.conformsTo`](StructureDefinition-trust-ai-device-definitions.md#Device.conformsTo) | ✅ Covered | Maintenance and update requirements are part of the technical documentation. Also:[Trust_AIModelCard](StructureDefinition-trust-ai-model-card.md). |
| [SYS-11](requirements.md#sys-11) | EU Database Registration ID | 1..1 | [`Device.identifier:euDatabaseId`](StructureDefinition-trust-ai-device-definitions.md#Device.identifier:euDatabaseId) | ✅ Covered |   |
| [SYS-12](requirements.md#sys-12) | QMS Certification | 1..1 | [`Device.conformsTo`](StructureDefinition-trust-ai-device-definitions.md#Device.conformsTo) | ✅ Covered | QMS certification in`conformsTo`; the AI incident reporting contact supports the QMS. Also:[Trust_AIOrganization](StructureDefinition-trust-ai-organization.md). |
| [USE-01.1](requirements.md#use-011) | Medical Purpose Description | 1..1 | [`Device.property:intendedPurpose`](StructureDefinition-trust-ai-device-definitions.md#Device.property:intendedPurpose) | ✅ Covered |   |
| [USE-01.2](requirements.md#use-012) | Intended Target Population | 1..* | [`Device.property:targetPopulation`](StructureDefinition-trust-ai-device-definitions.md#Device.property:targetPopulation) | ✅ Covered |   |
| [LAW-04.1](requirements.md#law-041) | Third-Country Transfer Flag | 1..1 | [`Device.extension:dataTransfer`](StructureDefinition-trust-ai-device-definitions.md#Device.extension:dataTransfer) | ✅ Covered | Sub-extension`transferFlag`. |
| [LAW-04.2](requirements.md#law-042) | Destination Country | 0..* | [`Device.extension:dataTransfer`](StructureDefinition-trust-ai-device-definitions.md#Device.extension:dataTransfer) | ✅ Covered | Sub-extension`destinationCountry`(ISO 3166). |

**Usages:**

* Refer to this Profile: [Trust AI Execution Audit Event](StructureDefinition-trust-ai-machine-execution-audit-event.md), [Trust AI Generated Observation](StructureDefinition-trust-ai-observation.md) and [Trust AI Provenance](StructureDefinition-trust-ai-provenance.md)
* Examples for this Profile: [Device/device-riskassist-ai](Device-device-riskassist-ai.md) and [Device/dr-ai-device](Device-dr-ai-device.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.trust.aitransparency|current/StructureDefinition/StructureDefinition-trust-ai-device.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-trust-ai-device.csv), [Excel](StructureDefinition-trust-ai-device.xlsx), [Schematron](StructureDefinition-trust-ai-device.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "trust-ai-device",
  "url" : "http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-device",
  "version" : "0.1.0",
  "name" : "Trust_AIDevice",
  "title" : "Trust AI System Device",
  "status" : "draft",
  "date" : "2026-10-02T06:10:43+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "A Device profile representing an AI system or software component, including system identification, versioning, intended purpose, and selected regulatory documentation metadata.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
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
    "identity" : "interface",
    "uri" : "http://hl7.org/fhir/interface",
    "name" : "Interface Pattern"
  },
  {
    "identity" : "udi",
    "uri" : "http://fda.gov/UDI",
    "name" : "UDI Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Device",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Device",
      "path" : "Device"
    },
    {
      "id" : "Device.extension",
      "path" : "Device.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 3
    },
    {
      "id" : "Device.extension:modelCard",
      "path" : "Device.extension",
      "sliceName" : "modelCard",
      "short" : "Reference to the AI model card",
      "requirements" : "AI Act Art. 13 | Operational Context & Maintenance",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/trust-ai-transparency/StructureDefinition/ext-model-card"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Device.extension:dataTransfer",
      "path" : "Device.extension",
      "sliceName" : "dataTransfer",
      "short" : "Third-Country Transfer Data",
      "requirements" : "GDPR Art. 44 | Third-Country Transfer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/trust-ai-transparency/StructureDefinition/third-country-data-transfer"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Device.extension:conformityDeclaration",
      "path" : "Device.extension",
      "sliceName" : "conformityDeclaration",
      "short" : "Reference to the EU Conformity Declaration",
      "requirements" : "AI Act Art. 47 | EU Conformity Declaration",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-conformity-reference"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Device.identifier",
      "path" : "Device.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Device.identifier:euDatabaseId",
      "path" : "Device.identifier",
      "sliceName" : "euDatabaseId",
      "short" : "EU database registration number",
      "definition" : "The unique registration number assigned to the high-risk AI system in the official EU database (AI Act Art. 49).",
      "requirements" : "AI Act Art. 49 | EU Database Registration",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Device.identifier:euDatabaseId.type",
      "path" : "Device.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-identifier-type-cs",
          "code" : "trust-ai-registration-number"
        }]
      }
    },
    {
      "id" : "Device.identifier:euDatabaseId.system",
      "path" : "Device.identifier.system",
      "min" : 1
    },
    {
      "id" : "Device.identifier:euDatabaseId.value",
      "path" : "Device.identifier.value",
      "min" : 1
    },
    {
      "id" : "Device.manufacturer",
      "path" : "Device.manufacturer",
      "short" : "Name of the AI manufacturer",
      "requirements" : "AI Act / GDPR | Manufacturer / Provider",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.name",
      "path" : "Device.name",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.name.value",
      "path" : "Device.name.value",
      "short" : "System Name"
    },
    {
      "id" : "Device.version",
      "path" : "Device.version",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.version.value",
      "path" : "Device.version.value",
      "short" : "System Version"
    },
    {
      "id" : "Device.conformsTo",
      "path" : "Device.conformsTo",
      "short" : "Applicable standards and certifications",
      "mustSupport" : true
    },
    {
      "id" : "Device.conformsTo.specification",
      "path" : "Device.conformsTo.specification",
      "short" : "Standard, specification, or certification",
      "requirements" : "AI Act Art. 17 | QMS Certification & AI Act Art. 13 | Operational Context & Maintenance",
      "mustSupport" : true
    },
    {
      "id" : "Device.property",
      "path" : "Device.property",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type"
        }],
        "rules" : "open"
      },
      "min" : 4
    },
    {
      "id" : "Device.property:ceMark",
      "path" : "Device.property",
      "sliceName" : "ceMark",
      "short" : "CE marking status",
      "requirements" : "AI Act Art. 48 | CE Marking",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Device.property:ceMark.type",
      "path" : "Device.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-system-property-cs",
          "code" : "ce-mark"
        }]
      }
    },
    {
      "id" : "Device.property:notifiedBody",
      "path" : "Device.property",
      "sliceName" : "notifiedBody",
      "short" : "Notified body identification number",
      "requirements" : "AI Act Art. 13 | Operational Context & Maintenance",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Device.property:notifiedBody.type",
      "path" : "Device.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-system-property-cs",
          "code" : "notified-body-id"
        }]
      }
    },
    {
      "id" : "Device.property:expectedLifetime",
      "path" : "Device.property",
      "sliceName" : "expectedLifetime",
      "short" : "Expected system lifetime",
      "requirements" : "AI Act Art. 13 | Operational Context & Maintenance",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Device.property:expectedLifetime.type",
      "path" : "Device.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-system-property-cs",
          "code" : "expected-lifetime"
        }]
      }
    },
    {
      "id" : "Device.property:intendedPurpose",
      "path" : "Device.property",
      "sliceName" : "intendedPurpose",
      "short" : "Intended purpose",
      "requirements" : "AI Act Art. 13 | Operational Context & Maintenance",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Device.property:intendedPurpose.type",
      "path" : "Device.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-system-property-cs",
          "code" : "intended-purpose"
        }]
      }
    },
    {
      "id" : "Device.property:targetPopulation",
      "path" : "Device.property",
      "sliceName" : "targetPopulation",
      "short" : "Target population",
      "requirements" : "AI Act Art. 13 | Operational Context & Maintenance",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Device.property:targetPopulation.type",
      "path" : "Device.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-system-property-cs",
          "code" : "target-population"
        }]
      }
    },
    {
      "id" : "Device.owner",
      "path" : "Device.owner",
      "short" : "Organization responsible for the AI system",
      "requirements" : "AI Act / GDPR | Manufacturer / Provider",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-organization"]
      }],
      "mustSupport" : true
    }]
  }
}

```
