# AI Training Data Metadata - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AI Training Data Metadata**

## Extension: AI Training Data Metadata 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-training-data | *Version*:0.1.0 |
| Draft as of 2026-06-18 | *Computable Name*:AITrainingData |

Details regarding provenance, EHDS categories, and data quality.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EU AI Act Model Card](StructureDefinition-eu-ai-model-card.md)
* Examples for this Extension: [DocumentReference/modelcard-riskassist-ai](DocumentReference-modelcard-riskassist-ai.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.eu.aitransparency|current/StructureDefinition/StructureDefinition-ai-training-data.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ai-training-data.csv), [Excel](StructureDefinition-ai-training-data.xlsx), [Schematron](StructureDefinition-ai-training-data.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ai-training-data",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-training-data",
  "version" : "0.1.0",
  "name" : "AITrainingData",
  "title" : "AI Training Data Metadata",
  "status" : "draft",
  "date" : "2026-06-18T09:07:35+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Details regarding provenance, EHDS categories, and data quality.",
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
      "short" : "AI Training Data Metadata",
      "definition" : "Details regarding provenance, EHDS categories, and data quality."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:provenance",
      "path" : "Extension.extension",
      "sliceName" : "provenance",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:provenance.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:provenance.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "provenance"
    },
    {
      "id" : "Extension.extension:provenance.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:ehdsCategory",
      "path" : "Extension.extension",
      "sliceName" : "ehdsCategory",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:ehdsCategory.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:ehdsCategory.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ehdsCategory"
    },
    {
      "id" : "Extension.extension:ehdsCategory.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://example.org/fhir/eu-ai-transparency/ValueSet/ehds-data-category-vs"
      }
    },
    {
      "id" : "Extension.extension:ehdsPermit",
      "path" : "Extension.extension",
      "sliceName" : "ehdsPermit",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:ehdsPermit.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:ehdsPermit.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ehdsPermit"
    },
    {
      "id" : "Extension.extension:ehdsPermit.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "Extension.extension:dataQuality",
      "path" : "Extension.extension",
      "sliceName" : "dataQuality",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:dataQuality.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:dataQuality.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "dataQuality"
    },
    {
      "id" : "Extension.extension:dataQuality.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://example.org/fhir/eu-ai-transparency/ValueSet/eu-ai-data-quality-vs"
      }
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-training-data"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
