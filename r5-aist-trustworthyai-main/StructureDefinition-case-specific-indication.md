# Case-Specific Indication - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Case-Specific Indication**

## Extension: Case-Specific Indication 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/case-specific-indication | *Version*:0.1.0 |
| Draft as of 2026-09-02 | *Computable Name*:CaseSpecificIndication |

Records the clinical indication or case-specific reason for applying the AI system in the documented patient context.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EU AI Generated Observation](StructureDefinition-eu-ai-observation.md)
* Examples for this Extension: [Observation/sc-01-ai-only-ai-observation-risk-001](Observation-sc-01-ai-only-ai-observation-risk-001.md), [Observation/sc-02-validation-ai-observation-risk-001](Observation-sc-02-validation-ai-observation-risk-001.md), [Observation/sc-03-override-ai-observation-risk-001](Observation-sc-03-override-ai-observation-risk-001.md) and [Observation/sc-04-correction-exp-ai-observation-risk-001](Observation-sc-04-correction-exp-ai-observation-risk-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.eu.aitransparency|current/StructureDefinition/StructureDefinition-case-specific-indication.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-case-specific-indication.csv), [Excel](StructureDefinition-case-specific-indication.xlsx), [Schematron](StructureDefinition-case-specific-indication.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "case-specific-indication",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/case-specific-indication",
  "version" : "0.1.0",
  "name" : "CaseSpecificIndication",
  "title" : "Case-Specific Indication",
  "status" : "draft",
  "date" : "2026-09-02T10:48:14+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Records the clinical indication or case-specific reason for applying the AI system in the documented patient context.",
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
    "expression" : "Observation"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Case-Specific Indication",
      "definition" : "Records the clinical indication or case-specific reason for applying the AI system in the documented patient context."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/case-specific-indication"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://example.org/fhir/eu-ai-transparency/ValueSet/eu-ai-case-specific-indication-vs"
      }
    }]
  }
}

```
