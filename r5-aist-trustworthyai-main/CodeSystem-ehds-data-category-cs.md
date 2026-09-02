# EHDS Data Category Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EHDS Data Category Code System**

## CodeSystem: EHDS Data Category Code System 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/CodeSystem/ehds-data-category-cs | *Version*:0.1.0 |
| Active as of 2026-09-02 | *Computable Name*:EHDSDataCategoryCodeSystem |

 
Codes representing categories of electronic health data that may be made available for secondary use under the EHDS. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EHDS Data Category Value Set](ValueSet-ehds-data-category-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ehds-data-category-cs",
  "url" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/ehds-data-category-cs",
  "version" : "0.1.0",
  "name" : "EHDSDataCategoryCodeSystem",
  "title" : "EHDS Data Category Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T10:48:14+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Codes representing categories of electronic health data that may be made available for secondary use under the EHDS.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 17,
  "concept" : [{
    "code" : "ehr",
    "display" : "Electronic Health Records",
    "definition" : "Electronic health data originating from electronic health records."
  },
  {
    "code" : "health-factors",
    "display" : "Health Determinant Data",
    "definition" : "Data concerning factors that influence health, including socioeconomic, environmental, and behavioural determinants."
  },
  {
    "code" : "healthcare-resources",
    "display" : "Healthcare Needs, Resources and Financing Data",
    "definition" : "Aggregated data concerning healthcare needs, allocated resources, access to healthcare, healthcare expenditure, and financing."
  },
  {
    "code" : "pathogen-data",
    "display" : "Pathogen Data",
    "definition" : "Data concerning pathogens that affect human health."
  },
  {
    "code" : "admin-claims",
    "display" : "Administrative and Claims Data",
    "definition" : "Health-related administrative data, including claims and reimbursement information."
  },
  {
    "code" : "human-genomic",
    "display" : "Human Genetic, Epigenomic and Genomic Data",
    "definition" : "Human genetic, epigenomic, and genomic data."
  },
  {
    "code" : "molecular-omics",
    "display" : "Human Molecular Data",
    "definition" : "Human molecular data, including proteomic, transcriptomic, metabolomic, lipidomic, and comparable omics data."
  },
  {
    "code" : "device-generated-personal",
    "display" : "Person-Generated Device Data",
    "definition" : "Personal electronic health data generated automatically through medical devices."
  },
  {
    "code" : "wellness-apps",
    "display" : "Wellness Application Data",
    "definition" : "Electronic health-related data generated through wellness applications."
  },
  {
    "code" : "professional-status",
    "display" : "Healthcare Professional Data",
    "definition" : "Data concerning the professional status, specialization, and institution of healthcare professionals involved in treatment."
  },
  {
    "code" : "public-health-registry",
    "display" : "Population-Based Health Registry Data",
    "definition" : "Data from population-based health registries."
  },
  {
    "code" : "medical-mortality-registry",
    "display" : "Medical and Mortality Registry Data",
    "definition" : "Data from medical registries and mortality registries."
  },
  {
    "code" : "clinical-trial",
    "display" : "Clinical Study and Investigation Data",
    "definition" : "Data from clinical trials, clinical studies, clinical investigations, and performance studies."
  },
  {
    "code" : "medical-device-other",
    "display" : "Other Medical Device Data",
    "definition" : "Other electronic health data generated through medical devices that are not represented by a more specific category."
  },
  {
    "code" : "medicinal-device-registry",
    "display" : "Medicinal Product and Medical Device Registry Data",
    "definition" : "Data from registries for medicinal products and medical devices."
  },
  {
    "code" : "research-cohort-survey",
    "display" : "Research Cohort, Questionnaire and Survey Data",
    "definition" : "Data from research cohorts, questionnaires, and health-related surveys."
  },
  {
    "code" : "biobank",
    "display" : "Biobank Data",
    "definition" : "Electronic health data from biobanks and associated databases."
  }]
}

```
