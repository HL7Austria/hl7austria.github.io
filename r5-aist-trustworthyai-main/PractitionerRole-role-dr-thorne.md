# Role: Dr. Thorne (Trained Overseer) - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Role: Dr. Thorne (Trained Overseer)**

## Example PractitionerRole: Role: Dr. Thorne (Trained Overseer)

Profile: [EU AI Act Human Overseer (PractitionerRole)](StructureDefinition-eu-ai-practitionerrole.md)

**AI System Specific Training**: true

**practitioner**: [Practitioner Aris Thorne ](Practitioner-doctor-aris-thorne.md)

**organization**: [Organization St. Chronos Medical Center](Organization-org-chronos-medical.md)

**code**: Doctor

**specialty**: Radiology



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "role-dr-thorne",
  "meta" : {
    "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-practitionerrole"]
  },
  "extension" : [{
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-system-training-status",
    "valueBoolean" : true
  }],
  "practitioner" : {
    "reference" : "Practitioner/doctor-aris-thorne"
  },
  "organization" : {
    "reference" : "Organization/org-chronos-medical"
  },
  "code" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/practitioner-role",
      "code" : "doctor",
      "display" : "Doctor"
    }]
  }],
  "specialty" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "394914008",
      "display" : "Radiology"
    }]
  }]
}

```
