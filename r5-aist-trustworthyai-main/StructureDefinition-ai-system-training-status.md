# AI System Specific Training - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AI System Specific Training**

## Extension: AI System Specific Training 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-system-training-status | *Version*:0.1.0 |
| Draft as of 2026-06-18 | *Computable Name*:AISystemTrainingStatus |

Mandatory flag indicating whether the human actor has received specific training for the utilized AI tool.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EU AI Human Oversight Assessment](StructureDefinition-eu-ai-human-oversight.md) and [EU AI Practitioner Role](StructureDefinition-eu-ai-practitionerrole.md)
* Examples for this Extension: [ArtifactAssessment/sc-02-validation-human-oversight-001](ArtifactAssessment-sc-02-validation-human-oversight-001.md) and [PractitionerRole/practitionerrole-reviewer-001](PractitionerRole-practitionerrole-reviewer-001.md)

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
  "title" : "AI System Specific Training",
  "status" : "draft",
  "date" : "2026-06-18T12:04:51+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Mandatory flag indicating whether the human actor has received specific training for the utilized AI tool.",
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
    "expression" : "ArtifactAssessment.content.author"
  },
  {
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
      "short" : "AI System Specific Training",
      "definition" : "Mandatory flag indicating whether the human actor has received specific training for the utilized AI tool."
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
      "short" : "True if training was completed",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
