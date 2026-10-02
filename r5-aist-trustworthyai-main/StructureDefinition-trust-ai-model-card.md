# Trust AI Model Card - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Trust AI Model Card**

## Resource Profile: Trust AI Model Card 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-model-card | *Version*:0.1.0 |
| Draft as of 2026-10-02 | *Computable Name*:Trust_AIModelCard |

 
A DocumentReference profile representing technical documentation about an AI system, such as intended use, limitations, risk-related information, performance-related information, and model documentation. 

### Regulatory Requirements

This profile is part of the **Static System Context** layer. It implements the following documentation requirements from the [Requirements Traceability](requirements.md) analysis.

| | | | |
| :--- | :--- | :--- | :--- |
| [SYS-04](requirements.md#req-sys-04) | AI Act Annex IV 1 | Hardware/Software Interfaces | Static |
| [SYS-05](requirements.md#req-sys-05) | AI Act Art. 11 / Annex IV | Full Technical Documentation Ref. | Static |
| [SYS-06](requirements.md#req-sys-06) | AI Act Art. 13(3) | Explainability / Interpretation Aids | Static |
| [SYS-07](requirements.md#req-sys-07) | AI Act Art. 13(3) | Expected Lifetime & Maintenance | Static |
| [USE-02](requirements.md#req-use-02) | AI Act Art. 13 (3) | Limitations & Contraindications | Static |
| [USE-03](requirements.md#req-use-03) | GDPR Art. 13(1) / AI Act Art. 13 (3) | Scope and Clinical Consequences | Static |
| [QUAL-01](requirements.md#req-qual-01) | AI Act Art. 13(3) | Performance Metrics | Static |
| [QUAL-02a](requirements.md#req-qual-02a) | AI Act Art. 10 | Training Data Info | Static |
| [QUAL-02b](requirements.md#req-qual-02b) | EHDS Art. 512 | Secondary Use Category & Permit | Static |
| [QUAL-03](requirements.md#req-qual-03) | EHDS Art. 78 | Data Quality Label | Static |
| [QUAL-04](requirements.md#req-qual-04) | AI Act Art. 13(3)(b)(v) | Target Group Performance | Static |
| [RISK-01](requirements.md#req-risk-01) | AI Act Art. 9(2) / Art. 13(3)(b) | Health & Fundamental Rights Risks | Static |
| [HL-04](requirements.md#req-hl-04) | AI Act Art. 14(3) | Oversight Instructions | Static |
| [LAW-06](requirements.md#req-law-06) | GDPR Art. 13(2) | Data Retention Period | Static |

#### Element Mapping

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| [SYS-04](requirements.md#sys-04) | Hardware/Software Interfaces | 1..* | [`DocumentReference.content.attachment`](StructureDefinition-trust-ai-model-card-definitions.md#DocumentReference.content.attachment) | ✅ Covered | Documented in the linked technical documentation. |
| [SYS-05](requirements.md#sys-05) | Full Technical Doc. Ref. | 1..1 | [`DocumentReference.content.attachment`](StructureDefinition-trust-ai-model-card-definitions.md#DocumentReference.content.attachment) | ✅ Covered | `attachment.url`points to the full technical documentation. |
| [SYS-06](requirements.md#sys-06) | Explainability/Interpretation Aids | 0..* | [`DocumentReference.content.attachment`](StructureDefinition-trust-ai-model-card-definitions.md#DocumentReference.content.attachment) | ✅ Covered |   |
| [SYS-07.2](requirements.md#sys-072) | Maintenance Requirements | 1..1 | [`DocumentReference.content.attachment`](StructureDefinition-trust-ai-model-card-definitions.md#DocumentReference.content.attachment) | ✅ Covered | Maintenance and update requirements are part of the technical documentation. Also:[Trust_AIDevice](StructureDefinition-trust-ai-device.md). |
| [USE-02.1](requirements.md#use-021) | Medical Contraindications | 0..* | [`DocumentReference.description`](StructureDefinition-trust-ai-model-card-definitions.md#DocumentReference.description),[`DocumentReference.content.attachment`](StructureDefinition-trust-ai-model-card-definitions.md#DocumentReference.content.attachment) | ⚠️ Partial | Narrative only; no coded, repeatable contraindication element. |
| [USE-02.2](requirements.md#use-022) | Technical Limitations | 0..* | [`DocumentReference.description`](StructureDefinition-trust-ai-model-card-definitions.md#DocumentReference.description),[`DocumentReference.content.attachment`](StructureDefinition-trust-ai-model-card-definitions.md#DocumentReference.content.attachment) | ⚠️ Partial | Narrative only; no coded, repeatable limitation element. |
| [USE-03](requirements.md#use-03) | Scope and Clinical Consequences | 1..1 | [`DocumentReference.description`](StructureDefinition-trust-ai-model-card-definitions.md#DocumentReference.description) | ✅ Covered |   |
| [QUAL-01.1](requirements.md#qual-011) | Metric Type Code | 1..* | [`DocumentReference.extension:performance`](StructureDefinition-trust-ai-model-card-definitions.md#DocumentReference.extension:performance) | ✅ Covered | Sub-extension`metric.type`(TrustAIPerformanceMetricVS). |
| [QUAL-01.2](requirements.md#qual-012) | Metric Value | 1..* | [`DocumentReference.extension:performance`](StructureDefinition-trust-ai-model-card-definitions.md#DocumentReference.extension:performance) | ✅ Covered | Sub-extension`metric.value`(Quantity). |
| [QUAL-02a](requirements.md#qual-02a) | Data Provenance Description | 1..1 | [`DocumentReference.extension:training`](StructureDefinition-trust-ai-model-card-definitions.md#DocumentReference.extension:training) | ✅ Covered | Sub-extension`provenance`. |
| [QUAL-02b](requirements.md#qual-02b) | EHDS Data Category | 0..* | [`DocumentReference.extension:training`](StructureDefinition-trust-ai-model-card-definitions.md#DocumentReference.extension:training) | ✅ Covered | Sub-extension`Category`(DataCategoryVS). |
| [QUAL-02c](requirements.md#qual-02c) | Training Data Permit Ref. | 0..* | [`DocumentReference.extension:training`](StructureDefinition-trust-ai-model-card-definitions.md#DocumentReference.extension:training) | ✅ Covered | Sub-extension`Permit`(Identifier). |
| [QUAL-03](requirements.md#qual-03) | Data Quality Label | 1..1 | [`DocumentReference.extension:training`](StructureDefinition-trust-ai-model-card-definitions.md#DocumentReference.extension:training) | ⚠️ Partial | Sub-extension`dataQuality`is 0..*, while the matrix requires 1..1. |
| [QUAL-04](requirements.md#qual-04) | Target Group Performance | 0..* | [`DocumentReference.extension:performance`](StructureDefinition-trust-ai-model-card-definitions.md#DocumentReference.extension:performance) | ✅ Covered | Sub-extension`biasDisclosure`. |
| [RISK-02.1](requirements.md#risk-021) | Health/Safety Risks | 0..* | [`DocumentReference.description`](StructureDefinition-trust-ai-model-card-definitions.md#DocumentReference.description) | ⚠️ Partial | Narrative summary only. |
| [RISK-02.2](requirements.md#risk-022) | Fundamental Rights Risks | 0..* | [`DocumentReference.description`](StructureDefinition-trust-ai-model-card-definitions.md#DocumentReference.description) | ⚠️ Partial | Narrative summary only. |
| [RISK-02.3](requirements.md#risk-023) | Residual Risk Mitigation | 1..1 | [`DocumentReference.content.attachment`](StructureDefinition-trust-ai-model-card-definitions.md#DocumentReference.content.attachment) | ✅ Covered | Instructions for use / risk management documentation. |
| [HL-04](requirements.md#hl-04) | Oversight Instructions | 1..1 | [`DocumentReference.content.attachment`](StructureDefinition-trust-ai-model-card-definitions.md#DocumentReference.content.attachment) | ✅ Covered |   |
| [LAW-06](requirements.md#law-06) | Data Retention Period | 1..1 | [`DocumentReference.extension:privacy`](StructureDefinition-trust-ai-model-card-definitions.md#DocumentReference.extension:privacy) | ✅ Covered | Sub-extension`retention`(Duration). |

**Usages:**

* Refer to this Profile: [Model Card Reference](StructureDefinition-ext-model-card.md)
* Examples for this Profile: [DocumentReference/dr-model-card](DocumentReference-dr-model-card.md) and [DocumentReference/modelcard-riskassist-ai](DocumentReference-modelcard-riskassist-ai.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.trust.aitransparency|current/StructureDefinition/StructureDefinition-trust-ai-model-card.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-trust-ai-model-card.csv), [Excel](StructureDefinition-trust-ai-model-card.xlsx), [Schematron](StructureDefinition-trust-ai-model-card.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "trust-ai-model-card",
  "url" : "http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-model-card",
  "version" : "0.1.0",
  "name" : "Trust_AIModelCard",
  "title" : "Trust AI Model Card",
  "status" : "draft",
  "date" : "2026-10-02T06:10:43+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "A DocumentReference profile representing technical documentation about an AI system, such as intended use, limitations, risk-related information, performance-related information, and model documentation.",
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
    "identity" : "fhircomposition",
    "uri" : "http://hl7.org/fhir/composition",
    "name" : "FHIR Composition"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "xds",
    "uri" : "http://ihe.net/xds",
    "name" : "XDS metadata equivalent"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DocumentReference",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DocumentReference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DocumentReference",
      "path" : "DocumentReference"
    },
    {
      "id" : "DocumentReference.extension",
      "path" : "DocumentReference.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 4
    },
    {
      "id" : "DocumentReference.extension:performance",
      "path" : "DocumentReference.extension",
      "sliceName" : "performance",
      "short" : "Performance metrics and bias information",
      "requirements" : "AI Act Art. 13 | Performance Metrics & AI Act Art. 13 | Target Group Performance",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/trust-ai-transparency/StructureDefinition/ai-performance-metrics"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.extension:training",
      "path" : "DocumentReference.extension",
      "sliceName" : "training",
      "short" : "Training data provenance and EHDS metadata",
      "requirements" : "AI Act Art. 10 | Training Data Info",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/trust-ai-transparency/StructureDefinition/ai-training-data"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.extension:privacy",
      "path" : "DocumentReference.extension",
      "sliceName" : "privacy",
      "short" : "Privacy and retention metadata",
      "requirements" : "GDPR Art. 13 | Data Retention Period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/trust-ai-transparency/StructureDefinition/ai-retention-information"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.extension:clinicalValidationStatus",
      "path" : "DocumentReference.extension",
      "sliceName" : "clinicalValidationStatus",
      "short" : "Clinical validation status",
      "requirements" : "TODO",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/trust-ai-transparency/StructureDefinition/ai-clinical-validation-status"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.status",
      "path" : "DocumentReference.status",
      "short" : "Publication status of the model card"
    },
    {
      "id" : "DocumentReference.type",
      "path" : "DocumentReference.type",
      "short" : "AI Model Card document type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-artifact-type-cs",
          "code" : "model-card",
          "display" : "AI Model Card"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.date",
      "path" : "DocumentReference.date",
      "short" : "Date of model card publication",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.description",
      "path" : "DocumentReference.description",
      "short" : "Summary of the AI model card",
      "definition" : "High-level summary of the intended purpose, principal limitations, risks, performance, and operational considerations documented by the model card.",
      "requirements" : "AI Act Art. 13 | Limitations & Contraindications & GDPR Art. 13 | Clinical Consequences & AI Act Art. 9| Health & Rights Risks",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content",
      "path" : "DocumentReference.content",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment",
      "path" : "DocumentReference.content.attachment",
      "short" : "Technical documentation and instructions for use",
      "definition" : "Technical documentation or instructions for use containing intended purpose, limitations, risk information, required maintenance and support measures, maintenance frequency, and required software updates.",
      "requirements" : "AI Act Annex IV | Hardware/Software Interfaces & AI Act Art. 13 | Explainability Aids & AI Act Art. 14 | Oversight Instructions & AI Act Art. 11 | Technical Documentation",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.contentType",
      "path" : "DocumentReference.content.attachment.contentType",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.data",
      "path" : "DocumentReference.content.attachment.data",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.content.attachment.url",
      "path" : "DocumentReference.content.attachment.url",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.title",
      "path" : "DocumentReference.content.attachment.title",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
