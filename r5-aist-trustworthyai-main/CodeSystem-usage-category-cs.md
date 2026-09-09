# Usage Category Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Usage Category Code System**

## CodeSystem: Usage Category Code System 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/trust-ai-transparency/CodeSystem/usage-category-cs | *Version*:0.1.0 |
| Active as of 2026-09-09 | *Computable Name*:UsageCategoryCodeSystem |

 
Codes distinguishing primary use from secondary use of electronic health data in the context of the European Health Data Space. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Usage Category Value Set](ValueSet-usage-category-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "usage-category-cs",
  "url" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/usage-category-cs",
  "version" : "0.1.0",
  "name" : "UsageCategoryCodeSystem",
  "title" : "Usage Category Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-09T11:13:25+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Codes distinguishing primary use from secondary use of electronic health data in the context of the European Health Data Space.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "primary-use",
    "display" : "Primary Use",
    "definition" : "Use of personal electronic health data for the provision of healthcare to the individual concerned."
  },
  {
    "code" : "secondary-use",
    "display" : "Secondary Use",
    "definition" : "Use of electronic health data for a permitted purpose other than the direct provision of healthcare to the individual concerned."
  }]
}

```
