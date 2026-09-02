# EU AI Contact Purpose Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EU AI Contact Purpose Code System**

## CodeSystem: EU AI Contact Purpose Code System 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-contact-purpose-cs | *Version*:0.1.0 |
| Active as of 2026-09-02 | *Computable Name*:EUAIContactPurposeCodeSystem |

 
Codes identifying organizational contact responsibilities relevant to data protection and AI-system governance. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eu-ai-contact-purpose-cs",
  "url" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-contact-purpose-cs",
  "version" : "0.1.0",
  "name" : "EUAIContactPurposeCodeSystem",
  "title" : "EU AI Contact Purpose Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T10:48:14+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Codes identifying organizational contact responsibilities relevant to data protection and AI-system governance.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "dpo",
    "display" : "Data Protection Officer",
    "definition" : "Contact point for the organization's data protection officer or data protection function."
  },
  {
    "code" : "ai-incident-reporting",
    "display" : "AI Incident Reporting Contact",
    "definition" : "Contact point designated to receive reports concerning AI-related incidents or serious incidents."
  }]
}

```
