# AI Performance Metrics - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AI Performance Metrics**

## Extension: AI Performance Metrics 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-performance-metrics | *Version*:0.1.0 |
| Draft as of 2026-06-18 | *Computable Name*:AIPerformanceMetrics |

Captures quantitative metrics and bias disclosures.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EU AI Act Model Card](StructureDefinition-eu-ai-model-card.md)
* Examples for this Extension: [DocumentReference/modelcard-aurascan](DocumentReference-modelcard-aurascan.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.eu.aitransparency|current/StructureDefinition/StructureDefinition-ai-performance-metrics.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ai-performance-metrics.csv), [Excel](StructureDefinition-ai-performance-metrics.xlsx), [Schematron](StructureDefinition-ai-performance-metrics.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ai-performance-metrics",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-performance-metrics",
  "version" : "0.1.0",
  "name" : "AIPerformanceMetrics",
  "title" : "AI Performance Metrics",
  "status" : "draft",
  "date" : "2026-06-18T08:40:47+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Captures quantitative metrics and bias disclosures.",
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
    "expression" : "DocumentReference"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "AI Performance Metrics",
      "definition" : "Captures quantitative metrics and bias disclosures."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:metric",
      "path" : "Extension.extension",
      "sliceName" : "metric",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:metric.extension",
      "path" : "Extension.extension.extension",
      "min" : 2
    },
    {
      "id" : "Extension.extension:metric.extension:type",
      "path" : "Extension.extension.extension",
      "sliceName" : "type",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:metric.extension:type.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:metric.extension:type.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "type"
    },
    {
      "id" : "Extension.extension:metric.extension:type.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://example.org/fhir/eu-ai-transparency/ValueSet/eu-ai-performance-metric-vs"
      }
    },
    {
      "id" : "Extension.extension:metric.extension:value",
      "path" : "Extension.extension.extension",
      "sliceName" : "value",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:metric.extension:value.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:metric.extension:value.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "value"
    },
    {
      "id" : "Extension.extension:metric.extension:value.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Extension.extension:metric.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "metric"
    },
    {
      "id" : "Extension.extension:metric.value[x]",
      "path" : "Extension.extension.value[x]",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:biasDisclosure",
      "path" : "Extension.extension",
      "sliceName" : "biasDisclosure",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:biasDisclosure.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:biasDisclosure.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "biasDisclosure"
    },
    {
      "id" : "Extension.extension:biasDisclosure.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-performance-metrics"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
