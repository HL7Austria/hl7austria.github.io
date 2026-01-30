# HL7.AT.FHIR.MESSAGING.R5\ATMessagingEventType - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ATMessagingEventType**

## CodeSystem: ATMessagingEventType 

| | | | |
| :--- | :--- | :--- | :--- |
| *Official URL*:http://fhir.hl7.at/fhir/ATMessaging/0.1.0/CodeSystem/at-messaging-event-type | *Version*:0.1.0 | | |
| Draft as of 2026-01-30 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Realm:*![](assets/images/aut.svg) | *Computable Name*:ATMessagingEventType |

 
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
  "status" : "draft",
  "date" : "2026-01-30T08:45:51+00:00",
  "publisher" : "HL7® Austria, TC FHIR®",
  "contact" : [
    {
      "name" : "HL7® Austria, TC FHIR®",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://hl7.at/technische-komitees/tc-fhir/"
        },
        {
          "system" : "email",
          "value" : "tc-fhir@hl7.at"
        }
      ]
    },
    {
      "name" : "Technical Committee for FHIR® at HL7® Austria",
      "telecom" : [
        {
          "system" : "email",
          "value" : "tc-fhir@hl7.at"
        }
      ]
    }
  ],
  "description" : "Event Coding for discriminating messages on the receiver.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "AT",
          "display" : "Austria"
        }
      ]
    }
  ],
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
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
    }
  ]
}

```
