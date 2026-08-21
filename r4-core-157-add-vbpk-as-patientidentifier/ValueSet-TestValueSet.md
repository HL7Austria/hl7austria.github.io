# HL7.AT.FHIR.CORE.R4\vbPK ValueSet - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **vbPK ValueSet**

## ValueSet: vbPK ValueSet (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/core/r4/ValueSet/TestValueSet | *Version*:2.1.0 | |
| Active as of 2026-08-21 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Computable Name*:TestValueSet |

 
ValueSet für die vbPKs 

 **References** 

* [HL7® AT Core Patient Profile](StructureDefinition-at-core-patient-enhanced.md)

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
  "id" : "TestValueSet",
  "url" : "https://fhir.hl7.at/core/r4/ValueSet/TestValueSet",
  "version" : "2.1.0",
  "name" : "TestValueSet",
  "title" : "vbPK ValueSet",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-08-21T10:22:16+00:00",
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
  "description" : "ValueSet für die vbPKs",
  "compose" : {
    "include" : [{
      "system" : "urn:ietf:rfc:3986",
      "concept" : [{
        "code" : "urn:oid:1.2.40.0.34.4.22.3",
        "display" : "vbPK AS oid"
      }]
    }]
  }
}

```
