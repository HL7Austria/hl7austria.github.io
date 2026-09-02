# 029e523f-6c49-4021-b909-674ebfc08c49 - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **029e523f-6c49-4021-b909-674ebfc08c49**

## DocumentReference: 029e523f-6c49-4021-b909-674ebfc08c49

> **AI Performance Metrics****type**: Accuracy**value**: 0.86 1 (Details: UCUM code1 = '1')
> **url**metric

> **AI Training Data Metadata**
* provenance: No additional training data was used.

> **AI Retention Information**
* retention: No display for Duration (value: 10; unit: years; system: http://unitsofmeasure.org; code: a)

**AI Clinical Validation Status**: Not Clinically Validated

**status**: Current

**type**: AI Model Card

**subject**: [gpt-oss:20b](Device-fd450f5e-749e-48b8-8ea8-23b8ed2b9592.md)

**date**: 2026-09-02 08:13:35+0000

**description**: 

Syntetic model card for the model used in the MIRA project.

> **content**

### Attachments

| | | | |
| :--- | :--- | :--- | :--- |
| - | **ContentType** | **Url** | **Title** |
| * | application/json | [https://example.org/model-card/mira-example](https://example.org/model-card/mira-example) | gpt-oss:20b Model Card |




## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "029e523f-6c49-4021-b909-674ebfc08c49",
  "extension" : [{
    "extension" : [{
      "extension" : [{
        "url" : "type",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-performance-metric-cs",
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
    }],
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-performance-metrics"
  },
  {
    "extension" : [{
      "url" : "provenance",
      "valueString" : "No additional training data was used."
    }],
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-training-data"
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
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-retention-information"
  },
  {
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-clinical-validation-status",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-clinical-validation-status-cs",
        "code" : "not-clinically-validated",
        "display" : "Not Clinically Validated"
      }]
    }
  }],
  "status" : "current",
  "type" : {
    "coding" : [{
      "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-artifact-type-cs",
      "code" : "model-card",
      "display" : "AI Model Card"
    }]
  },
  "subject" : {
    "reference" : "Device/fd450f5e-749e-48b8-8ea8-23b8ed2b9592",
    "display" : "gpt-oss:20b"
  },
  "date" : "2026-09-02T08:13:35Z",
  "description" : "Syntetic model card for the model used in the MIRA project.",
  "content" : [{
    "attachment" : {
      "contentType" : "application/json",
      "url" : "https://example.org/model-card/mira-example",
      "title" : "gpt-oss:20b Model Card"
    }
  }]
}

```
