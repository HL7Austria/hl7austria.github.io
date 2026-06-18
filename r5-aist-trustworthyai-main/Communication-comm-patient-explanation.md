# Communication: Right to Explanation Fulfilled - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Communication: Right to Explanation Fulfilled**

## Example Communication: Communication: Right to Explanation Fulfilled

Profile: [EU AI Act Patient Right to Explanation](StructureDefinition-eu-ai-patient-explanation.md)

**EU AI Act Explanation Requested Flag**: false

**status**: Completed

**subject**: [Elias Vance Male, DoB: 1965-04-12](Patient-patient-elias-vance.md)

**about**: [ArtifactAssessment: date = 2026-04-08 14:05:00+0000; artifact[x] = ->Observation Nodule of lung (disorder); workflowStatus = submitted](ArtifactAssessment-oversight-dr-thorne-override.md)

**sent**: 2026-04-08 15:30:00+0000

**sender**: [PractitionerRole Doctor](PractitionerRole-role-dr-thorne.md)

### Payloads

| | |
| :--- | :--- |
| - | **Content[x]** |
| * | [DocumentReference: status = current; type = Laboratory report](DocumentReference-doc-patient-explanation.md) |



## Resource Content

```json
{
  "resourceType" : "Communication",
  "id" : "comm-patient-explanation",
  "meta" : {
    "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-patient-explanation"]
  },
  "extension" : [{
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-explanation-requested",
    "valueBoolean" : false
  }],
  "status" : "completed",
  "subject" : {
    "reference" : "Patient/patient-elias-vance"
  },
  "about" : [{
    "reference" : "ArtifactAssessment/oversight-dr-thorne-override"
  }],
  "sent" : "2026-04-08T15:30:00Z",
  "sender" : {
    "reference" : "PractitionerRole/role-dr-thorne"
  },
  "payload" : [{
    "contentReference" : {
      "reference" : "DocumentReference/doc-patient-explanation"
    }
  }]
}

```
