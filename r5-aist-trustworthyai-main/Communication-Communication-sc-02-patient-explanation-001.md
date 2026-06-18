# Communication: Patient-Facing AI Explanation - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Communication: Patient-Facing AI Explanation**

## Example Communication: Communication: Patient-Facing AI Explanation

Profile: [EU AI Patient Explanation Communication](StructureDefinition-eu-ai-patient-explanation.md)

**EU AI Act Explanation Requested Flag**: true

**status**: Completed

**subject**: [Anonymous Patient Female, DoB: 1959-04-12](Patient-patient-001.md)

**about**: [ArtifactAssessment: date = 2026-03-01 10:20:00+0000; artifact[x] = ->Observation ; workflowStatus = published](ArtifactAssessment-sc-02-validation-human-oversight-001.md)

**sent**: 2026-03-01 10:30:00+0000

**sender**: [PractitionerRole ](PractitionerRole-practitionerrole-reviewer-001.md)

### Payloads

| | |
| :--- | :--- |
| - | **Content[x]** |
| * | The patient received an explanation that AI supported the assessment and that the result was reviewed by a clinician. |



## Resource Content

```json
{
  "resourceType" : "Communication",
  "id" : "Communication-sc-02-patient-explanation-001",
  "meta" : {
    "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-patient-explanation"]
  },
  "extension" : [{
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-explanation-requested",
    "valueBoolean" : true
  }],
  "status" : "completed",
  "subject" : {
    "reference" : "Patient/patient-001"
  },
  "about" : [{
    "reference" : "ArtifactAssessment/sc-02-validation-human-oversight-001"
  }],
  "sent" : "2026-03-01T10:30:00Z",
  "sender" : {
    "reference" : "PractitionerRole/practitionerrole-reviewer-001"
  },
  "payload" : [{
    "contentCodeableConcept" : {
      "text" : "The patient received an explanation that AI supported the assessment and that the result was reviewed by a clinician."
    }
  }]
}

```
