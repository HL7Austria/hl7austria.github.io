# Trust AI Case-Specific Indication Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Trust AI Case-Specific Indication Code System**

## CodeSystem: Trust AI Case-Specific Indication Code System 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-case-specific-indication-cs | *Version*:0.1.0 |
| Active as of 2026-09-09 | *Computable Name*:TrustAICaseSpecificIndicationCodeSystem |

 
Codes describing the clinical purpose for which an AI system was applied in an individual case. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Trust AI Case-Specific Indication Value Set](ValueSet-trust-ai-case-specific-indication-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "trust-ai-case-specific-indication-cs",
  "url" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-case-specific-indication-cs",
  "version" : "0.1.0",
  "name" : "TrustAICaseSpecificIndicationCodeSystem",
  "title" : "Trust AI Case-Specific Indication Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-09T11:13:25+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Codes describing the clinical purpose for which an AI system was applied in an individual case.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "triage",
    "display" : "Triage and Prioritization",
    "definition" : "Use of the AI system to support urgency assessment, prioritization, or routing."
  },
  {
    "code" : "screening",
    "display" : "Screening",
    "definition" : "Use of the AI system to identify individuals or findings that may require further assessment."
  },
  {
    "code" : "second-opinion",
    "display" : "Second Opinion",
    "definition" : "Use of the AI system to provide an additional assessment alongside a human clinical assessment."
  },
  {
    "code" : "diagnostic-support",
    "display" : "Diagnostic Support",
    "definition" : "Use of the AI system to support the identification or assessment of a diagnosis."
  },
  {
    "code" : "treatment-planning",
    "display" : "Treatment Planning",
    "definition" : "Use of the AI system to support selection, planning, or adaptation of treatment."
  },
  {
    "code" : "prognosis",
    "display" : "Prognostic Prediction",
    "definition" : "Use of the AI system to estimate a future clinical outcome, risk, or disease course."
  }]
}

```
