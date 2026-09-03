# EU AI Human Oversight Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EU AI Human Oversight Code System**

## CodeSystem: EU AI Human Oversight Code System 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-human-oversight-cs | *Version*:0.1.0 |
| Active as of 2026-09-03 | *Computable Name*:EUAIHumanOversightCodeSystem |

 
Codes describing actions taken by a human reviewer in response to an AI-generated output or recommendation. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EU AI Human Oversight Action Value Set](ValueSet-eu-ai-human-oversight-action-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eu-ai-human-oversight-cs",
  "url" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-human-oversight-cs",
  "version" : "0.1.0",
  "name" : "EUAIHumanOversightCodeSystem",
  "title" : "EU AI Human Oversight Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-03T11:53:05+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Codes describing actions taken by a human reviewer in response to an AI-generated output or recommendation.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "human-validation",
    "display" : "Human Validation",
    "definition" : "A human reviewer assessed the AI output and accepted it without changing its substantive content."
  },
  {
    "code" : "human-override",
    "display" : "Human Override",
    "definition" : "A human reviewer rejected the AI output or recommendation."
  },
  {
    "code" : "human-correction",
    "display" : "Human Correction",
    "definition" : "A human reviewer corrected erroneous or incomplete AI-generated content while retaining the corrected result as the documented outcome."
  }]
}

```
