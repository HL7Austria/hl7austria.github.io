# ELGA.MOPED\Prozentsatz der Zahlung - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Prozentsatz der Zahlung**

## Extension: Prozentsatz der Zahlung 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/moped-ext-PaymentPercentage | *Version*:0.1.0 | |
| Draft as of 2026-05-22 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:PaymentPercentage |

Prozentsatz der Zahlung

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MOPED ARK Status Update - PaymentReconciliation](StructureDefinition-MopedARKStatusUpdate.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/moped-ext-PaymentPercentage)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-moped-ext-PaymentPercentage.csv), [Excel](StructureDefinition-moped-ext-PaymentPercentage.xlsx), [Schematron](StructureDefinition-moped-ext-PaymentPercentage.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "moped-ext-PaymentPercentage",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://elga.moped.at/StructureDefinition/moped-ext-PaymentPercentage",
  "version" : "0.1.0",
  "name" : "PaymentPercentage",
  "title" : "Prozentsatz der Zahlung",
  "status" : "draft",
  "date" : "2026-05-22T08:08:56+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Prozentsatz der Zahlung",
  "fhirVersion" : "5.0.0",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "https://elga.moped.at/StructureDefinition/MopedARKStatusUpdate#PaymentReconciliation"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Prozentsatz der Zahlung",
      "definition" : "Prozentsatz der Zahlung"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://elga.moped.at/StructureDefinition/moped-ext-PaymentPercentage"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Extension.value[x]:valueDecimal",
      "path" : "Extension.value[x]",
      "sliceName" : "valueDecimal",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    }]
  }
}

```
