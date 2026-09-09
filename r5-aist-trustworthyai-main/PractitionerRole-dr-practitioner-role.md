# PractitionerRole: Diagnostic Reviewer - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PractitionerRole: Diagnostic Reviewer**

## Example PractitionerRole: PractitionerRole: Diagnostic Reviewer

Profile: [Trust AI Practitioner Role](StructureDefinition-trust-ai-practitionerrole.md)

**AI System-Specific Training Status**: true

**practitioner**: [Practitioner Dana Reviewer ](Practitioner-dr-practitioner.md)

**organization**: [Organization Example Diagnostic Center](Organization-dr-organization.md)

**code**: Human AI reviewer

**specialty**: Internal Medicine



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "dr-practitioner-role",
  "meta" : {
    "profile" : ["http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-practitionerrole"]
  },
  "extension" : [{
    "url" : "http://example.org/fhir/trust-ai-transparency/StructureDefinition/ai-system-training-status",
    "valueBoolean" : true
  }],
  "practitioner" : {
    "reference" : "Practitioner/dr-practitioner"
  },
  "organization" : {
    "reference" : "Organization/dr-organization"
  },
  "code" : [{
    "text" : "Human AI reviewer"
  }],
  "specialty" : [{
    "text" : "Internal Medicine"
  }]
}

```
