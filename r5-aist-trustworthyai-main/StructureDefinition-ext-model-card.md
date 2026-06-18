# Model Card Reference - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Model Card Reference**

## Extension: Model Card Reference 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/ext-model-card | *Version*:0.1.0 |
| Draft as of 2026-06-18 | *Computable Name*:EU_AIModelCardLink |

A reference to the DocumentReference resource that acts as the Model Card, containing detailed documentation, intended purpose, and risk assessments.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EU AI Act Compliant Device](StructureDefinition-eu-ai-device.md)
* Examples for this Extension: [Device/device-aurascan-ai](Device-device-aurascan-ai.md)

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
  "date" : "2026-06-18T08:40:47+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "A reference to the DocumentReference resource that acts as the Model Card, containing detailed\n documentation, intended purpose, and risk assessments.",
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
      "definition" : "A reference to the DocumentReference resource that acts as the Model Card, containing detailed\n documentation, intended purpose, and risk assessments."
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
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/DocumentReference"]
      }]
    }]
  }
}

```
