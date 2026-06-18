# AI Privacy Metadata - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AI Privacy Metadata**

## Extension: AI Privacy Metadata 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-privacy-metadata | *Version*:0.1.0 |
| Draft as of 2026-06-18 | *Computable Name*:AIPrivacyMetadata |

GDPR and AI Act privacy parameters. Third country transfer flags and data retention policies at the model level.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EU AI Act Model Card](StructureDefinition-eu-ai-model-card.md)
* Examples for this Extension: [DocumentReference/modelcard-riskassist-ai](DocumentReference-modelcard-riskassist-ai.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.eu.aitransparency|current/StructureDefinition/StructureDefinition-ai-privacy-metadata.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ai-privacy-metadata.csv), [Excel](StructureDefinition-ai-privacy-metadata.xlsx), [Schematron](StructureDefinition-ai-privacy-metadata.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ai-privacy-metadata",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-privacy-metadata",
  "version" : "0.1.0",
  "name" : "AIPrivacyMetadata",
  "title" : "AI Privacy Metadata",
  "status" : "draft",
  "date" : "2026-06-18T11:52:19+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "GDPR and AI Act privacy parameters. Third country transfer flags and data retention policies at the model level.",
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
      "short" : "AI Privacy Metadata",
      "definition" : "GDPR and AI Act privacy parameters. Third country transfer flags and data retention policies at the model level."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 2
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
      "type" : [{
        "code" : "Duration"
      }]
    },
    {
      "id" : "Extension.extension:transferFlag",
      "path" : "Extension.extension",
      "sliceName" : "transferFlag",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:transferFlag.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:transferFlag.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "transferFlag"
    },
    {
      "id" : "Extension.extension:transferFlag.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.extension:destination",
      "path" : "Extension.extension",
      "sliceName" : "destination",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:destination.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:destination.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "destination"
    },
    {
      "id" : "Extension.extension:destination.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-privacy-metadata"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
