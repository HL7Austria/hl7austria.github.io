# AI Data Quality ValueSet - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AI Data Quality ValueSet**

## ValueSet: AI Data Quality ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/ValueSet/eu-ai-data-quality-vs | *Version*:0.1.0 |
| Active as of 2026-06-18 | *Computable Name*:EU_AI_DataQualityVS |

 
Attributes describing the quality of training data. 

 **References** 

* [AI Training Data Metadata](StructureDefinition-ai-training-data.md)

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
  "id" : "eu-ai-data-quality-vs",
  "url" : "http://example.org/fhir/eu-ai-transparency/ValueSet/eu-ai-data-quality-vs",
  "version" : "0.1.0",
  "name" : "EU_AI_DataQualityVS",
  "title" : "AI Data Quality ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-18T09:07:35+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Attributes describing the quality of training data.",
  "compose" : {
    "include" : [{
      "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
      "concept" : [{
        "code" : "representative"
      },
      {
        "code" : "error-free"
      },
      {
        "code" : "complete"
      }]
    }]
  }
}

```
