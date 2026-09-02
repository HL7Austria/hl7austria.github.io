# GDPR Article 6 Legal Basis Value Set - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GDPR Article 6 Legal Basis Value Set**

## ValueSet: GDPR Article 6 Legal Basis Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/ValueSet/gdpr-art6-legal-basis-vs | *Version*:0.1.0 |
| Active as of 2026-09-02 | *Computable Name*:GDPRArt6LegalBasisVS |

 
Legal bases listed in Article 6(1) GDPR for documenting the asserted lawful basis for processing personal data. 

 **References** 

* [EU AI Provenance](StructureDefinition-eu-ai-provenance.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R5/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "gdpr-art6-legal-basis-vs",
  "url" : "http://example.org/fhir/eu-ai-transparency/ValueSet/gdpr-art6-legal-basis-vs",
  "version" : "0.1.0",
  "name" : "GDPRArt6LegalBasisVS",
  "title" : "GDPR Article 6 Legal Basis Value Set",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T10:48:14+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Legal bases listed in Article 6(1) GDPR for documenting the asserted lawful basis for processing personal data.",
  "compose" : {
    "include" : [{
      "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/gdpr-art6-codesystem"
    }]
  }
}

```
