# EHDS Usage Category ValueSet - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EHDS Usage Category ValueSet**

## ValueSet: EHDS Usage Category ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/ValueSet/ehds-usage-category-vs | *Version*:0.1.0 |
| Active as of 2026-06-18 | *Computable Name*:EHDS_UsageCategoryVS |

 
Defines whether the data usage is primary care or secondary use. 

 **References** 

* [EHDS Usage Category](StructureDefinition-ehds-usage-category.md)

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
  "id" : "ehds-usage-category-vs",
  "url" : "http://example.org/fhir/eu-ai-transparency/ValueSet/ehds-usage-category-vs",
  "version" : "0.1.0",
  "name" : "EHDS_UsageCategoryVS",
  "title" : "EHDS Usage Category ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-18T08:40:47+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Defines whether the data usage is primary care or secondary use.",
  "compose" : {
    "include" : [{
      "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
      "concept" : [{
        "code" : "primary-use"
      },
      {
        "code" : "secondary-use"
      }]
    }]
  }
}

```
