# ELGA.MOPED\Grund warum keine Zahlung erfolgte - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Grund warum keine Zahlung erfolgte**

## Extension: Grund warum keine Zahlung erfolgte 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/moped-ext-ReasonForNonPayment | *Version*:0.1.0 | |
| Draft as of 2026-03-29 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:ReasonForNonPayment |

Grund warum keine Zahlung erfolgte

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MOPED ARK Status Update - PaymentReconciliation](StructureDefinition-MopedARKStatusUpdate.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/moped-ext-ReasonForNonPayment)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-moped-ext-ReasonForNonPayment.csv), [Excel](StructureDefinition-moped-ext-ReasonForNonPayment.xlsx), [Schematron](StructureDefinition-moped-ext-ReasonForNonPayment.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "moped-ext-ReasonForNonPayment",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://elga.moped.at/StructureDefinition/moped-ext-ReasonForNonPayment",
  "version" : "0.1.0",
  "name" : "ReasonForNonPayment",
  "title" : "Grund warum keine Zahlung erfolgte",
  "status" : "draft",
  "date" : "2026-03-29T08:30:46+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Grund warum keine Zahlung erfolgte",
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
      "short" : "Grund warum keine Zahlung erfolgte",
      "definition" : "Grund warum keine Zahlung erfolgte"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://elga.moped.at/StructureDefinition/moped-ext-ReasonForNonPayment"
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
      "id" : "Extension.value[x]:valueString",
      "path" : "Extension.value[x]",
      "sliceName" : "valueString",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
