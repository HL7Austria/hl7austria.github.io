# EU AI System Property Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EU AI System Property Code System**

## CodeSystem: EU AI System Property Code System 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-system-property-cs | *Version*:0.1.0 |
| Active as of 2026-09-03 | *Computable Name*:EUAISystemPropertyCodeSystem |

 
Codes identifying structured properties used to describe regulatory and operational characteristics of an AI system in Device.property. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eu-ai-system-property-cs",
  "url" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-system-property-cs",
  "version" : "0.1.0",
  "name" : "EUAISystemPropertyCodeSystem",
  "title" : "EU AI System Property Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-03T11:53:05+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Codes identifying structured properties used to describe regulatory and operational characteristics of an AI system in Device.property.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "ce-mark",
    "display" : "CE Marking Status",
    "definition" : "Indicates whether the AI system or relevant regulated product is documented as bearing a CE marking."
  },
  {
    "code" : "notified-body-id",
    "display" : "Notified Body Identifier",
    "definition" : "Identifies the notified body involved in the applicable conformity-assessment procedure, where relevant."
  },
  {
    "code" : "expected-lifetime",
    "display" : "Expected Lifetime",
    "definition" : "Identifies the expected operational lifetime of the AI system or software component."
  },
  {
    "code" : "intended-purpose",
    "display" : "Intended Purpose",
    "definition" : "Identifies the purpose for which the AI system is intended to be used according to the provider's documentation."
  },
  {
    "code" : "target-population",
    "display" : "Target Population",
    "definition" : "Identifies the population for which the AI system is intended or validated to be used."
  }]
}

```
