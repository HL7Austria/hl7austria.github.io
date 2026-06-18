# Model Card: AuraScan Pulmo-Net v3.1.0 - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Model Card: AuraScan Pulmo-Net v3.1.0**

## Example DocumentReference: Model Card: AuraScan Pulmo-Net v3.1.0

Profile: [EU AI Act Model Card](StructureDefinition-eu-ai-model-card.md)

> **AI Performance Metrics****type**: Accuracy**value**: 98 % (Details: UCUM code% = '%')
> **url**metric
**type**: Sensitivity**value**: 96 % (Details: UCUM code% = '%')
> **url**metric

> **url**biasDisclosure
**value**: Validated evenly across standard demographics.

> **AI Training Data Metadata**
* provenance: Data from Fictional Central Health Grid
* ehdsCategory: Electronic Health Records (EHRs)
* ehdsPermit: EHDS-TEST-2042-991
* dataQuality: Representative

> **AI Privacy Metadata**
* retention: No display for Duration (value: 10; system: http://unitsofmeasure.org; code: a)
* transferFlag: false
* destination: AT

**status**: Current

**type**: AI Model Card

**subject**: [Device: extension = ->DocumentReference: extension = ,,; status = current; type = AI Model Card; description = Intended for adult thorax CTs. Residual Risk: Potential for false-positive vascular artifacts.,; identifier = EU AI Database Identifier: EU-AI-2042-XJ992; manufacturer = Aetheria HealthTech Systems Corp.; contact = support@aetheria-health.test(Work),ph: +49 000 98765432(Work); note = Maintenance: Hardware calibration required every 12 months.,Security: Software patches are deployed monthly via remote update.](Device-device-aurascan-ai.md)

**description**: 

Intended for adult thorax CTs. Residual Risk: Potential for false-positive vascular artifacts.

> **content**

### Attachments

| | | | |
| :--- | :--- | :--- | :--- |
| - | **ContentType** | **Url** | **Title** |
| * | application/pdf | [https://aetheria-health.test/docs/v3/technical-manual.pdf](https://aetheria-health.test/docs/v3/technical-manual.pdf) | AuraScan Technical Documentation |


> **content**

### Attachments

| | | | |
| :--- | :--- | :--- | :--- |
| - | **ContentType** | **Url** | **Title** |
| * | text/markdown | [https://aetheria-health.test/docs/v3/oversight_guide.md](https://aetheria-health.test/docs/v3/oversight_guide.md) | Human Oversight Instructions (HL-04) |




## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "modelcard-aurascan",
  "meta" : {
    "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-model-card"]
  },
  "extension" : [{
    "extension" : [{
      "extension" : [{
        "url" : "type",
        "valueCodeableConcept" : {
          "text" : "Accuracy"
        }
      },
      {
        "url" : "value",
        "valueQuantity" : {
          "value" : 98,
          "system" : "http://unitsofmeasure.org",
          "code" : "%"
        }
      }],
      "url" : "metric"
    },
    {
      "extension" : [{
        "url" : "type",
        "valueCodeableConcept" : {
          "text" : "Sensitivity"
        }
      },
      {
        "url" : "value",
        "valueQuantity" : {
          "value" : 96,
          "system" : "http://unitsofmeasure.org",
          "code" : "%"
        }
      }],
      "url" : "metric"
    },
    {
      "url" : "biasDisclosure",
      "valueString" : "Validated evenly across standard demographics."
    }],
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-performance-metrics"
  },
  {
    "extension" : [{
      "url" : "provenance",
      "valueString" : "Data from Fictional Central Health Grid"
    },
    {
      "url" : "ehdsCategory",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
          "code" : "ehr",
          "display" : "Electronic Health Records (EHRs)"
        }]
      }
    },
    {
      "url" : "ehdsPermit",
      "valueIdentifier" : {
        "value" : "EHDS-TEST-2042-991"
      }
    },
    {
      "url" : "dataQuality",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
          "code" : "representative",
          "display" : "Representative"
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
        "system" : "http://unitsofmeasure.org",
        "code" : "a"
      }
    },
    {
      "url" : "transferFlag",
      "valueBoolean" : false
    },
    {
      "url" : "destination",
      "valueCode" : "AT"
    }],
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-privacy-metadata"
  }],
  "status" : "current",
  "type" : {
    "coding" : [{
      "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
      "code" : "model-card",
      "display" : "AI Model Card"
    }]
  },
  "subject" : {
    "reference" : "Device/device-aurascan-ai"
  },
  "description" : "Intended for adult thorax CTs. Residual Risk: Potential for false-positive vascular artifacts.",
  "content" : [{
    "attachment" : {
      "contentType" : "application/pdf",
      "url" : "https://aetheria-health.test/docs/v3/technical-manual.pdf",
      "title" : "AuraScan Technical Documentation"
    }
  },
  {
    "attachment" : {
      "contentType" : "text/markdown",
      "url" : "https://aetheria-health.test/docs/v3/oversight_guide.md",
      "title" : "Human Oversight Instructions (HL-04)"
    }
  }]
}

```
