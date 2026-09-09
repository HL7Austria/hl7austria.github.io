# Trust AI Involvement Value Set - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Trust AI Involvement Value Set**

## ValueSet: Trust AI Involvement Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/trust-ai-transparency/ValueSet/trust-ai-involvement-vs | *Version*:0.1.0 |
| Active as of 2026-09-09 | *Computable Name*:TrustAIInvolvementVS |

 
Codes used to classify how an AI system contributed to the content of a FHIR resource. 

 **References** 

* [Trust AI Data](StructureDefinition-trust-ai-data.md)

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
  "id" : "trust-ai-involvement-vs",
  "url" : "http://example.org/fhir/trust-ai-transparency/ValueSet/trust-ai-involvement-vs",
  "version" : "0.1.0",
  "name" : "TrustAIInvolvementVS",
  "title" : "Trust AI Involvement Value Set",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-09T11:13:25+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Codes used to classify how an AI system contributed to the content of a FHIR resource.",
  "compose" : {
    "include" : [{
      "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-involvement-cs"
    }]
  }
}

```
