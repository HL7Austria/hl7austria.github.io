# AI Clinical Validation Status - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AI Clinical Validation Status**

## Extension: AI Clinical Validation Status 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-clinical-validation-status | *Version*:0.1.0 |
| Draft as of 2026-06-18 | *Computable Name*:AIClinicalValidationStatus |

Documents whether the AI system is clinically validated, not clinically validated, under validation, or only technically validated.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EU AI Act Model Card](StructureDefinition-eu-ai-model-card.md)
* Examples for this Extension: [DocumentReference/modelcard-riskassist-ai](DocumentReference-modelcard-riskassist-ai.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.eu.aitransparency|current/StructureDefinition/StructureDefinition-ai-clinical-validation-status.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ai-clinical-validation-status.csv), [Excel](StructureDefinition-ai-clinical-validation-status.xlsx), [Schematron](StructureDefinition-ai-clinical-validation-status.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ai-clinical-validation-status",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-clinical-validation-status",
  "version" : "0.1.0",
  "name" : "AIClinicalValidationStatus",
  "title" : "AI Clinical Validation Status",
  "status" : "draft",
  "date" : "2026-06-18T11:52:19+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Documents whether the AI system is clinically validated, not clinically validated, under validation, or only technically validated.",
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
      "short" : "AI Clinical Validation Status",
      "definition" : "Documents whether the AI system is clinically validated, not clinically validated, under validation, or only technically validated."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-clinical-validation-status"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://example.org/fhir/eu-ai-transparency/ValueSet/eu-ai-clinical-validation-status-vs"
      }
    }]
  }
}

```
