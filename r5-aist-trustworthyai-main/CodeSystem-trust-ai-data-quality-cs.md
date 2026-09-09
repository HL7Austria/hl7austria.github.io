# Trust AI Data Quality Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Trust AI Data Quality Code System**

## CodeSystem: Trust AI Data Quality Code System 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-data-quality-cs | *Version*:0.1.0 |
| Active as of 2026-09-09 | *Computable Name*:TrustAIDataQualityCodeSystem |

 
Codes describing assessed data-quality characteristics relevant to the development, validation, testing, or evaluation of an AI system. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Trust AI Data Quality Value Set](ValueSet-trust-ai-data-quality-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "trust-ai-data-quality-cs",
  "url" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-data-quality-cs",
  "version" : "0.1.0",
  "name" : "TrustAIDataQualityCodeSystem",
  "title" : "Trust AI Data Quality Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-09T11:13:25+00:00",
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
