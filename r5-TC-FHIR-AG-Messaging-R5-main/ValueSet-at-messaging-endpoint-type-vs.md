# HL7.AT.FHIR.MESSAGING.R5\AT Messaging Endpoint Type ValueSet - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT Messaging Endpoint Type ValueSet**

## ValueSet: AT Messaging Endpoint Type ValueSet 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://fhir.hl7.at/fhir/ATMessaging/0.1.0/ValueSet/at-messaging-endpoint-type-vs | *Version*:0.1.0 | |
| Draft as of 2026-04-09 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Computable Name*:ATMessagingEndpointTypeVS |
| **Usage:**Jurisdiction: Austria | | |

 
ValueSet of Endpoint Type Codings. 

 **References** 

* [AT Messaging Endpoint](StructureDefinition-at-messaging-endpoint.md)

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
  "id" : "at-messaging-endpoint-type-vs",
  "url" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/ValueSet/at-messaging-endpoint-type-vs",
  "version" : "0.1.0",
  "name" : "ATMessagingEndpointTypeVS",
  "title" : "AT Messaging Endpoint Type ValueSet",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-04-09T10:04:08+00:00",
  "publisher" : "HL7® Austria, TC FHIR®",
  "contact" : [{
    "name" : "HL7® Austria, TC FHIR®",
    "telecom" : [{
      "system" : "url",
      "value" : "https://hl7.at/technische-komitees/tc-fhir/"
    },
    {
      "system" : "email",
      "value" : "tc-fhir@hl7.at"
    }]
  },
  {
    "name" : "Technical Committee for FHIR® at HL7® Austria",
    "telecom" : [{
      "system" : "email",
      "value" : "tc-fhir@hl7.at"
    }]
  }],
  "description" : "ValueSet of Endpoint Type Codings.",
  "useContext" : [{
    "code" : {
      "system" : "http://terminology.hl7.org/CodeSystem/usage-context-type",
      "version" : "2.0.1",
      "code" : "jurisdiction"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "urn:iso:std:iso:3166",
        "code" : "AT",
        "display" : "Austria"
      }]
    }
  }],
  "compose" : {
    "include" : [{
      "system" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/CodeSystem/at-messaging-endpoint-type"
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/endpoint-connection-type",
      "concept" : [{
        "code" : "hl7-fhir-msg"
      }]
    }]
  }
}

```
