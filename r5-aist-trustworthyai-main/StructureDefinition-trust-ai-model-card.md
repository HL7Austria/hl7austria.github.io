# Trust AI Act Model Card - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Trust AI Act Model Card**

## Resource Profile: Trust AI Act Model Card 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-model-card | *Version*:0.1.0 |
| Draft as of 2026-09-09 | *Computable Name*:Trust_AIModelCard |

 
A DocumentReference profile representing technical documentation about an AI system, such as intended use, limitations, risk-related information, performance-related information, and model documentation. 

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
  "title" : "Trust AI Act Model Card",
  "status" : "draft",
  "date" : "2026-09-09T11:13:25+00:00",
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
