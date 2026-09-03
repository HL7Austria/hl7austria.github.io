# EHDS Secondary-Use Purpose Value Set - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EHDS Secondary-Use Purpose Value Set**

## ValueSet: EHDS Secondary-Use Purpose Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/ValueSet/ehds-secondary-use-purpose-vs | *Version*:0.1.0 |
| Active as of 2026-09-03 | *Computable Name*:EHDSSecondaryUsePurposeVS |

 
Purpose categories used to document the secondary use of electronic health data under the EHDS. 

 **References** 

* [AI Training Data Metadata](StructureDefinition-ai-training-data.md)
* [EHDS Secondary Use Purpose](StructureDefinition-ehds-secondary-use-purpose.md)

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
  "id" : "ehds-secondary-use-purpose-vs",
  "url" : "http://example.org/fhir/eu-ai-transparency/ValueSet/ehds-secondary-use-purpose-vs",
  "version" : "0.1.0",
  "name" : "EHDSSecondaryUsePurposeVS",
  "title" : "EHDS Secondary-Use Purpose Value Set",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-03T11:53:05+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Purpose categories used to document the secondary use of electronic health data under the EHDS.",
  "compose" : {
    "include" : [{
      "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/ehds-secondary-use-purpose-cs"
    }]
  }
}

```
