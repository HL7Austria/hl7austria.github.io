# Manufacturer: Aetheria HealthTech Systems - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Manufacturer: Aetheria HealthTech Systems**

## Example Organization: Manufacturer: Aetheria HealthTech Systems

Profile: [EU AI Responsible Organization](StructureDefinition-eu-ai-organization.md)

**name**: Aetheria HealthTech Systems Corp.

### Contacts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Purpose** | **Name** | **Telecom** |
| * | Patient | AI Safety & Vigilance Nexus | [+49 000 12345678](tel:+4900012345678) |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "org-aetheria-health",
  "meta" : {
    "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-organization"]
  },
  "name" : "Aetheria HealthTech Systems Corp.",
  "contact" : [{
    "purpose" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/contactentity-type",
        "code" : "PATINF"
      }]
    },
    "name" : [{
      "text" : "AI Safety & Vigilance Nexus"
    }],
    "telecom" : [{
      "system" : "phone",
      "value" : "+49 000 12345678"
    }]
  }]
}

```
