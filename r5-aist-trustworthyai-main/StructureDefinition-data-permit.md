# Data Permit - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Data Permit**

## Extension: Data Permit 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/trust-ai-transparency/StructureDefinition/data-permit | *Version*:0.1.0 |
| Draft as of 2026-09-09 | *Computable Name*:DataPermit |

Records the identifier of an EHDS data permit associated with the documented secondary use, where applicable.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Trust AI Provenance](StructureDefinition-trust-ai-provenance.md)
* Examples for this Extension: [Provenance/example-secondary-use-provenance](Provenance-example-secondary-use-provenance.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.trust.aitransparency|current/StructureDefinition/StructureDefinition-data-permit.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-data-permit.csv), [Excel](StructureDefinition-data-permit.xlsx), [Schematron](StructureDefinition-data-permit.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "data-permit",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://example.org/fhir/trust-ai-transparency/StructureDefinition/data-permit",
  "version" : "0.1.0",
  "name" : "DataPermit",
  "title" : "Data Permit",
  "status" : "draft",
  "date" : "2026-09-09T11:13:25+00:00",
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
      "short" : "Data Permit",
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
      "fixedUri" : "http://example.org/fhir/trust-ai-transparency/StructureDefinition/data-permit"
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
