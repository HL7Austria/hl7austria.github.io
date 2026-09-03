# EU AI Artifact Type Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EU AI Artifact Type Code System**

## CodeSystem: EU AI Artifact Type Code System 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-artifact-type-cs | *Version*:0.1.0 |
| Active as of 2026-09-03 | *Computable Name*:EUAIArtifactTypeCodeSystem |

 
Codes identifying AI-related documentation artifacts represented by this implementation guide. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eu-ai-artifact-type-cs",
  "url" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-artifact-type-cs",
  "version" : "0.1.0",
  "name" : "EUAIArtifactTypeCodeSystem",
  "title" : "EU AI Artifact Type Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-03T11:53:05+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Codes identifying AI-related documentation artifacts represented by this implementation guide.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "model-card",
    "display" : "AI Model Card",
    "definition" : "Documentation describing an AI system or model, including its intended use, limitations, performance, validation, data, and governance information."
  }]
}

```
