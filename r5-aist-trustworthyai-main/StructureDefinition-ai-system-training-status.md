# AI System-Specific Training Status - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AI System-Specific Training Status**

## Extension: AI System-Specific Training Status 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-system-training-status | *Version*:0.1.0 |
| Draft as of 2026-07-31 | *Computable Name*:AISystemTrainingStatus |

Records whether the practitioner acting in the documented role has completed training specific to the relevant AI system.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EU AI Practitioner Role](StructureDefinition-eu-ai-practitionerrole.md)
* Examples for this Extension: [PractitionerRole/practitionerrole-reviewer-001](PractitionerRole-practitionerrole-reviewer-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.eu.aitransparency|current/StructureDefinition/StructureDefinition-ai-system-training-status.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ai-system-training-status.csv), [Excel](StructureDefinition-ai-system-training-status.xlsx), [Schematron](StructureDefinition-ai-system-training-status.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ai-system-training-status",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-system-training-status",
  "version" : "0.1.0",
  "name" : "AISystemTrainingStatus",
  "title" : "AI System-Specific Training Status",
  "status" : "draft",
  "date" : "2026-07-31T11:07:29+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Records whether the practitioner acting in the documented role has completed training specific to the relevant AI system.",
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
    "expression" : "PractitionerRole"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "AI System-Specific Training Status",
      "definition" : "Records whether the practitioner acting in the documented role has completed training specific to the relevant AI system."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-system-training-status"
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
