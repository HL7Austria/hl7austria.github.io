# EU AI Human Oversight Assessment - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EU AI Human Oversight Assessment**

## Resource Profile: EU AI Human Oversight Assessment 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-human-oversight | *Version*:0.1.0 |
| Draft as of 2026-06-18 | *Computable Name*:EU_AIHumanOversightAssessment |

 
An ArtifactAssessment profile documenting professional review of an AI-generated output, including whether the result was accepted, corrected, modified, or overridden. 

**Usages:**

* Refer to this Profile: [EU AI Patient Explanation Communication](StructureDefinition-eu-ai-patient-explanation.md)
* Examples for this Profile: [ArtifactAssessment/sc-02-validation-human-oversight-001](ArtifactAssessment-sc-02-validation-human-oversight-001.md)

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
  "date" : "2026-06-18T12:04:51+00:00",
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
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ArtifactAssessment.content.summary",
      "path" : "ArtifactAssessment.content.summary",
      "short" : "Medical/Technical rationale for the decision",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ArtifactAssessment.content.classifier",
      "path" : "ArtifactAssessment.content.classifier",
      "short" : "Intervention Action (e.g., Validation, Override)",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://example.org/fhir/eu-ai-transparency/ValueSet/eu-ai-intervention-vs"
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
      "id" : "ArtifactAssessment.content.author.extension",
      "path" : "ArtifactAssessment.content.author.extension",
      "min" : 1
    },
    {
      "id" : "ArtifactAssessment.content.author.extension:aiTraining",
      "path" : "ArtifactAssessment.content.author.extension",
      "sliceName" : "aiTraining",
      "short" : "Did this specific human receive training for this AI?",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-system-training-status"]
      }]
    },
    {
      "id" : "ArtifactAssessment.content.relatedArtifact",
      "path" : "ArtifactAssessment.content.relatedArtifact",
      "short" : "Reference to heatmap or explainability tool used"
    },
    {
      "id" : "ArtifactAssessment.workflowStatus",
      "path" : "ArtifactAssessment.workflowStatus",
      "short" : "draft | active | retired | unknown",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
