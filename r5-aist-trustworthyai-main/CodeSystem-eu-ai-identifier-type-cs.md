# EU AI Identifier Type Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EU AI Identifier Type Code System**

## CodeSystem: EU AI Identifier Type Code System 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-identifier-type-cs | *Version*:0.1.0 |
| Active as of 2026-09-03 | *Computable Name*:EUAIIdentifierTypeCodeSystem |

 
Codes identifying regulatory identifier types associated with an AI system. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eu-ai-identifier-type-cs",
  "url" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-identifier-type-cs",
  "version" : "0.1.0",
  "name" : "EUAIIdentifierTypeCodeSystem",
  "title" : "EU AI Identifier Type Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-03T11:53:05+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Codes identifying regulatory identifier types associated with an AI system.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "eu-ai-registration-number",
    "display" : "EU AI Registration Number",
    "definition" : "Registration number assigned to an AI system in the EU database established under the EU AI Act, where such registration is applicable."
  }]
}

```
