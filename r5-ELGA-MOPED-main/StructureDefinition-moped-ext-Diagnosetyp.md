# ELGA.MOPED\Diagnosetyp - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Diagnosetyp**

## Extension: Diagnosetyp 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/moped-ext-Diagnosetyp | *Version*:0.1.0 | |
| Draft as of 2026-03-01 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:Diagnosetyp |

Diagnosetyp

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MOPED Condition](StructureDefinition-MopedCondition.md)
* Examples for this Extension: [Condition/Condition42.1](Condition-Condition42.1.md), [Condition/PJ1Condition1](Condition-PJ1Condition1.md), [Condition/PJ2Condition1](Condition-PJ2Condition1.md) and [Condition/PJ2Condition2](Condition-PJ2Condition2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/moped-ext-Diagnosetyp)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-moped-ext-Diagnosetyp.csv), [Excel](StructureDefinition-moped-ext-Diagnosetyp.xlsx), [Schematron](StructureDefinition-moped-ext-Diagnosetyp.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "moped-ext-Diagnosetyp",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://elga.moped.at/StructureDefinition/moped-ext-Diagnosetyp",
  "version" : "0.1.0",
  "name" : "Diagnosetyp",
  "title" : "Diagnosetyp",
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
  "description" : "Diagnosetyp",
  "fhirVersion" : "5.0.0",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "https://elga.moped.at/StructureDefinition/MopedCondition#Condition"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Diagnosetyp",
      "definition" : "Diagnosetyp"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://elga.moped.at/StructureDefinition/moped-ext-Diagnosetyp"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/LKFDiagnoseTypVS"
      }
    }]
  }
}

```
