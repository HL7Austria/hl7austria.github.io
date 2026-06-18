# Assessment: Human Override of AI Finding - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Assessment: Human Override of AI Finding**

## Example ArtifactAssessment: Assessment: Human Override of AI Finding

Profile: [EU AI Act Human Oversight (HL)](StructureDefinition-eu-ai-human-oversight.md)

**date**: 2026-04-08 14:05:00+0000

**artifact**: [Observation Nodule of lung (disorder)](Observation-observation-ai-nodule.md)

> **content****summary**: 

Clinical review of the CT and AI Heatmap confirms a vascular crossing artifact, not a true pulmonary lesion. Finding dismissed.

**classifier**: Human Override**author**: [PractitionerRole Doctor](PractitionerRole-role-dr-thorne.md)

### RelatedArtifacts

| | | |
| :--- | :--- | :--- |
| - | **Type** | **ResourceReference** |
| * | Citation | [DocumentReference: status = current](DocumentReference-doc-ai-heatmap.md) |


**workflowStatus**: Submitted



## Resource Content

```json
{
  "resourceType" : "ArtifactAssessment",
  "id" : "oversight-dr-thorne-override",
  "meta" : {
    "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-human-oversight"]
  },
  "date" : "2026-04-08T14:05:00Z",
  "artifactReference" : {
    "reference" : "Observation/observation-ai-nodule"
  },
  "content" : [{
    "summary" : "Clinical review of the CT and AI Heatmap confirms a vascular crossing artifact, not a true pulmonary lesion. Finding dismissed.",
    "classifier" : [{
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
        "code" : "human-override",
        "display" : "Human Override"
      }]
    }],
    "author" : {
      "extension" : [{
        "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-system-training-status",
        "valueBoolean" : true
      }],
      "reference" : "PractitionerRole/role-dr-thorne"
    },
    "relatedArtifact" : [{
      "type" : "citation",
      "resourceReference" : {
        "reference" : "DocumentReference/doc-ai-heatmap"
      }
    }]
  }],
  "workflowStatus" : "submitted"
}

```
