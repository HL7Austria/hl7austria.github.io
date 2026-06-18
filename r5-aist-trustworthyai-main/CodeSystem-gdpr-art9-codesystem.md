# GDPR Art 9 Exceptions - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GDPR Art 9 Exceptions**

## CodeSystem: GDPR Art 9 Exceptions 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/CodeSystem/gdpr-art9-codesystem | *Version*:0.1.0 |
| Active as of 2026-06-18 | *Computable Name*:GDPRArt9CodeSystem |

 
Codes representing exceptions for processing special categories of personal data according to GDPR Article 9. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [GDPR_Art9_ExceptionVS](ValueSet-gdpr-art9-exception-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "gdpr-art9-codesystem",
  "url" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/gdpr-art9-codesystem",
  "version" : "0.1.0",
  "name" : "GDPRArt9CodeSystem",
  "title" : "GDPR Art 9 Exceptions",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-18T08:40:47+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Codes representing exceptions for processing special categories of personal data according to GDPR Article 9.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
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
  }]
}

```
