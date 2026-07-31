# EHDS Data Permit - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EHDS Data Permit**

## Extension: EHDS Data Permit 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/ehds-data-permit | *Version*:0.1.0 |
| Draft as of 2026-07-31 | *Computable Name*:EHDSDataPermit |

Records the identifier of an EHDS data permit associated with the documented secondary use, where applicable.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EU AI Provenance](StructureDefinition-eu-ai-provenance.md)
* Examples for this Extension: [Provenance/example-secondary-use-provenance](Provenance-example-secondary-use-provenance.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.eu.aitransparency|current/StructureDefinition/StructureDefinition-ehds-data-permit.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ehds-data-permit.csv), [Excel](StructureDefinition-ehds-data-permit.xlsx), [Schematron](StructureDefinition-ehds-data-permit.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ehds-data-permit",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ehds-data-permit",
  "version" : "0.1.0",
  "name" : "EHDSDataPermit",
  "title" : "EHDS Data Permit",
  "status" : "draft",
  "date" : "2026-07-31T11:07:29+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Records the identifier of an EHDS data permit associated with the documented secondary use, where applicable.",
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
      "short" : "EHDS Data Permit",
      "definition" : "Records the identifier of an EHDS data permit associated with the documented secondary use, where applicable."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ehds-data-permit"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
