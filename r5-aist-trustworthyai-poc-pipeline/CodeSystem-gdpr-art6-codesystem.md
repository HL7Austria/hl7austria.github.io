# GDPR Article 6 Legal Basis CodeSystem - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GDPR Article 6 Legal Basis CodeSystem**

## CodeSystem: GDPR Article 6 Legal Basis CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/CodeSystem/gdpr-art6-codesystem | *Version*:0.1.0 |
| Active as of 2026-06-18 | *Computable Name*:GDPRArt6CodeSystem |

 
Code system defining GDPR Article 6 legal bases relevant for documenting legal-basis metadata in AI-supported processing contexts. 

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
  "title" : "GDPR Article 6 Legal Basis CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-18T11:52:19+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Code system defining GDPR Article 6 legal bases relevant for documenting legal-basis metadata in AI-supported processing contexts.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "gdpr-art-6-1-a",
    "display" : "Consent (Art. 6(1)(a))"
  },
  {
    "code" : "gdpr-art-6-1-b",
    "display" : "Contract (Art. 6(1)(b))"
  },
  {
    "code" : "gdpr-art-6-1-c",
    "display" : "Legal Obligation (Art. 6(1)(c))"
  },
  {
    "code" : "gdpr-art-6-1-d",
    "display" : "Vital Interests (Art. 6(1)(d))"
  },
  {
    "code" : "gdpr-art-6-1-e",
    "display" : "Public Interest or Official Authority (Art. 6(1)(e))"
  },
  {
    "code" : "gdpr-art-6-1-f",
    "display" : "Legitimate Interests (Art. 6(1)(f))"
  }]
}

```
