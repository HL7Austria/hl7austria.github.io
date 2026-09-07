# Assessment: Human Override of AI Output (3) - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Assessment: Human Override of AI Output (3)**

## Example ArtifactAssessment: Assessment: Human Override of AI Output (3)

Profile: [EU AI Human Oversight Assessment](StructureDefinition-eu-ai-human-oversight.md)

**date**: 2026-03-01 10:20:00+0000

**artifact**: [Observation ](Observation-sc-03-override-ai-observation-risk-001.md)

### Contents

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Summary** | **Classifier** | **Author** |
| * | The clinician overrode the simulated low-risk AI output due to additional synthetic clinical concerns. | Human Override | [PractitionerRole ](PractitionerRole-practitionerrole-reviewer-001.md) |

**workflowStatus**: Published



## Resource Content

```json
{
  "resourceType" : "ArtifactAssessment",
  "id" : "sc-03-override-human-oversight-001",
  "meta" : {
    "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-human-oversight"]
  },
  "date" : "2026-03-01T10:20:00Z",
  "artifactReference" : {
    "reference" : "Observation/sc-03-override-ai-observation-risk-001"
  },
  "content" : [{
    "summary" : "The clinician overrode the simulated low-risk AI output due to additional synthetic clinical concerns.",
    "classifier" : [{
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-human-oversight-cs",
        "code" : "human-override",
        "display" : "Human Override"
      }]
    }],
    "author" : {
      "reference" : "PractitionerRole/practitionerrole-reviewer-001"
    }
  }],
  "workflowStatus" : "published"
}

```
