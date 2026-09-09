# AI Training Data Metadata - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AI Training Data Metadata**

## Extension: AI Training Data Metadata 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/trust-ai-transparency/StructureDefinition/ai-training-data | *Version*:0.1.0 |
| Draft as of 2026-09-09 | *Computable Name*:AITrainingData |

Documents the origin, relevant EHDS-related classifications, applicable permit identifiers, secondary-use purposes, and reported quality characteristics of data used to train or develop the AI system.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Trust AI Act Model Card](StructureDefinition-trust-ai-model-card.md)
* Examples for this Extension: [DocumentReference/dr-model-card](DocumentReference-dr-model-card.md) and [DocumentReference/modelcard-riskassist-ai](DocumentReference-modelcard-riskassist-ai.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.trust.aitransparency|current/StructureDefinition/StructureDefinition-ai-training-data.json)

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
  "url" : "http://example.org/fhir/trust-ai-transparency/StructureDefinition/ai-training-data",
  "version" : "0.1.0",
  "name" : "AITrainingData",
  "title" : "AI Training Data Metadata",
  "status" : "draft",
  "date" : "2026-09-09T11:13:25+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Documents the origin, relevant EHDS-related classifications, applicable permit identifiers, secondary-use purposes, and reported quality characteristics of data used to train or develop the AI system.",
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
      "definition" : "Documents the origin, relevant EHDS-related classifications, applicable permit identifiers, secondary-use purposes, and reported quality characteristics of data used to train or develop the AI system."
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
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:Category",
      "path" : "Extension.extension",
      "sliceName" : "Category",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:Category.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:Category.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "Category"
    },
    {
      "id" : "Extension.extension:Category.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://example.org/fhir/trust-ai-transparency/ValueSet/data-category-vs"
      }
    },
    {
      "id" : "Extension.extension:SecondaryUsePurpose",
      "path" : "Extension.extension",
      "sliceName" : "SecondaryUsePurpose",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:SecondaryUsePurpose.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:SecondaryUsePurpose.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "SecondaryUsePurpose"
    },
    {
      "id" : "Extension.extension:SecondaryUsePurpose.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://example.org/fhir/trust-ai-transparency/ValueSet/secondary-use-purpose-vs"
      }
    },
    {
      "id" : "Extension.extension:Permit",
      "path" : "Extension.extension",
      "sliceName" : "Permit",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:Permit.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:Permit.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "Permit"
    },
    {
      "id" : "Extension.extension:Permit.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "Extension.extension:dataQuality",
      "path" : "Extension.extension",
      "sliceName" : "dataQuality",
      "min" : 0,
      "max" : "*",
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
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://example.org/fhir/trust-ai-transparency/ValueSet/trust-ai-data-quality-vs"
      }
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://example.org/fhir/trust-ai-transparency/StructureDefinition/ai-training-data"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
