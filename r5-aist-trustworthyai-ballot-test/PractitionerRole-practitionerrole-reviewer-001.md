# PractitionerRole: Human Reviewer - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PractitionerRole: Human Reviewer**

## Example PractitionerRole: PractitionerRole: Human Reviewer

Profile: [Trust AI Practitioner Role](StructureDefinition-trust-ai-practitionerrole.md)

Clinical Reviewer: human-overseer at Example Hospital (healthcare-provider)

-------

| | |
| :--- | :--- |
| Practitioner: | [Clinical Reviewer](Practitioner-practitioner-001.md) |
| Organization: | [Example Hospital (healthcare-provider)](Organization-organization-examplehospital.md) |
| Role: | human-overseer |
| Specialty: | Internal Medicine |
| [AI System-Specific Training Status](StructureDefinition-ai-system-training-status.md) | true |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "practitionerrole-reviewer-001",
  "meta" : {
    "profile" : ["http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-practitionerrole"]
  },
  "extension" : [{
    "url" : "http://example.org/fhir/trust-ai-transparency/StructureDefinition/ai-system-training-status",
    "valueBoolean" : true
  }],
  "practitioner" : {
    "reference" : "Practitioner/practitioner-001"
  },
  "organization" : {
    "reference" : "Organization/organization-examplehospital"
  },
  "code" : [{
    "text" : "human-overseer"
  }],
  "specialty" : [{
    "text" : "Internal Medicine"
  }]
}

```
