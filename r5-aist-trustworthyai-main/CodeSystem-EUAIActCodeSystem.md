# EU AI Act Custom Codes - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EU AI Act Custom Codes**

## CodeSystem: EU AI Act Custom Codes 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem | *Version*:0.1.0 |
| Active as of 2026-06-18 | *Computable Name*:EUAIActCodeSystem |

 
Central repository of legal and technical terms according to the EU AI Act. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EHDS_DataCategoryVS](ValueSet-ehds-data-category-vs.md)
* [EHDS_UsageCategoryVS](ValueSet-ehds-usage-category-vs.md)
* [EU_AI_DataQualityVS](ValueSet-eu-ai-data-quality-vs.md)
* [EU_AI_Intervention_ValueSet](ValueSet-eu-ai-intervention-vs.md)
* [EU_AI_PerformanceMetricVS](ValueSet-eu-ai-performance-metric-vs.md)
* [EUCaseSpecificIndicationVS](ValueSet-eu-case-specific-indication-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "EUAIActCodeSystem",
  "url" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
  "version" : "0.1.0",
  "name" : "EUAIActCodeSystem",
  "title" : "EU AI Act Custom Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-18T08:40:47+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Central repository of legal and technical terms according to the EU AI Act.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 54,
  "concept" : [{
    "code" : "ai-system",
    "display" : "AI System"
  },
  {
    "code" : "high-risk-ai",
    "display" : "High-Risk AI System"
  },
  {
    "code" : "gpai",
    "display" : "General Purpose AI"
  },
  {
    "code" : "model-card",
    "display" : "AI Model Card"
  },
  {
    "code" : "ai-generated",
    "display" : "AI Generated Result"
  },
  {
    "code" : "human-override",
    "display" : "Human Override"
  },
  {
    "code" : "human-validation",
    "display" : "Human Validation"
  },
  {
    "code" : "human-correction",
    "display" : "Human Correction"
  },
  {
    "code" : "ai-transparency-info",
    "display" : "AI Transparency Information"
  },
  {
    "code" : "informed-consent",
    "display" : "Informed Consent"
  },
  {
    "code" : "accuracy",
    "display" : "Accuracy"
  },
  {
    "code" : "sensitivity",
    "display" : "Sensitivity"
  },
  {
    "code" : "specificity",
    "display" : "Specificity"
  },
  {
    "code" : "triage",
    "display" : "Triage and Prioritization"
  },
  {
    "code" : "screening",
    "display" : "Screening"
  },
  {
    "code" : "second-opinion",
    "display" : "Second Opinion"
  },
  {
    "code" : "diagnostic-support",
    "display" : "Diagnostic Support"
  },
  {
    "code" : "treatment-planning",
    "display" : "Treatment Planning"
  },
  {
    "code" : "prognosis",
    "display" : "Prognostic Prediction"
  },
  {
    "code" : "ce-mark",
    "display" : "CE Mark",
    "definition" : "Indicates if the device has a CE mark."
  },
  {
    "code" : "notified-body-id",
    "display" : "Notified Body ID",
    "definition" : "Identifier of the notified body."
  },
  {
    "code" : "expected-lifetime",
    "display" : "Expected Lifetime",
    "definition" : "The expected lifetime of the AI system."
  },
  {
    "code" : "medical-purpose",
    "display" : "Medical Purpose",
    "definition" : "The intended medical purpose."
  },
  {
    "code" : "target-population",
    "display" : "Target Population",
    "definition" : "The intended target population."
  },
  {
    "code" : "primary-use",
    "display" : "Primary Use",
    "definition" : "Processing for direct patient care."
  },
  {
    "code" : "secondary-use",
    "display" : "Secondary Use",
    "definition" : "Processing for research, AI training, or policy making."
  },
  {
    "code" : "ehr",
    "display" : "Electronic Health Records (EHRs)",
    "definition" : "Electronic health data from electronic health records (Art. 51 1a)"
  },
  {
    "code" : "health-factors",
    "display" : "Health Determinants",
    "definition" : "Data impacting on health, including socioeconomic, environmental and behavioural determinants (Art. 51 1b)"
  },
  {
    "code" : "healthcare-resources",
    "display" : "Aggregated Healthcare Data",
    "definition" : "Aggregated data on healthcare needs, resources, access, and financing (Art. 51 1c)"
  },
  {
    "code" : "pathogen-data",
    "display" : "Pathogen Data",
    "definition" : "Data on pathogens impacting on human health (Art. 51 1d)"
  },
  {
    "code" : "admin-claims",
    "display" : "Administrative and Claims Data",
    "definition" : "Health-related administrative data, including claims and reimbursement data (Art. 51 1e)"
  },
  {
    "code" : "human-genomic",
    "display" : "Human Genomic Data",
    "definition" : "Human genetic, epigenomic and genomic data (Art. 51 1f)"
  },
  {
    "code" : "molecular-omics",
    "display" : "Molecular Omic Data",
    "definition" : "Other human molecular data, such as proteomic, transcriptomic, metabolomic, lipidomic and other omic data (Art. 51 1g)"
  },
  {
    "code" : "device-generated-personal",
    "display" : "Device-Generated Personal Data",
    "definition" : "Person-generated electronic health data automatically generated by medical devices (Art. 51 1h)"
  },
  {
    "code" : "wellness-apps",
    "display" : "Wellness Application Data",
    "definition" : "Data from wellness applications (Art. 51 1i)"
  },
  {
    "code" : "professional-status",
    "display" : "Healthcare Professional Data",
    "definition" : "Data on the professional status, specialization, and institution of healthcare professionals (Art. 51 1j)"
  },
  {
    "code" : "public-health-registry",
    "display" : "Public Health Registries",
    "definition" : "Data from population-wide health data registries (Art. 51 1k)"
  },
  {
    "code" : "medical-mortality-registry",
    "display" : "Medical and Mortality Registries",
    "definition" : "Data from medical registries and mortality registries (Art. 51 1l)"
  },
  {
    "code" : "clinical-trial",
    "display" : "Clinical Trial Data",
    "definition" : "Data from clinical trials, clinical studies, and performance studies (Art. 51 1m)"
  },
  {
    "code" : "medical-device-other",
    "display" : "Other Medical Device Data",
    "definition" : "Other health data from medical devices (Art. 51 1n)"
  },
  {
    "code" : "medicinal-device-registry",
    "display" : "Medicinal and Device Registries",
    "definition" : "Data from registries for medicinal products and medical devices (Art. 51 1o)"
  },
  {
    "code" : "research-cohort-survey",
    "display" : "Research Cohorts and Surveys",
    "definition" : "Data from research cohorts, questionnaires, and health-related surveys (Art. 51 1p)"
  },
  {
    "code" : "biobank",
    "display" : "Biobank Data",
    "definition" : "Health data from biobanks and associated databases (Art. 51 1q)"
  },
  {
    "code" : "representative",
    "display" : "Representative",
    "definition" : "Data is sufficiently representative of the target population."
  },
  {
    "code" : "error-free",
    "display" : "Error-free",
    "definition" : "Data is free of errors to the best extent possible."
  },
  {
    "code" : "complete",
    "display" : "Complete",
    "definition" : "Data is complete regarding the intended purpose."
  },
  {
    "code" : "gdpr-art-6-1-a",
    "display" : "Consent (Art. 6(1)(a))"
  },
  {
    "code" : "gdpr-art-6-1-b",
    "display" : "Contract (Art. 6(1)(b))"
  },
  {
    "code" : "gdpr-art-6-1-d",
    "display" : "Vital Interests (Art. 6(1)(d))"
  },
  {
    "code" : "gdpr-art-9-2-a",
    "display" : "Explicit Consent (Art. 9(2)(a))"
  },
  {
    "code" : "gdpr-art-9-2-h",
    "display" : "Health or Social Care (Art. 9(2)(h))"
  },
  {
    "code" : "gdpr-art-9-2-i",
    "display" : "Public Health (Art. 9(2)(i))"
  },
  {
    "code" : "gdpr-art-9-2-j",
    "display" : "Research (Art. 9(2)(j))"
  },
  {
    "code" : "eu-ai-database-id",
    "display" : "EU AI Database Identifier",
    "definition" : "Identifier for an AI system registration in the EU AI database or an equivalent AI system registry."
  }]
}

```
