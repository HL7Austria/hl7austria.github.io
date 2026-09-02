# EU AI Act Model Card - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EU AI Act Model Card**

## Resource Profile: EU AI Act Model Card 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-model-card | *Version*:0.1.0 |
| Draft as of 2026-09-02 | *Computable Name*:EU_AIModelCard |

 
A DocumentReference profile representing technical documentation about an AI system, such as intended use, limitations, risk-related information, performance-related information, and model documentation. 

**Usages:**

* Refer to this Profile: [Model Card Reference](StructureDefinition-ext-model-card.md)
* Examples for this Profile: [DocumentReference/modelcard-riskassist-ai](DocumentReference-modelcard-riskassist-ai.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.eu.aitransparency|current/StructureDefinition/StructureDefinition-eu-ai-model-card.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-eu-ai-model-card.csv), [Excel](StructureDefinition-eu-ai-model-card.xlsx), [Schematron](StructureDefinition-eu-ai-model-card.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "eu-ai-model-card",
  "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-model-card",
  "version" : "0.1.0",
  "name" : "EU_AIModelCard",
  "title" : "EU AI Act Model Card",
  "status" : "draft",
  "date" : "2026-09-02T10:48:14+00:00",
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
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-performance-metrics"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.extension:training",
      "path" : "DocumentReference.extension",
      "sliceName" : "training",
      "short" : "Training data provenance and EHDS metadata",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-training-data"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.extension:privacy",
      "path" : "DocumentReference.extension",
      "sliceName" : "privacy",
      "short" : "Privacy and retention metadata",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-retention-information"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.extension:clinicalValidationStatus",
      "path" : "DocumentReference.extension",
      "sliceName" : "clinicalValidationStatus",
      "short" : "Clinical validation status",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-clinical-validation-status"]
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
          "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-artifact-type-cs",
          "code" : "model-card",
          "display" : "AI Model Card"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.subject",
      "path" : "DocumentReference.subject",
      "short" : "AI system described by this model card",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-device"]
      }],
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
