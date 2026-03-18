# HL7.AT.FHIR.MESSAGING.R5\AT Messaging Event Type - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT Messaging Event Type**

## CodeSystem: AT Messaging Event Type 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://fhir.hl7.at/fhir/ATMessaging/0.1.0/CodeSystem/at-messaging-event-type | *Version*:0.1.0 | |
| Draft as of 2026-03-18 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Computable Name*:ATMessagingEventType |
| **Usage:**Jurisdiction: Austria | | |

 
Event Coding for discriminating messages on the receiver. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ATMessagingEventTypeVS](ValueSet-at-messaging-event-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "at-messaging-event-type",
  "url" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/CodeSystem/at-messaging-event-type",
  "version" : "0.1.0",
  "name" : "ATMessagingEventType",
  "title" : "AT Messaging Event Type",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-03-18T15:56:08+00:00",
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
  "description" : "Event Coding for discriminating messages on the receiver.",
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
  "count" : 3,
  "concept" : [{
    "code" : "request",
    "display" : "Message to initiate a workflow to request an action or a communication.",
    "definition" : "Initial request for an action."
  },
  {
    "code" : "document",
    "display" : "A document is sent.",
    "definition" : "The transfer of a document is the main purpose of the message."
  },
  {
    "code" : "status",
    "display" : "The message is sent to transfer the status or result of an ongoing message flow (e.g. acknowledgement, service status update, ...)",
    "definition" : "The transfer of a status update as a response to another message is the main purpose of the message."
  }]
}

```
