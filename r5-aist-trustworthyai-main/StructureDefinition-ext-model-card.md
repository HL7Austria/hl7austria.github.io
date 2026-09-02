# Model Card Reference - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Model Card Reference**

## Extension: Model Card Reference 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/ext-model-card | *Version*:0.1.0 |
| Draft as of 2026-09-02 | *Computable Name*:EU_AIModelCardLink |

References the model card that documents the AI system's intended purpose, limitations, performance, risks, and other relevant technical information.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EU AI System Device](StructureDefinition-eu-ai-device.md)
* Examples for this Extension: [Device/device-riskassist-ai](Device-device-riskassist-ai.md) and [Device/fd450f5e-749e-48b8-8ea8-23b8ed2b9592](Device-fd450f5e-749e-48b8-8ea8-23b8ed2b9592.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.eu.aitransparency|current/StructureDefinition/StructureDefinition-ext-model-card.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-model-card.csv), [Excel](StructureDefinition-ext-model-card.xlsx), [Schematron](StructureDefinition-ext-model-card.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-model-card",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ext-model-card",
  "version" : "0.1.0",
  "name" : "EU_AIModelCardLink",
  "title" : "Model Card Reference",
  "status" : "draft",
  "date" : "2026-09-02T10:48:14+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "References the model card that documents the AI system's intended purpose, limitations, performance, risks, and other relevant technical information.",
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
    "expression" : "Device"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Model Card Reference",
      "definition" : "References the model card that documents the AI system's intended purpose, limitations, performance, risks, and other relevant technical information."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ext-model-card"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-model-card"]
      }]
    }]
  }
}

```
