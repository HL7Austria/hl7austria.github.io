# Model Card: RiskAssist AI v1.0.0 - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Model Card: RiskAssist AI v1.0.0**

## Example DocumentReference: Model Card: RiskAssist AI v1.0.0

Profile: [EU AI Act Model Card](StructureDefinition-eu-ai-model-card.md)

**AI Clinical Validation Status**: Not Clinically Validated

> **AI Performance Metrics****type**: Accuracy**value**: 0.86 1 (Details: UCUM code1 = '1')
> **url**metric

> **url**biasDisclosure
**value**: No bias evaluation is claimed for this synthetic PoC model.

> **AI Training Data Metadata**
* provenance: No real training data are used. The component is used only to simulate AI-like outputs for the PoC.
* ehdsCategory: Electronic Health Records
* dataQuality: Complete

> **AI Retention Information**
* retention: No display for Duration (value: 10; unit: years; system: http://unitsofmeasure.org; code: a)

**status**: Current

**type**: AI Model Card

**subject**: [Device: extension = ,->DocumentReference: extension = Not Clinically Validated,,,; status = current; type = AI Model Card; date = 2026-03-01 10:00:00+0000; description = Synthetic model card for a deterministic AI-output simulation component used in the PoC.,->DocumentReference: status = current; identifier = EU AI Registration Number; status = active; manufacturer = ExampleMed AI GmbH; note = Synthetic maintenance information for PoC purposes.,AI-assisted early warning risk assessment based on synthetic NEWS2-inspired vital parameters.](Device-device-riskassist-ai.md)

**date**: 2026-03-01 10:00:00+0000

**description**: 

Synthetic model card for a deterministic AI-output simulation component used in the PoC.

> **content**

### Attachments

| | | | |
| :--- | :--- | :--- | :--- |
| - | **ContentType** | **Url** | **Title** |
| * | text/html | [https://fh-ooe.at/fhir/eu-ai-transparency/riskassist/model-card](https://fh-ooe.at/fhir/eu-ai-transparency/riskassist/model-card) | RiskAssist AI Model Card |


> **content**

### Attachments

| | | | |
| :--- | :--- | :--- | :--- |
| - | **ContentType** | **Url** | **Title** |
| * | text/html | [https://fh-ooe.at/fhir/eu-ai-transparency/riskassist/technical-documentation](https://fh-ooe.at/fhir/eu-ai-transparency/riskassist/technical-documentation) | Technical Documentation |




## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "modelcard-riskassist-ai",
  "meta" : {
    "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-model-card"]
  },
  "extension" : [{
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-clinical-validation-status",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-clinical-validation-status-cs",
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
    },
    {
      "url" : "biasDisclosure",
      "valueString" : "No bias evaluation is claimed for this synthetic PoC model."
    }],
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-performance-metrics"
  },
  {
    "extension" : [{
      "url" : "provenance",
      "valueString" : "No real training data are used. The component is used only to simulate AI-like outputs for the PoC."
    },
    {
      "url" : "ehdsCategory",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/ehds-data-category-cs",
          "code" : "ehr"
        }]
      }
    },
    {
      "url" : "dataQuality",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-data-quality-cs",
          "code" : "complete",
          "display" : "Complete"
        }]
      }
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
    "reference" : "Device/device-riskassist-ai"
  },
  "date" : "2026-03-01T10:00:00Z",
  "description" : "Synthetic model card for a deterministic AI-output simulation component used in the PoC.",
  "content" : [{
    "attachment" : {
      "contentType" : "text/html",
      "url" : "https://fh-ooe.at/fhir/eu-ai-transparency/riskassist/model-card",
      "title" : "RiskAssist AI Model Card"
    }
  },
  {
    "attachment" : {
      "contentType" : "text/html",
      "url" : "https://fh-ooe.at/fhir/eu-ai-transparency/riskassist/technical-documentation",
      "title" : "Technical Documentation"
    }
  }]
}

```
