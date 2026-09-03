# AI Retention Information - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AI Retention Information**

## Extension: AI Retention Information 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-retention-information | *Version*:0.1.0 |
| Draft as of 2026-09-03 | *Computable Name*:AIRetentionInformation |

Documents the stated retention duration for AI-related data, outputs, logs, or documentation.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EU AI Act Model Card](StructureDefinition-eu-ai-model-card.md)
* Examples for this Extension: [DocumentReference/029e523f-6c49-4021-b909-674ebfc08c49](DocumentReference-029e523f-6c49-4021-b909-674ebfc08c49.md) and [DocumentReference/modelcard-riskassist-ai](DocumentReference-modelcard-riskassist-ai.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.eu.aitransparency|current/StructureDefinition/StructureDefinition-ai-retention-information.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ai-retention-information.csv), [Excel](StructureDefinition-ai-retention-information.xlsx), [Schematron](StructureDefinition-ai-retention-information.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ai-retention-information",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-retention-information",
  "version" : "0.1.0",
  "name" : "AIRetentionInformation",
  "title" : "AI Retention Information",
  "status" : "draft",
  "date" : "2026-09-03T11:53:05+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Documents the stated retention duration for AI-related data, outputs, logs, or documentation.",
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
      "short" : "AI Retention Information",
      "definition" : "Documents the stated retention duration for AI-related data, outputs, logs, or documentation."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:retention",
      "path" : "Extension.extension",
      "sliceName" : "retention",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:retention.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:retention.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "retention"
    },
    {
      "id" : "Extension.extension:retention.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Duration"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-retention-information"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
