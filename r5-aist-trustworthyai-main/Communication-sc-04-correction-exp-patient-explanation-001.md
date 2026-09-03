# Communication: Patient-Facing AI Explanation (4) - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Communication: Patient-Facing AI Explanation (4)**

## Example Communication: Communication: Patient-Facing AI Explanation (4)

Profile: [EU AI Patient Explanation Communication](StructureDefinition-eu-ai-patient-explanation.md)

**Patient AI Info Provided Flag**: true

**status**: Completed

**subject**: [Anonymous Patient Female, DoB: 1959-04-12](Patient-patient-001.md)

**about**: [ArtifactAssessment: date = 2026-03-01 10:20:00+0000; artifact[x] = ->Observation ; workflowStatus = published](ArtifactAssessment-sc-04-correction-exp-human-oversight-001.md)

**sent**: 2026-03-01 10:30:00+0000

**sender**: [PractitionerRole ](PractitionerRole-practitionerrole-reviewer-001.md)

### Payloads

| | |
| :--- | :--- |
| - | **Content[x]** |
| * | text/plain: VGhlIEFJLXN1cHBvcnRlZCBhc3Nlc3Nt... |



## Resource Content

```json
{
  "resourceType" : "Communication",
  "id" : "sc-04-correction-exp-patient-explanation-001",
  "meta" : {
    "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-patient-explanation"]
  },
  "extension" : [{
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/patient-ai-info-provided-flag",
    "valueBoolean" : true
  }],
  "status" : "completed",
  "subject" : {
    "reference" : "Patient/patient-001"
  },
  "about" : [{
    "reference" : "ArtifactAssessment/sc-04-correction-exp-human-oversight-001"
  }],
  "sent" : "2026-03-01T10:30:00Z",
  "sender" : {
    "reference" : "PractitionerRole/practitionerrole-reviewer-001"
  },
  "payload" : [{
    "contentAttachment" : {
      "contentType" : "text/plain",
      "data" : "VGhlIEFJLXN1cHBvcnRlZCBhc3Nlc3NtZW50IHdhcyByZXZpZXdlZCBieSBhIHF1YWxpZmllZCBjbGluaWNpYW4uIFRoZSBpbml0aWFsIEFJIHJlY29tbWVuZGF0aW9uIHdhcyBjb3JyZWN0ZWQgYmVmb3JlIHRoZSBmaW5hbCBjbGluaWNhbCBkZWNpc2lvbiB3YXMgbWFkZS4=",
      "title" : "Patient-facing AI explanation"
    }
  }]
}

```
