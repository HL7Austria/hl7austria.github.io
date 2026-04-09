# HL7.AT.FHIR.MESSAGING.R5\AT Messaging Endpoint Type - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT Messaging Endpoint Type**

## CodeSystem: AT Messaging Endpoint Type 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://fhir.hl7.at/fhir/ATMessaging/0.1.0/CodeSystem/at-messaging-endpoint-type | *Version*:0.1.0 | |
| Draft as of 2026-04-09 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Computable Name*:ATMessagingEndpointType |
| **Usage:**Jurisdiction: Austria | | |

 
Endpoint Type Coding to encode Messaging Systems the message is transported over. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ATMessagingEndpointTypeVS](ValueSet-at-messaging-endpoint-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "at-messaging-endpoint-type",
  "url" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/CodeSystem/at-messaging-endpoint-type",
  "version" : "0.1.0",
  "name" : "ATMessagingEndpointType",
  "title" : "AT Messaging Endpoint Type",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-04-09T09:35:35+00:00",
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
  "description" : "Endpoint Type Coding to encode Messaging Systems the message is transported over.",
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
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "matrix",
    "display" : "matrix",
    "definition" : "Communication over matrix https://spec.matrix.org/"
  }]
}

```
