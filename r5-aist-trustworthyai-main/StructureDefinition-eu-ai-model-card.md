# EU AI Act Model Card - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EU AI Act Model Card**

## Resource Profile: EU AI Act Model Card 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-model-card | *Version*:0.1.0 |
| Draft as of 2026-06-18 | *Computable Name*:EU_AIModelCard |

 
The official AI Model Card. It mandates the inclusion of intended purpose, risk assessments, and performance metrics as per the EU AI Act and GDPR. 

**Usages:**

* Examples for this Profile: [DocumentReference/modelcard-aurascan](DocumentReference-modelcard-aurascan.md)

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
  "date" : "2026-06-18T08:40:47+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "The official AI Model Card. It mandates the inclusion of intended purpose, risk assessments, and performance metrics as per the EU AI Act and GDPR.",
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
      "min" : 3
    },
    {
      "id" : "DocumentReference.extension:performance",
      "path" : "DocumentReference.extension",
      "sliceName" : "performance",
      "short" : "Metrics & Bias",
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
      "short" : "EHDS Permit & Data Quality",
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
      "short" : "Transfer & Retention",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-privacy-metadata"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.status",
      "path" : "DocumentReference.status",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.type",
      "path" : "DocumentReference.type",
      "short" : "AI Model Card",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
          "code" : "model-card",
          "display" : "AI Model Card"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.description",
      "path" : "DocumentReference.description",
      "short" : "Mandatory high-level clinical summary and limitations of the AI model.",
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
      "short" : "Detailed technical documentation and risk assessments (PDF, HTML, etc.)",
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
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.url",
      "path" : "DocumentReference.content.attachment.url",
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
