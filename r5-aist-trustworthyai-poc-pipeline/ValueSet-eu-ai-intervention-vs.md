# Human Intervention Type ValueSet - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Human Intervention Type ValueSet**

## ValueSet: Human Intervention Type ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/ValueSet/eu-ai-intervention-vs | *Version*:0.1.0 |
| Active as of 2026-06-18 | *Computable Name*:EU_AI_Intervention_ValueSet |

 
Codes representing the type of human oversight or intervention (HL-03.1). 

 **References** 

* [EU AI Human Oversight Assessment](StructureDefinition-eu-ai-human-oversight.md)

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
  "id" : "eu-ai-intervention-vs",
  "url" : "http://example.org/fhir/eu-ai-transparency/ValueSet/eu-ai-intervention-vs",
  "version" : "0.1.0",
  "name" : "EU_AI_Intervention_ValueSet",
  "title" : "Human Intervention Type ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-18T11:52:19+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Codes representing the type of human oversight or intervention (HL-03.1).",
  "compose" : {
    "include" : [{
      "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
      "concept" : [{
        "code" : "human-override"
      },
      {
        "code" : "human-validation"
      },
      {
        "code" : "human-correction"
      }]
    }]
  }
}

```
