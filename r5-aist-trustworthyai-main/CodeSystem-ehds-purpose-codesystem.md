# EHDS Secondary Use Purpose CodeSystem - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EHDS Secondary Use Purpose CodeSystem**

## CodeSystem: EHDS Secondary Use Purpose CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/CodeSystem/ehds-purpose-codesystem | *Version*:0.1.0 |
| Active as of 2026-06-18 | *Computable Name*:EHDSPurposeCodeSystem |

 
Code system defining permitted EHDS secondary-use purposes relevant for documenting secondary use of electronic health data. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EHDS_SecondaryUsePurposeVS](ValueSet-ehds-secondary-use-purpose-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ehds-purpose-codesystem",
  "url" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/ehds-purpose-codesystem",
  "version" : "0.1.0",
  "name" : "EHDSPurposeCodeSystem",
  "title" : "EHDS Secondary Use Purpose CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-18T12:04:51+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Code system defining permitted EHDS secondary-use purposes relevant for documenting secondary use of electronic health data.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "public-health",
    "display" : "Public Health"
  },
  {
    "code" : "policy-regulatory",
    "display" : "Policy and Regulatory Activities"
  },
  {
    "code" : "statistics",
    "display" : "Statistics"
  },
  {
    "code" : "education-teaching",
    "display" : "Education or Teaching"
  },
  {
    "code" : "scientific-research",
    "display" : "Scientific Research"
  },
  {
    "code" : "development-innovation",
    "display" : "Development and Innovation"
  },
  {
    "code" : "algorithm-training-testing",
    "display" : "Training, Testing and Evaluation of Algorithms"
  },
  {
    "code" : "care-improvement",
    "display" : "Improvement of Care Delivery"
  }]
}

```
