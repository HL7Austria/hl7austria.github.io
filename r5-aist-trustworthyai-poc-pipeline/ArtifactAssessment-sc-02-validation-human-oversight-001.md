# Assessment: Human Validation of AI Output - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Assessment: Human Validation of AI Output**

## Example ArtifactAssessment: Assessment: Human Validation of AI Output

Profile: [EU AI Act Human Oversight (HL)](StructureDefinition-eu-ai-human-oversight.md)

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
  "artifactReference" : {
    "reference" : "Observation/sc-02-validation-ai-observation-risk-001"
  },
  "content" : [{
    "summary" : "The simulated AI output was reviewed and accepted.",
    "classifier" : [{
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
        "code" : "human-validation",
        "display" : "Human Validation"
      }]
    }],
    "author" : {
      "extension" : [{
        "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-system-training-status",
        "valueBoolean" : true
      }],
      "reference" : "PractitionerRole/practitionerrole-reviewer-001"
    }
  }],
  "workflowStatus" : "published"
}

```
