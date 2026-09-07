# Assessment: Human Correction of AI Output (4) - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Assessment: Human Correction of AI Output (4)**

## Example ArtifactAssessment: Assessment: Human Correction of AI Output (4)

Profile: [EU AI Human Oversight Assessment](StructureDefinition-eu-ai-human-oversight.md)

**date**: 2026-03-01 10:20:00+0000

**artifact**: [Observation ](Observation-sc-04-correction-exp-ai-observation-risk-001.md)

### Contents

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Summary** | **Classifier** | **Author** |
| * | The simulated AI output was intentionally configured as inconsistent and corrected by the human reviewer. | Human Correction | [PractitionerRole ](PractitionerRole-practitionerrole-reviewer-001.md) |

**workflowStatus**: Published



## Resource Content

```json
{
  "resourceType" : "ArtifactAssessment",
  "id" : "sc-04-correction-exp-human-oversight-001",
  "meta" : {
    "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-human-oversight"]
  },
  "date" : "2026-03-01T10:20:00Z",
  "artifactReference" : {
    "reference" : "Observation/sc-04-correction-exp-ai-observation-risk-001"
  },
  "content" : [{
    "summary" : "The simulated AI output was intentionally configured as inconsistent and corrected by the human reviewer.",
    "classifier" : [{
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-human-oversight-cs",
        "code" : "human-correction",
        "display" : "Human Correction"
      }]
    }],
    "author" : {
      "reference" : "PractitionerRole/practitionerrole-reviewer-001"
    }
  }],
  "workflowStatus" : "published"
}

```
