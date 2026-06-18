# Deployer: St. Chronos Medical Center - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Deployer: St. Chronos Medical Center**

## Example Organization: Deployer: St. Chronos Medical Center

Profile: [EU AI Responsible Organization](StructureDefinition-eu-ai-organization.md)

**name**: St. Chronos Medical Center

### Contacts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Purpose** | **Name** | **Telecom** |
| * | Administrative | DPO: Mag. Lyra Solis | [datenschutz@chronos-medical.test](mailto:datenschutz@chronos-medical.test) |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "org-chronos-medical",
  "meta" : {
    "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-organization"]
  },
  "name" : "St. Chronos Medical Center",
  "contact" : [{
    "purpose" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/contactentity-type",
        "code" : "ADMIN"
      }]
    },
    "name" : [{
      "text" : "DPO: Mag. Lyra Solis"
    }],
    "telecom" : [{
      "system" : "email",
      "value" : "datenschutz@chronos-medical.test"
    }]
  }]
}

```
