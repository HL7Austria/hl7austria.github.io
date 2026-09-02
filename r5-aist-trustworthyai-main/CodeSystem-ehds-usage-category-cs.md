# EHDS Usage Category Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EHDS Usage Category Code System**

## CodeSystem: EHDS Usage Category Code System 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/CodeSystem/ehds-usage-category-cs | *Version*:0.1.0 |
| Active as of 2026-09-02 | *Computable Name*:EHDSUsageCategoryCodeSystem |

 
Codes distinguishing primary use from secondary use of electronic health data in the context of the European Health Data Space. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EHDS Usage Category Value Set](ValueSet-ehds-usage-category-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ehds-usage-category-cs",
  "url" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/ehds-usage-category-cs",
  "version" : "0.1.0",
  "name" : "EHDSUsageCategoryCodeSystem",
  "title" : "EHDS Usage Category Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T10:48:14+00:00",
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
