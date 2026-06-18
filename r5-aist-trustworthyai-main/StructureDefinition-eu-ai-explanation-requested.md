# EU AI Act Explanation Requested Flag - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EU AI Act Explanation Requested Flag**

## Extension: EU AI Act Explanation Requested Flag 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-explanation-requested | *Version*:0.1.0 |
| Draft as of 2026-06-18 | *Computable Name*:EU_AI_ExplanationRequested |

Flag indicating if the patient (data subject) explicitly requested a clear and meaningful explanation of the AI's role and the clinical decision.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EU AI Act Patient Right to Explanation](StructureDefinition-eu-ai-patient-explanation.md)
* Examples for this Extension: [Communication/comm-patient-explanation](Communication-comm-patient-explanation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.eu.aitransparency|current/StructureDefinition/StructureDefinition-eu-ai-explanation-requested.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-eu-ai-explanation-requested.csv), [Excel](StructureDefinition-eu-ai-explanation-requested.xlsx), [Schematron](StructureDefinition-eu-ai-explanation-requested.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "eu-ai-explanation-requested",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-explanation-requested",
  "version" : "0.1.0",
  "name" : "EU_AI_ExplanationRequested",
  "title" : "EU AI Act Explanation Requested Flag",
  "status" : "draft",
  "date" : "2026-06-18T08:40:47+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Flag indicating if the patient (data subject) explicitly requested a clear and meaningful explanation of the AI's role and the clinical decision.",
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
    "expression" : "Communication"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "EU AI Act Explanation Requested Flag",
      "definition" : "Flag indicating if the patient (data subject) explicitly requested a clear and meaningful explanation of the AI's role and the clinical decision."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-explanation-requested"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "True, if the patient actively requested an explanation.",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }],
      "mustSupport" : true
    }]
  }
}

```
