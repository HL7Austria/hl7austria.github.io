# HL7.AT.FHIR.MESSAGING.R5\Communication over directed messaging. - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Communication over directed messaging.**

## MessageDefinition: Communication over directed messaging. 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://fhir.hl7.at/fhir/ATMessaging/0.1.0/MessageDefinition/at-messaging-communication-message | *Version*:0.1.0 | |
| Draft as of 2026-01-21 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Computable Name*:ATMessagingCommunicationMessage |
| **Usage:**Jurisdiction: Austria | | |

 
Regulates the resources to be used in a directed message when transferring a Communication. 

**url**: [MessageDefinition Communication over directed messaging.](MessageDefinition-at-messaging-communication-message.md)

**version**: 0.1.0

**versionAlgorithm**: [Version Algorithm: semver](http://hl7.org/fhir/R5/codesystem-version-algorithm.html#version-algorithm-semver) (SemVer)

**name**: ATMessagingCommunicationMessage

**title**: Communication over directed messaging.

**status**: Draft

**date**: 2026-01-21

**publisher**: HL7® Austria, TC FHIR®

**contact**: HL7® Austria, TC FHIR®: [https://hl7.at/technische-komitees/tc-fhir/](https://hl7.at/technische-komitees/tc-fhir/),[tc-fhir@hl7.at](mailto:tc-fhir@hl7.at), Technical Committee for FHIR® at HL7® Austria: [tc-fhir@hl7.at](mailto:tc-fhir@hl7.at)

**description**: 

Regulates the resources to be used in a directed message when transferring a Communication.

### UseContexts

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | [UsageContextType: jurisdiction](http://terminology.hl7.org/7.1.0/CodeSystem-usage-context-type.html#usage-context-type-jurisdiction)(Jurisdiction) (version = 2.0.1 ) | Austria |

**event**: [AT Messaging Event Type: status](CodeSystem-at-messaging-event-type.md#at-messaging-event-type-status) (The message is sent to transfer the status or result of an ongoing message flow (e.g. acknowledgement, service status update, ...))

**category**: Currency

### Focus

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Code** | **Profile** | **Min** | **Max** |
| * | Communication | [AT Messaging Communication](StructureDefinition-at-messaging-communication.md) | 1 | 1 |

> **allowedResponse****message**: [Communication over directed messaging.](MessageDefinition-at-messaging-communication-message.md)**situation**: 

As soon as the receiving system has processed the message successfully and the communication is answered.


> **allowedResponse****message**: [Document transfer over directed messaging.](MessageDefinition-at-messaging-document-message.md)**situation**: 

As soon as the receiving system has processed the message successfully and a document is sent as a result or answer of the communication.




## Resource Content

```json
{
  "resourceType" : "MessageDefinition",
  "id" : "at-messaging-communication-message",
  "url" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/MessageDefinition/at-messaging-communication-message",
  "version" : "0.1.0",
  "versionAlgorithmCoding" : {
    "system" : "http://hl7.org/fhir/version-algorithm",
    "code" : "semver"
  },
  "name" : "ATMessagingCommunicationMessage",
  "title" : "Communication over directed messaging.",
  "status" : "draft",
  "date" : "2026-01-21",
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
  "description" : "Regulates the resources to be used in a directed message when transferring a Communication.",
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
  "eventCoding" : {
    "system" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/CodeSystem/at-messaging-event-type",
    "code" : "status"
  },
  "category" : "currency",
  "focus" : [{
    "code" : "Communication",
    "profile" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-communication",
    "min" : 1,
    "max" : "1"
  }],
  "allowedResponse" : [{
    "message" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/MessageDefinition/at-messaging-communication-message",
    "situation" : "As soon as the receiving system has processed the message successfully and the communication is answered."
  },
  {
    "message" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/MessageDefinition/at-messaging-document-message",
    "situation" : "As soon as the receiving system has processed the message successfully and a document is sent as a result or answer of the communication."
  }]
}

```
