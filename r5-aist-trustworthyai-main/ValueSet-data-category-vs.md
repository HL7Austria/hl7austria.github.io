# Data Category Value Set - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Data Category Value Set**

## ValueSet: Data Category Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/trust-ai-transparency/ValueSet/data-category-vs | *Version*:0.1.0 |
| Active as of 2026-09-09 | *Computable Name*:DataCategoryVS |

 
Categories of electronic health data that may be documented for secondary-use and AI-development contexts. 

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
  "id" : "data-category-vs",
  "url" : "http://example.org/fhir/trust-ai-transparency/ValueSet/data-category-vs",
  "version" : "0.1.0",
  "name" : "DataCategoryVS",
  "title" : "Data Category Value Set",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-09T11:13:25+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Categories of electronic health data that may be documented for secondary-use and AI-development contexts.",
  "compose" : {
    "include" : [{
      "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/data-category-cs"
    }]
  }
}

```
