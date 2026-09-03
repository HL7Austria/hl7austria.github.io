# EU AI Human Oversight Assessment - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EU AI Human Oversight Assessment**

## Resource Profile: EU AI Human Oversight Assessment 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-human-oversight | *Version*:0.1.0 |
| Draft as of 2026-09-03 | *Computable Name*:EU_AIHumanOversightAssessment |

 
An ArtifactAssessment profile documenting professional review of an AI-generated output, including whether the result was accepted, corrected, modified, or overridden. 

**Usages:**

* Examples for this Profile: [ArtifactAssessment/sc-02-validation-human-oversight-001](ArtifactAssessment-sc-02-validation-human-oversight-001.md), [ArtifactAssessment/sc-03-override-human-oversight-001](ArtifactAssessment-sc-03-override-human-oversight-001.md) and [ArtifactAssessment/sc-04-correction-exp-human-oversight-001](ArtifactAssessment-sc-04-correction-exp-human-oversight-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.eu.aitransparency|current/StructureDefinition/StructureDefinition-eu-ai-human-oversight.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-eu-ai-human-oversight.csv), [Excel](StructureDefinition-eu-ai-human-oversight.xlsx), [Schematron](StructureDefinition-eu-ai-human-oversight.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "eu-ai-human-oversight",
  "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-human-oversight",
  "version" : "0.1.0",
  "name" : "EU_AIHumanOversightAssessment",
  "title" : "EU AI Human Oversight Assessment",
  "status" : "draft",
  "date" : "2026-09-03T11:53:05+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "An ArtifactAssessment profile documenting professional review of an AI-generated output, including whether the result was accepted, corrected, modified, or overridden.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "objimpl",
    "uri" : "http://hl7.org/fhir/object-implementation",
    "name" : "Object Implementation Information"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ArtifactAssessment",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ArtifactAssessment",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ArtifactAssessment",
      "path" : "ArtifactAssessment"
    },
    {
      "id" : "ArtifactAssessment.date",
      "path" : "ArtifactAssessment.date",
      "short" : "Date and time of human oversight assessment",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ArtifactAssessment.artifact[x]",
      "path" : "ArtifactAssessment.artifact[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Reference to the AI-generated Observation"
    },
    {
      "id" : "ArtifactAssessment.artifact[x]:artifactReference",
      "path" : "ArtifactAssessment.artifact[x]",
      "sliceName" : "artifactReference",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-observation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ArtifactAssessment.content.summary",
      "path" : "ArtifactAssessment.content.summary",
      "short" : "Clinical or technical rationale for the assessment",
      "mustSupport" : true
    },
    {
      "id" : "ArtifactAssessment.content.classifier",
      "path" : "ArtifactAssessment.content.classifier",
      "short" : "Human oversight action",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://example.org/fhir/eu-ai-transparency/ValueSet/eu-ai-human-oversight-action-vs"
      }
    },
    {
      "id" : "ArtifactAssessment.content.author",
      "path" : "ArtifactAssessment.content.author",
      "short" : "Reference to the qualified human overseer",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-practitionerrole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ArtifactAssessment.content.relatedArtifact",
      "path" : "ArtifactAssessment.content.relatedArtifact",
      "short" : "Supporting documentation or explainability evidence"
    }]
  }
}

```
