# GDPR Art 9 Exception for AI Health Data - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GDPR Art 9 Exception for AI Health Data**

## ValueSet: GDPR Art 9 Exception for AI Health Data 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/ValueSet/gdpr-art9-exception-vs | *Version*:0.1.0 |
| Draft as of 2026-06-18 | *Computable Name*:GDPR_Art9_ExceptionVS |

 
Value set including GDPR Article 9 exceptions relevant for documenting the processing of special categories of personal data, including health data. 

 **References** 

* [EU AI Act Provenance (Human-in-the-Loop)](StructureDefinition-eu-ai-provenance.md)

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
  "id" : "gdpr-art9-exception-vs",
  "url" : "http://example.org/fhir/eu-ai-transparency/ValueSet/gdpr-art9-exception-vs",
  "version" : "0.1.0",
  "name" : "GDPR_Art9_ExceptionVS",
  "title" : "GDPR Art 9 Exception for AI Health Data",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-06-18T08:40:47+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Value set including GDPR Article 9 exceptions relevant for documenting the processing of special categories of personal data, including health data.",
  "compose" : {
    "include" : [{
      "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/gdpr-art9-codesystem"
    }]
  }
}

```
