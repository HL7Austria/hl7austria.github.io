# Manufacturer Organization: ExampleMed AI GmbH - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Manufacturer Organization: ExampleMed AI GmbH**

## Example Organization: Manufacturer Organization: ExampleMed AI GmbH

Profile: [EU AI Responsible Organization](StructureDefinition-eu-ai-organization.md)

**active**: true

**type**: manufacturer

**name**: ExampleMed AI GmbH

### Contacts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Purpose** | **Name** | **Telecom** |
| * | Administrative |  | [contact@examplemed.example](mailto:contact@examplemed.example) |
| * | Data Protection Officer | Data Protection Officer | [dpo@examplemed.example](mailto:dpo@examplemed.example) |
| * | AI Incident Reporting Contact | AI Incident Reporting Contact | [incidents@examplemed.example](mailto:incidents@examplemed.example) |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "organization-examplemed",
  "meta" : {
    "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-organization"]
  },
  "active" : true,
  "type" : [{
    "text" : "manufacturer"
  }],
  "name" : "ExampleMed AI GmbH",
  "contact" : [{
    "purpose" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/contactentity-type",
        "code" : "ADMIN"
      }]
    },
    "telecom" : [{
      "system" : "email",
      "value" : "contact@examplemed.example",
      "use" : "work"
    }]
  },
  {
    "purpose" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-contact-purpose-cs",
        "code" : "dpo",
        "display" : "Data Protection Officer"
      }]
    },
    "name" : [{
      "text" : "Data Protection Officer"
    }],
    "telecom" : [{
      "system" : "email",
      "value" : "dpo@examplemed.example",
      "use" : "work"
    }]
  },
  {
    "purpose" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-contact-purpose-cs",
        "code" : "ai-incident-reporting",
        "display" : "AI Incident Reporting Contact"
      }]
    },
    "name" : [{
      "text" : "AI Incident Reporting Contact"
    }],
    "telecom" : [{
      "system" : "email",
      "value" : "incidents@examplemed.example",
      "use" : "work"
    }]
  }]
}

```
