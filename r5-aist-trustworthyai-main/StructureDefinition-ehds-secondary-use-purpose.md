# EHDS Secondary Use Purpose - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EHDS Secondary Use Purpose**

## Extension: EHDS Secondary Use Purpose 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/ehds-secondary-use-purpose | *Version*:0.1.0 |
| Draft as of 2026-06-18 | *Computable Name*:EHDSSecondaryUsePurpose |

Documents the permitted purpose for secondary use of electronic health data under the EHDS.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EU AI Provenance](StructureDefinition-eu-ai-provenance.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.eu.aitransparency|current/StructureDefinition/StructureDefinition-ehds-secondary-use-purpose.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ehds-secondary-use-purpose.csv), [Excel](StructureDefinition-ehds-secondary-use-purpose.xlsx), [Schematron](StructureDefinition-ehds-secondary-use-purpose.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ehds-secondary-use-purpose",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ehds-secondary-use-purpose",
  "version" : "0.1.0",
  "name" : "EHDSSecondaryUsePurpose",
  "title" : "EHDS Secondary Use Purpose",
  "status" : "draft",
  "date" : "2026-06-18T12:04:51+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Documents the permitted purpose for secondary use of electronic health data under the EHDS.",
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
  },
  {
    "type" : "element",
    "expression" : "DocumentReference"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "EHDS Secondary Use Purpose",
      "definition" : "Documents the permitted purpose for secondary use of electronic health data under the EHDS."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ehds-secondary-use-purpose"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://example.org/fhir/eu-ai-transparency/ValueSet/ehds-secondary-use-purpose-vs"
      }
    }]
  }
}

```
