# GDPR Article 9 Exception CodeSystem - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GDPR Article 9 Exception CodeSystem**

## CodeSystem: GDPR Article 9 Exception CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/CodeSystem/gdpr-art9-codesystem | *Version*:0.1.0 |
| Active as of 2026-06-18 | *Computable Name*:GDPRArt9CodeSystem |

 
Code system defining GDPR Article 9 exceptions relevant for documenting the processing context of special categories of personal data, including health data. 

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
  "title" : "GDPR Article 9 Exception CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-18T12:04:51+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Code system defining GDPR Article 9 exceptions relevant for documenting the processing context of special categories of personal data, including health data.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "gdpr-art-9-2-a",
    "display" : "Explicit Consent (Art. 9(2)(a))"
  },
  {
    "code" : "gdpr-art-9-2-c",
    "display" : "Vital Interests (Art. 9(2)(c))"
  },
  {
    "code" : "gdpr-art-9-2-g",
    "display" : "Substantial Public Interest (Art. 9(2)(g))"
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
