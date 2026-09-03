# EHDS Usage Category - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EHDS Usage Category**

## Extension: EHDS Usage Category 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/ehds-usage-category | *Version*:0.1.0 |
| Draft as of 2026-09-03 | *Computable Name*:EHDSUsageCategory |

Classifies the documented use of electronic health data as primary use or secondary use in the EHDS context.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EU AI Provenance](StructureDefinition-eu-ai-provenance.md)
* Examples for this Extension: [Provenance/example-secondary-use-provenance](Provenance-example-secondary-use-provenance.md), [Provenance/sc-01-ai-only-provenance-ai-output-001](Provenance-sc-01-ai-only-provenance-ai-output-001.md), [Provenance/sc-02-validation-provenance-ai-output-001](Provenance-sc-02-validation-provenance-ai-output-001.md), [Provenance/sc-03-override-provenance-ai-output-001](Provenance-sc-03-override-provenance-ai-output-001.md) and [Provenance/sc-04-correction-exp-provenance-ai-output-001](Provenance-sc-04-correction-exp-provenance-ai-output-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.eu.aitransparency|current/StructureDefinition/StructureDefinition-ehds-usage-category.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ehds-usage-category.csv), [Excel](StructureDefinition-ehds-usage-category.xlsx), [Schematron](StructureDefinition-ehds-usage-category.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ehds-usage-category",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ehds-usage-category",
  "version" : "0.1.0",
  "name" : "EHDSUsageCategory",
  "title" : "EHDS Usage Category",
  "status" : "draft",
  "date" : "2026-09-03T11:53:05+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Classifies the documented use of electronic health data as primary use or secondary use in the EHDS context.",
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
      "short" : "EHDS Usage Category",
      "definition" : "Classifies the documented use of electronic health data as primary use or secondary use in the EHDS context."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ehds-usage-category"
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
        "valueSet" : "http://example.org/fhir/eu-ai-transparency/ValueSet/ehds-usage-category-vs"
      }
    }]
  }
}

```
