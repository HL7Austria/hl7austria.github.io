# Model Card: DiagnosticAssist AI - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Model Card: DiagnosticAssist AI**

## Example DocumentReference: Model Card: DiagnosticAssist AI

Profile: [Trust AI Act Model Card](StructureDefinition-trust-ai-model-card.md)

**AI Clinical Validation Status**: Not Clinically Validated

> **AI Performance Metrics****type**: Accuracy**value**: 0.86 1 (Details: UCUM code1 = '1')
> **url**metric

> **url**biasDisclosure
**value**: No subgroup performance claim is made for this synthetic example.

> **AI Training Data Metadata**
* provenance: Synthetic training-data description for demonstration purposes.
* Category: Electronic Health Records
* dataQuality: Complete

> **AI Retention Information**
* retention: No display for Duration (value: 10; unit: years; system: http://unitsofmeasure.org; code: a)

**status**: Current

**type**: AI Model Card

**date**: 2026-03-01 10:00:00+0000

**description**: 

Synthetic model card for an AI system generating diagnostic reports from structured clinical input.

> **content**

### Attachments

| | | | |
| :--- | :--- | :--- | :--- |
| - | **ContentType** | **Url** | **Title** |
| * | text/html | [https://example.org/model-card/diagnostic-assist](https://example.org/model-card/diagnostic-assist) | DiagnosticAssist AI Model Card |




## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "dr-model-card",
  "meta" : {
    "profile" : ["http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-model-card"]
  },
  "extension" : [{
    "url" : "http://example.org/fhir/trust-ai-transparency/StructureDefinition/ai-clinical-validation-status",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-clinical-validation-status-cs",
        "code" : "not-clinically-validated",
        "display" : "Not Clinically Validated"
      }]
    }
  },
  {
    "extension" : [{
      "extension" : [{
        "url" : "type",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-performance-metric-cs",
            "code" : "accuracy",
            "display" : "Accuracy"
          }]
        }
      },
      {
        "url" : "value",
        "valueQuantity" : {
          "value" : 0.86,
          "unit" : "1",
          "system" : "http://unitsofmeasure.org",
          "code" : "1"
        }
      }],
      "url" : "metric"
    },
    {
      "url" : "biasDisclosure",
      "valueString" : "No subgroup performance claim is made for this synthetic example."
    }],
    "url" : "http://example.org/fhir/trust-ai-transparency/StructureDefinition/ai-performance-metrics"
  },
  {
    "extension" : [{
      "url" : "provenance",
      "valueString" : "Synthetic training-data description for demonstration purposes."
    },
    {
      "url" : "Category",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/data-category-cs",
          "code" : "ehr"
        }]
      }
    },
    {
      "url" : "dataQuality",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-data-quality-cs",
          "code" : "complete",
          "display" : "Complete"
        }]
      }
    }],
    "url" : "http://example.org/fhir/trust-ai-transparency/StructureDefinition/ai-training-data"
  },
  {
    "extension" : [{
      "url" : "retention",
      "valueDuration" : {
        "value" : 10,
        "unit" : "years",
        "system" : "http://unitsofmeasure.org",
        "code" : "a"
      }
    }],
    "url" : "http://example.org/fhir/trust-ai-transparency/StructureDefinition/ai-retention-information"
  }],
  "status" : "current",
  "type" : {
    "coding" : [{
      "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-artifact-type-cs",
      "code" : "model-card",
      "display" : "AI Model Card"
    }]
  },
  "date" : "2026-03-01T10:00:00Z",
  "description" : "Synthetic model card for an AI system generating diagnostic reports from structured clinical input.",
  "content" : [{
    "attachment" : {
      "contentType" : "text/html",
      "url" : "https://example.org/model-card/diagnostic-assist",
      "title" : "DiagnosticAssist AI Model Card"
    }
  }]
}

```
