# Communication: Patient Explanation - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Communication: Patient Explanation**

## Example Communication: Communication: Patient Explanation

Profile: [EU AI Patient Explanation Communication](StructureDefinition-eu-ai-patient-explanation.md)

**Patient AI Info Provided Flag**: true

**status**: Completed

**subject**: [Anonymous Patient Female, DoB: 1965-06-15](Patient-dr-patient.md)

**about**: [ArtifactAssessment: date = 2026-03-10 09:10:00+0000; artifact[x] = ->Diagnostic Report for '' for '->Anonymous Patient Female, DoB: 1965-06-15'; workflowStatus = published](ArtifactAssessment-dr-human-assessment.md)

**sent**: 2026-03-10 09:15:00+0000

**sender**: [PractitionerRole ](PractitionerRole-dr-practitioner-role.md)

### Payloads

| | |
| :--- | :--- |
| - | **Content[x]** |
| * | text/plain: VGhlIGRpYWdub3N0aWMgcmVwb3J0IHdh... |



## Resource Content

```json
{
  "resourceType" : "Communication",
  "id" : "dr-patient-communication",
  "meta" : {
    "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-patient-explanation"]
  },
  "extension" : [{
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/patient-ai-info-provided-flag",
    "valueBoolean" : true
  }],
  "status" : "completed",
  "subject" : {
    "reference" : "Patient/dr-patient"
  },
  "about" : [{
    "reference" : "ArtifactAssessment/dr-human-assessment"
  }],
  "sent" : "2026-03-10T09:15:00Z",
  "sender" : {
    "reference" : "PractitionerRole/dr-practitioner-role"
  },
  "payload" : [{
    "contentAttachment" : {
      "contentType" : "text/plain",
      "data" : "VGhlIGRpYWdub3N0aWMgcmVwb3J0IHdhcyBnZW5lcmF0ZWQgd2l0aCBBSSBzdXBwb3J0IGFuZCBzdWJzZXF1ZW50bHkgcmV2aWV3ZWQgYnkgYSBxdWFsaWZpZWQgY2xpbmljaWFuLg==",
      "title" : "Patient-facing AI explanation"
    }
  }]
}

```
