# HL7.AT.FHIR.CORE.R4\HL7® AT Core ValueSet for the vbpk system - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7® AT Core ValueSet for the vbpk system**

## ValueSet: HL7® AT Core ValueSet for the vbpk system (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/ValueSet/at-core-valueset-vbpk | *Version*:2.1.0 | |
| Active as of 2026-06-12 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Computable Name*:HL7ATCoreValueSetvbPK |

 
HL7® AT Core ValueSet for the vbpk system 

 **References** 

* [HL7® AT Core Patient Profile](StructureDefinition-at-core-patient.md)
* [HL7® AT Core Practitioner Profile](StructureDefinition-at-core-practitioner.md)

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
  "id" : "at-core-valueset-vbpk",
  "url" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/ValueSet/at-core-valueset-vbpk",
  "version" : "2.1.0",
  "name" : "HL7ATCoreValueSetvbPK",
  "title" : "HL7® AT Core ValueSet for the vbpk system",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-06-12T11:22:20+00:00",
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
  "description" : "HL7® AT Core ValueSet for the vbpk system",
  "compose" : {
    "include" : [{
      "system" : "urn:ietf:rfc:3986",
      "concept" : [{
        "code" : "urn:oid:1.2.40.0.34.4.22.1",
        "display" : "vbPK-GH"
      },
      {
        "code" : "urn:oid:1.2.40.0.34.4.22.2",
        "display" : "vbPK-SV"
      },
      {
        "code" : "urn:oid:1.2.40.0.34.4.22.3",
        "display" : "vbPK-AS"
      }]
    }]
  }
}

```
