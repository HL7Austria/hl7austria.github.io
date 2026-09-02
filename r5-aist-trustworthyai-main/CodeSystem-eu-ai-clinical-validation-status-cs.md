# EU AI Clinical Validation Status Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EU AI Clinical Validation Status Code System**

## CodeSystem: EU AI Clinical Validation Status Code System 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-clinical-validation-status-cs | *Version*:0.1.0 |
| Active as of 2026-09-02 | *Computable Name*:EUAIClinicalValidationStatusCodeSystem |

 
Codes indicating the documented clinical validation status of an AI system for its intended clinical use. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EU AI Clinical Validation Status Value Set](ValueSet-eu-ai-clinical-validation-status-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eu-ai-clinical-validation-status-cs",
  "url" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-clinical-validation-status-cs",
  "version" : "0.1.0",
  "name" : "EUAIClinicalValidationStatusCodeSystem",
  "title" : "EU AI Clinical Validation Status Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T10:48:14+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Codes indicating the documented clinical validation status of an AI system for its intended clinical use.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "clinically-validated",
    "display" : "Clinically Validated",
    "definition" : "Clinical validation for the documented intended use has been completed."
  },
  {
    "code" : "not-clinically-validated",
    "display" : "Not Clinically Validated",
    "definition" : "Clinical validation for the documented intended use has not been completed."
  },
  {
    "code" : "validation-in-progress",
    "display" : "Validation In Progress",
    "definition" : "Clinical validation is ongoing and no final validation conclusion has yet been documented."
  },
  {
    "code" : "technical-validation-only",
    "display" : "Technical Validation Only",
    "definition" : "Technical verification or validation has been performed, but clinical validation for the intended use has not been completed."
  }]
}

```
