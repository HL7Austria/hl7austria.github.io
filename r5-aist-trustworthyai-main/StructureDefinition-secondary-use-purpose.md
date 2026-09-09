# Secondary Use Purpose - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Secondary Use Purpose**

## Extension: Secondary Use Purpose 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/trust-ai-transparency/StructureDefinition/secondary-use-purpose | *Version*:0.1.0 |
| Draft as of 2026-09-09 | *Computable Name*:SecondaryUsePurpose |

Records the documented purpose for secondary use of electronic health data in the EHDS context.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Trust AI Provenance](StructureDefinition-trust-ai-provenance.md)
* Examples for this Extension: [Provenance/example-secondary-use-provenance](Provenance-example-secondary-use-provenance.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.trust.aitransparency|current/StructureDefinition/StructureDefinition-secondary-use-purpose.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-secondary-use-purpose.csv), [Excel](StructureDefinition-secondary-use-purpose.xlsx), [Schematron](StructureDefinition-secondary-use-purpose.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "secondary-use-purpose",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://example.org/fhir/trust-ai-transparency/StructureDefinition/secondary-use-purpose",
  "version" : "0.1.0",
  "name" : "SecondaryUsePurpose",
  "title" : "Secondary Use Purpose",
  "status" : "draft",
  "date" : "2026-09-09T11:13:25+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Records the documented purpose for secondary use of electronic health data in the EHDS context.",
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
    "expression" : "Provenance"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Secondary Use Purpose",
      "definition" : "Records the documented purpose for secondary use of electronic health data in the EHDS context."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://example.org/fhir/trust-ai-transparency/StructureDefinition/secondary-use-purpose"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://example.org/fhir/trust-ai-transparency/ValueSet/secondary-use-purpose-vs"
      }
    }]
  }
}

```
