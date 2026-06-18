# GDPR Art 6 Legal Basis - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GDPR Art 6 Legal Basis**

## CodeSystem: GDPR Art 6 Legal Basis 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/CodeSystem/gdpr-art6-codesystem | *Version*:0.1.0 |
| Active as of 2026-06-18 | *Computable Name*:GDPRArt6CodeSystem |

 
Codes representing legal bases for processing personal data according to GDPR Article 6. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [GDPR_Art6_LegalBasisVS](ValueSet-gdpr-art6-legal-basis-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "gdpr-art6-codesystem",
  "url" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/gdpr-art6-codesystem",
  "version" : "0.1.0",
  "name" : "GDPRArt6CodeSystem",
  "title" : "GDPR Art 6 Legal Basis",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-18T09:07:35+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Codes representing legal bases for processing personal data according to GDPR Article 6.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
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
  }]
}

```
