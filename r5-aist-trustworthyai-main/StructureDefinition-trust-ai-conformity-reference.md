# EU Conformity Declaration Reference - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EU Conformity Declaration Reference**

## Extension: EU Conformity Declaration Reference 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-conformity-reference | *Version*:0.1.0 |
| Draft as of 2026-09-09 | *Computable Name*:EUConformityDeclarationReference |

The EU declaration of conformity shall identify the high-risk AI system.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Trust AI System Device](StructureDefinition-trust-ai-device.md)
* Examples for this Extension: [Device/device-riskassist-ai](Device-device-riskassist-ai.md) and [Device/dr-ai-device](Device-dr-ai-device.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.trust.aitransparency|current/StructureDefinition/StructureDefinition-trust-ai-conformity-reference.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-trust-ai-conformity-reference.csv), [Excel](StructureDefinition-trust-ai-conformity-reference.xlsx), [Schematron](StructureDefinition-trust-ai-conformity-reference.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "trust-ai-conformity-reference",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-conformity-reference",
  "version" : "0.1.0",
  "name" : "EUConformityDeclarationReference",
  "title" : "EU Conformity Declaration Reference",
  "status" : "draft",
  "date" : "2026-09-09T11:13:25+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "The EU declaration of conformity shall identify the high-risk AI system.",
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
      "short" : "EU Conformity Declaration Reference",
      "definition" : "The EU declaration of conformity shall identify the high-risk AI system."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-conformity-reference"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/DocumentReference"]
      }]
    }]
  }
}

```
