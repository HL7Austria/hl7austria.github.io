# GDPR Article 9 Condition Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GDPR Article 9 Condition Code System**

## CodeSystem: GDPR Article 9 Condition Code System 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/CodeSystem/gdpr-art9-codesystem | *Version*:0.1.0 |
| Active as of 2026-09-02 | *Computable Name*:GDPRArt9CodeSystem |

 
Codes representing selected conditions in Article 9(2) GDPR under which special categories of personal data may be processed. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [GDPR Article 9 Condition Value Set](ValueSet-gdpr-art9-condition-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "gdpr-art9-codesystem",
  "url" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/gdpr-art9-codesystem",
  "version" : "0.1.0",
  "name" : "GDPRArt9CodeSystem",
  "title" : "GDPR Article 9 Condition Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T10:48:14+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Codes representing selected conditions in Article 9(2) GDPR under which special categories of personal data may be processed.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "gdpr-art-9-2-a",
    "display" : "Explicit Consent (Art. 9(2)(a))",
    "definition" : "The data subject has given explicit consent to the processing for one or more specified purposes, subject to applicable legal limitations."
  },
  {
    "code" : "gdpr-art-9-2-c",
    "display" : "Vital Interests (Art. 9(2)(c))",
    "definition" : "Processing is necessary to protect vital interests where the data subject is physically or legally incapable of giving consent."
  },
  {
    "code" : "gdpr-art-9-2-g",
    "display" : "Substantial Public Interest (Art. 9(2)(g))",
    "definition" : "Processing is necessary for reasons of substantial public interest on the basis of Union or Member State law and subject to appropriate safeguards."
  },
  {
    "code" : "gdpr-art-9-2-h",
    "display" : "Health or Social Care (Art. 9(2)(h))",
    "definition" : "Processing is necessary for preventive or occupational medicine, medical diagnosis, provision or management of health or social care, or related systems and services, subject to the applicable legal conditions."
  },
  {
    "code" : "gdpr-art-9-2-i",
    "display" : "Public Health (Art. 9(2)(i))",
    "definition" : "Processing is necessary for reasons of public interest in the area of public health on the basis of Union or Member State law and subject to appropriate safeguards."
  },
  {
    "code" : "gdpr-art-9-2-j",
    "display" : "Research and Statistics (Art. 9(2)(j))",
    "definition" : "Processing is necessary for archiving in the public interest, scientific or historical research, or statistical purposes, subject to Article 89(1) GDPR and an applicable legal basis."
  }]
}

```
