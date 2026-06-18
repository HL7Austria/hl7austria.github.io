# EHDS Data Category ValueSet (Final Regulation 2025/327) - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EHDS Data Category ValueSet (Final Regulation 2025/327)**

## ValueSet: EHDS Data Category ValueSet (Final Regulation 2025/327) 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/ValueSet/ehds-data-category-vs | *Version*:0.1.0 |
| Active as of 2026-06-18 | *Computable Name*:EHDS_DataCategoryVS |

 
Mandatory categories of electronic health data for secondary use according to Art. 51 EHDS. 

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
  "id" : "ehds-data-category-vs",
  "url" : "http://example.org/fhir/eu-ai-transparency/ValueSet/ehds-data-category-vs",
  "version" : "0.1.0",
  "name" : "EHDS_DataCategoryVS",
  "title" : "EHDS Data Category ValueSet (Final Regulation 2025/327)",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-18T08:40:47+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Mandatory categories of electronic health data for secondary use according to Art. 51 EHDS.",
  "compose" : {
    "include" : [{
      "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
      "concept" : [{
        "code" : "ehr"
      },
      {
        "code" : "health-factors"
      },
      {
        "code" : "healthcare-resources"
      },
      {
        "code" : "pathogen-data"
      },
      {
        "code" : "admin-claims"
      },
      {
        "code" : "human-genomic"
      },
      {
        "code" : "molecular-omics"
      },
      {
        "code" : "device-generated-personal"
      },
      {
        "code" : "wellness-apps"
      },
      {
        "code" : "professional-status"
      },
      {
        "code" : "public-health-registry"
      },
      {
        "code" : "medical-mortality-registry"
      },
      {
        "code" : "clinical-trial"
      },
      {
        "code" : "medical-device-other"
      },
      {
        "code" : "medicinal-device-registry"
      },
      {
        "code" : "research-cohort-survey"
      },
      {
        "code" : "biobank"
      }]
    }]
  }
}

```
