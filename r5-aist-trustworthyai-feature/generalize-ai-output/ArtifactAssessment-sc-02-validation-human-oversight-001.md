# Assessment: Human Validation of AI Output (2) - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Assessment: Human Validation of AI Output (2)**

## Example ArtifactAssessment: Assessment: Human Validation of AI Output (2)

Profile: [EU AI Human Oversight Assessment](StructureDefinition-eu-ai-human-oversight.md)

**date**: 2026-03-01 10:20:00+0000

**artifact**: [Observation ](Observation-sc-02-validation-ai-observation-risk-001.md)

### Contents

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Summary** | **Classifier** | **Author** |
| * | The simulated AI output was reviewed and accepted. | Human Validation | [PractitionerRole ](PractitionerRole-practitionerrole-reviewer-001.md) |

**workflowStatus**: Published



## Resource Content

```json
{
  "resourceType" : "ArtifactAssessment",
  "id" : "sc-02-validation-human-oversight-001",
  "meta" : {
    "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-human-oversight"]
  },
  "date" : "2026-03-01T10:20:00Z",
  "artifactReference" : {
    "reference" : "Observation/sc-02-validation-ai-observation-risk-001"
  },
  "content" : [{
    "summary" : "The simulated AI output was reviewed and accepted.",
    "classifier" : [{
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-human-oversight-cs",
        "code" : "human-validation",
        "display" : "Human Validation"
      }]
    }],
    "author" : {
      "reference" : "PractitionerRole/practitionerrole-reviewer-001"
    }
  }],
  "workflowStatus" : "published"
}

```
