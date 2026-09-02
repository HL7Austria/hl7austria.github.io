# Automated Decision-Making Flag - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Automated Decision-Making Flag**

## Extension: Automated Decision-Making Flag 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/automated-decision-flag | *Version*:0.1.0 |
| Draft as of 2026-09-02 | *Computable Name*:AutomatedDecisionFlag |

Indicates whether the documented AI-supported processing resulted in a decision made solely by automated means.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EU AI Generated Observation](StructureDefinition-eu-ai-observation.md)
* Examples for this Extension: [Observation/sc-01-ai-only-ai-observation-risk-001](Observation-sc-01-ai-only-ai-observation-risk-001.md), [Observation/sc-02-validation-ai-observation-risk-001](Observation-sc-02-validation-ai-observation-risk-001.md), [Observation/sc-03-override-ai-observation-risk-001](Observation-sc-03-override-ai-observation-risk-001.md) and [Observation/sc-04-correction-exp-ai-observation-risk-001](Observation-sc-04-correction-exp-ai-observation-risk-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.eu.aitransparency|current/StructureDefinition/StructureDefinition-automated-decision-flag.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-automated-decision-flag.csv), [Excel](StructureDefinition-automated-decision-flag.xlsx), [Schematron](StructureDefinition-automated-decision-flag.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "automated-decision-flag",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/automated-decision-flag",
  "version" : "0.1.0",
  "name" : "AutomatedDecisionFlag",
  "title" : "Automated Decision-Making Flag",
  "status" : "draft",
  "date" : "2026-09-02T10:48:14+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Indicates whether the documented AI-supported processing resulted in a decision made solely by automated means.",
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
      "short" : "Automated Decision-Making Flag",
      "definition" : "Indicates whether the documented AI-supported processing resulted in a decision made solely by automated means."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/automated-decision-flag"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
