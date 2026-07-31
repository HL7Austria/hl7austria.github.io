# EHDS Secondary-Use Purpose Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EHDS Secondary-Use Purpose Code System**

## CodeSystem: EHDS Secondary-Use Purpose Code System 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/CodeSystem/ehds-secondary-use-purpose-cs | *Version*:0.1.0 |
| Active as of 2026-07-31 | *Computable Name*:EHDSSecondaryUsePurposeCodeSystem |

 
Codes representing permitted categories of purpose for the secondary use of electronic health data under the EHDS. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EHDSSecondaryUsePurposeVS](ValueSet-ehds-secondary-use-purpose-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ehds-secondary-use-purpose-cs",
  "url" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/ehds-secondary-use-purpose-cs",
  "version" : "0.1.0",
  "name" : "EHDSSecondaryUsePurposeCodeSystem",
  "title" : "EHDS Secondary-Use Purpose Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-31T11:07:29+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Codes representing permitted categories of purpose for the secondary use of electronic health data under the EHDS.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "public-health",
    "display" : "Public Health",
    "definition" : "Activities in the area of public health, including protection against serious cross-border threats to health and public-health surveillance."
  },
  {
    "code" : "policy-regulatory",
    "display" : "Policy-Making and Regulatory Activities",
    "definition" : "Public-sector policy-making, planning, supervision, or regulatory activities in the health or care sectors."
  },
  {
    "code" : "statistics",
    "display" : "Official Statistics",
    "definition" : "Preparation and production of official statistics relating to health or care."
  },
  {
    "code" : "education-teaching",
    "display" : "Education or Teaching",
    "definition" : "Education or teaching activities in the health or care sectors."
  },
  {
    "code" : "scientific-research",
    "display" : "Scientific Research",
    "definition" : "Scientific research related to health or care that contributes to public health or health-technology development."
  },
  {
    "code" : "development-innovation",
    "display" : "Development and Innovation",
    "definition" : "Development and innovation activities for products, services, or processes contributing to public health, healthcare, or care."
  },
  {
    "code" : "algorithm-training-testing",
    "display" : "Training, Testing and Evaluation of Algorithms",
    "definition" : "Training, testing, and evaluation of algorithms, including algorithms used in medical devices, in-vitro diagnostic medical devices, AI systems, or digital health applications."
  },
  {
    "code" : "care-improvement",
    "display" : "Improvement of Care Delivery",
    "definition" : "Activities aimed at improving healthcare delivery, treatment, or the management of health systems."
  }]
}

```
