# Organization: Example Diagnostic Center - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Organization: Example Diagnostic Center**

## Example Organization: Organization: Example Diagnostic Center

Profile: [Trust AI Responsible Organization](StructureDefinition-trust-ai-organization.md)

**active**: true

**name**: Example Diagnostic Center

### Contacts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Purpose** | **Name** | **Telecom** |
| * | Administrative |  | [contact@diagnostic-center.example](mailto:contact@diagnostic-center.example) |
| * | Data Protection Officer | Data Protection Officer | [dpo@diagnostic-center.example](mailto:dpo@diagnostic-center.example) |
| * | AI Incident Reporting Contact | AI Incident Reporting Contact | [ai-incidents@diagnostic-center.example](mailto:ai-incidents@diagnostic-center.example) |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "dr-organization",
  "meta" : {
    "profile" : ["http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-organization"]
  },
  "active" : true,
  "name" : "Example Diagnostic Center",
  "contact" : [{
    "purpose" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/contactentity-type",
        "code" : "ADMIN"
      }]
    },
    "telecom" : [{
      "system" : "email",
      "value" : "contact@diagnostic-center.example"
    }]
  },
  {
    "purpose" : {
      "coding" : [{
        "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-contact-purpose-cs",
        "code" : "dpo",
        "display" : "Data Protection Officer"
      }]
    },
    "name" : [{
      "text" : "Data Protection Officer"
    }],
    "telecom" : [{
      "system" : "email",
      "value" : "dpo@diagnostic-center.example"
    }]
  },
  {
    "purpose" : {
      "coding" : [{
        "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-contact-purpose-cs",
        "code" : "ai-incident-reporting",
        "display" : "AI Incident Reporting Contact"
      }]
    },
    "name" : [{
      "text" : "AI Incident Reporting Contact"
    }],
    "telecom" : [{
      "system" : "email",
      "value" : "ai-incidents@diagnostic-center.example"
    }]
  }]
}

```
