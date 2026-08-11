# HL7.AT.FHIR.CORE.R4\ValueSet for Austrian Funktionscodes Excerpt - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ValueSet for Austrian Funktionscodes Excerpt**

## ValueSet: ValueSet for Austrian Funktionscodes Excerpt (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/core/r4/ValueSet/at-funktionscode-vs | *Version*:2.1.0 | |
| Draft as of 2026-08-11 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Computable Name*:ATFunktionscodeVS |

 
ValueSet for Austrian Funktionscodes Excerpt 

 **References** 

* [HL7® AT Core HealthcareService Profile](StructureDefinition-at-core-HealthcareService.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "at-funktionscode-vs",
  "url" : "https://fhir.hl7.at/core/r4/ValueSet/at-funktionscode-vs",
  "version" : "2.1.0",
  "name" : "ATFunktionscodeVS",
  "title" : "ValueSet for Austrian Funktionscodes Excerpt",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-08-11T21:21:27+00:00",
  "publisher" : "HL7® Austria, TC FHIR®",
  "contact" : [{
    "name" : "HL7® Austria, TC FHIR®",
    "telecom" : [{
      "system" : "url",
      "value" : "https://hl7.at/technische-komitees/tc-fhir/"
    }]
  },
  {
    "name" : "Technical Committee for FHIR® at HL7® Austria",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:tc-fhir@hl7.at"
    }]
  }],
  "description" : "ValueSet for Austrian Funktionscodes Excerpt",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.hl7.at/core/r4/CodeSystem/at-funktionscode"
    }]
  }
}

```
