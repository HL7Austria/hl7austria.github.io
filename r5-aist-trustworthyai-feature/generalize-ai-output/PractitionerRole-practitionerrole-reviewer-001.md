# PractitionerRole: Human Reviewer - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PractitionerRole: Human Reviewer**

## Example PractitionerRole: PractitionerRole: Human Reviewer

Profile: [EU AI Practitioner Role](StructureDefinition-eu-ai-practitionerrole.md)

**AI System-Specific Training Status**: true

**practitioner**: [Practitioner Clinical Reviewer ](Practitioner-practitioner-001.md)

**organization**: [Organization Example Hospital](Organization-organization-examplehospital.md)

**code**: human-overseer

**specialty**: Internal Medicine



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "practitionerrole-reviewer-001",
  "meta" : {
    "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-practitionerrole"]
  },
  "extension" : [{
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-system-training-status",
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
