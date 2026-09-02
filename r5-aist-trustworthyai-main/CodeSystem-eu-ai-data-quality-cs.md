# EU AI Data Quality Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EU AI Data Quality Code System**

## CodeSystem: EU AI Data Quality Code System 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-data-quality-cs | *Version*:0.1.0 |
| Active as of 2026-09-02 | *Computable Name*:EUAIDataQualityCodeSystem |

 
Codes describing assessed data-quality characteristics relevant to the development, validation, testing, or evaluation of an AI system. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EU AI Data Quality Value Set](ValueSet-eu-ai-data-quality-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eu-ai-data-quality-cs",
  "url" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-data-quality-cs",
  "version" : "0.1.0",
  "name" : "EUAIDataQualityCodeSystem",
  "title" : "EU AI Data Quality Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T10:48:14+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Codes describing assessed data-quality characteristics relevant to the development, validation, testing, or evaluation of an AI system.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "representative",
    "display" : "Representative",
    "definition" : "The data are assessed as sufficiently representative of the relevant population, setting, or intended use."
  },
  {
    "code" : "error-free",
    "display" : "Error-Controlled",
    "definition" : "The data were subject to measures intended to identify, reduce, and manage errors."
  },
  {
    "code" : "complete",
    "display" : "Complete",
    "definition" : "The data are assessed as sufficiently complete for the documented purpose."
  },
  {
    "code" : "relevant",
    "display" : "Relevant",
    "definition" : "The data are assessed as relevant to the documented purpose and intended use."
  }]
}

```
