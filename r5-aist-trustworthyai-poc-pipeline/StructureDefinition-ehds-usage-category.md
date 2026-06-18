# EHDS Usage Category - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EHDS Usage Category**

## Extension: EHDS Usage Category 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/ehds-usage-category | *Version*:0.1.0 |
| Draft as of 2026-06-18 | *Computable Name*:EHDSPUsageCategory |

Categorizes the data processing as Primary Care or Secondary Use according to the EHDS.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EU AI Act Provenance (Human-in-the-Loop)](StructureDefinition-eu-ai-provenance.md)
* Examples for this Extension: [Provenance/sc-02-validation-provenance-ai-output-001](Provenance-sc-02-validation-provenance-ai-output-001.md)

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
  "name" : "EHDSPUsageCategory",
  "title" : "EHDS Usage Category",
  "status" : "draft",
  "date" : "2026-06-18T09:07:35+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Categorizes the data processing as Primary Care or Secondary Use according to the EHDS.",
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
      "definition" : "Categorizes the data processing as Primary Care or Secondary Use according to the EHDS."
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
