# ArtifactAssessment: Human Validation - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ArtifactAssessment: Human Validation**

## Example ArtifactAssessment: ArtifactAssessment: Human Validation

Profile: [Trust AI Human Oversight Assessment](StructureDefinition-trust-ai-human-oversight.md)

**date**: 2026-03-10 09:10:00+0000

**artifact**: [Diagnostic Report for '' for '->Anonymous Patient Female, DoB: 1965-06-15'](DiagnosticReport-dr-ai-diagnostic-report.md)

### Contents

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Summary** | **Classifier** | **Author** |
| * | The clinician reviewed the AI-generated diagnostic report and accepted its conclusion. | Human Validation | [PractitionerRole ](PractitionerRole-dr-practitioner-role.md) |

**workflowStatus**: Published



## Resource Content

```json
{
  "resourceType" : "ArtifactAssessment",
  "id" : "dr-human-assessment",
  "meta" : {
    "profile" : ["http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-human-oversight"]
  },
  "date" : "2026-03-10T09:10:00Z",
  "artifactReference" : {
    "reference" : "DiagnosticReport/dr-ai-diagnostic-report"
  },
  "content" : [{
    "summary" : "The clinician reviewed the AI-generated diagnostic report and accepted its conclusion.",
    "classifier" : [{
      "coding" : [{
        "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-human-oversight-cs",
        "code" : "human-validation",
        "display" : "Human Validation"
      }]
    }],
    "author" : {
      "reference" : "PractitionerRole/dr-practitioner-role"
    }
  }],
  "workflowStatus" : "published"
}

```
