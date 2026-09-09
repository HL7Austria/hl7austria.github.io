# Trust AI Performance Metric Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Trust AI Performance Metric Code System**

## CodeSystem: Trust AI Performance Metric Code System 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-performance-metric-cs | *Version*:0.1.0 |
| Active as of 2026-09-09 | *Computable Name*:TrustAIPerformanceMetricCodeSystem |

 
Codes identifying performance characteristics used to document the evaluation of an AI system. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Trust AI Performance Metric Value Set](ValueSet-trust-ai-performance-metric-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "trust-ai-performance-metric-cs",
  "url" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-performance-metric-cs",
  "version" : "0.1.0",
  "name" : "TrustAIPerformanceMetricCodeSystem",
  "title" : "Trust AI Performance Metric Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-09T11:13:25+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Codes identifying performance characteristics used to document the evaluation of an AI system.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "accuracy",
    "display" : "Accuracy",
    "definition" : "The proportion of evaluated cases for which the AI system produced the correct result."
  },
  {
    "code" : "sensitivity",
    "display" : "Sensitivity",
    "definition" : "The proportion of relevant positive cases correctly identified by the AI system."
  },
  {
    "code" : "specificity",
    "display" : "Specificity",
    "definition" : "The proportion of relevant negative cases correctly identified by the AI system."
  },
  {
    "code" : "robustness",
    "display" : "Robustness",
    "definition" : "The ability of the AI system to maintain appropriate performance under variations, disturbances, or reasonably foreseeable conditions of use."
  }]
}

```
