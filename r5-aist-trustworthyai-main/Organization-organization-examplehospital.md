# Operator Organization: Example Hospital - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Operator Organization: Example Hospital**

## Example Organization: Operator Organization: Example Hospital

Profile: [EU AI Responsible Organization](StructureDefinition-eu-ai-organization.md)

**active**: true

**type**: healthcare-provider

**name**: Example Hospital

### Contacts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Purpose** | **Name** | **Telecom** |
| * | Data Protection Officer | Data Protection Officer | [dpo@examplehospital.example](mailto:dpo@examplehospital.example) |
| * | AI Incident Reporting Contact | AI Incident Reporting Contact | [incidents@examplehospital.example](mailto:incidents@examplehospital.example) |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "organization-examplehospital",
  "meta" : {
    "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-organization"]
  },
  "active" : true,
  "type" : [{
    "text" : "healthcare-provider"
  }],
  "name" : "Example Hospital",
  "contact" : [{
    "purpose" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/contactentity-type",
        "code" : "ADMIN",
        "display" : "Administrative"
      }],
      "text" : "Data Protection Officer"
    },
    "name" : [{
      "text" : "Data Protection Officer"
    }],
    "telecom" : [{
      "system" : "email",
      "value" : "dpo@examplehospital.example",
      "use" : "work"
    }]
  },
  {
    "purpose" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/contactentity-type",
        "code" : "PATINF",
        "display" : "Patient"
      }],
      "text" : "AI Incident Reporting Contact"
    },
    "name" : [{
      "text" : "AI Incident Reporting Contact"
    }],
    "telecom" : [{
      "system" : "email",
      "value" : "incidents@examplehospital.example",
      "use" : "work"
    }]
  }]
}

```
