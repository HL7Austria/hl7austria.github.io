# EU AI Audit Entity Role Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EU AI Audit Entity Role Code System**

## CodeSystem: EU AI Audit Entity Role Code System 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-audit-entity-role | *Version*:0.1.0 |
| Draft as of 2026-09-03 | *Computable Name*:EUAIAuditEntityRoleCodeSystem |

 
Roles used to distinguish entities involved in an AI execution audit event. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EU AI Audit Entity Role Value Set](ValueSet-eu-ai-audit-entity-role-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eu-ai-audit-entity-role",
  "url" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-audit-entity-role",
  "version" : "0.1.0",
  "name" : "EUAIAuditEntityRoleCodeSystem",
  "title" : "EU AI Audit Entity Role Code System",
  "status" : "draft",
  "date" : "2026-09-03T11:53:05+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Roles used to distinguish entities involved in an AI execution audit event.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "reference-database",
    "display" : "Reference Database",
    "definition" : "An external database or knowledge source used during AI execution."
  },
  {
    "code" : "ai-output",
    "display" : "AI Output",
    "definition" : "A FHIR resource generated as output of the audited AI execution."
  }]
}

```
