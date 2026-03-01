# ELGA.MOPED\AddItemCategory - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AddItemCategory**

## Extension: AddItemCategory 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/moped-ext-AddItemCategory | *Version*:0.1.0 | |
| Draft as of 2026-03-01 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AddItemCategory |

Benefit classification

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MOPED ARKResponse](StructureDefinition-MopedARKResponse.md), [MOPED LKFResponse](StructureDefinition-MopedLKFResponse.md) and [MOPED VAEResponse](StructureDefinition-MopedVAEResponse.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/moped-ext-AddItemCategory)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-moped-ext-AddItemCategory.csv), [Excel](StructureDefinition-moped-ext-AddItemCategory.xlsx), [Schematron](StructureDefinition-moped-ext-AddItemCategory.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "moped-ext-AddItemCategory",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://elga.moped.at/StructureDefinition/moped-ext-AddItemCategory",
  "version" : "0.1.0",
  "name" : "AddItemCategory",
  "title" : "AddItemCategory",
  "status" : "draft",
  "date" : "2026-03-01T19:57:07+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Benefit classification",
  "fhirVersion" : "5.0.0",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "ClaimResponse"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "AddItemCategory",
      "definition" : "Benefit classification"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://elga.moped.at/StructureDefinition/moped-ext-AddItemCategory"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/MopedClaimItemCategoryVS"
      }
    }]
  }
}

```
