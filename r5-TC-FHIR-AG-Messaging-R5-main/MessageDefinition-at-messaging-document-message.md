# HL7.AT.FHIR.MESSAGING.R5\Document transfer over directed messaging. - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Document transfer over directed messaging.**

## MessageDefinition: Document transfer over directed messaging. 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://fhir.hl7.at/fhir/ATMessaging/0.1.0/MessageDefinition/at-messaging-document-message | *Version*:0.1.0 | |
| Draft as of 2026-01-21 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Computable Name*:ATMessagingDocumentMessage |
| **Usage:**Jurisdiction: Austria | | |

 
Regulates the resources to be used in a directed message when transferring a document. 

**url**: [MessageDefinition Document transfer over directed messaging.](MessageDefinition-at-messaging-document-message.md)

**version**: 0.1.0

**versionAlgorithm**: [Version Algorithm: semver](http://hl7.org/fhir/R5/codesystem-version-algorithm.html#version-algorithm-semver) (SemVer)

**name**: ATMessagingDocumentMessage

**title**: Document transfer over directed messaging.

**status**: Draft

**date**: 2026-01-21

**publisher**: HL7® Austria, TC FHIR®

**contact**: HL7® Austria, TC FHIR®: [https://hl7.at/technische-komitees/tc-fhir/](https://hl7.at/technische-komitees/tc-fhir/),[tc-fhir@hl7.at](mailto:tc-fhir@hl7.at), Technical Committee for FHIR® at HL7® Austria: [tc-fhir@hl7.at](mailto:tc-fhir@hl7.at)

**description**: 

Regulates the resources to be used in a directed message when transferring a document.

### UseContexts

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | [UsageContextType: jurisdiction](http://terminology.hl7.org/7.1.0/CodeSystem-usage-context-type.html#usage-context-type-jurisdiction)(Jurisdiction) (version = 2.0.1 ) | Austria |

**event**: [AT Messaging Event Type: document](CodeSystem-at-messaging-event-type.md#at-messaging-event-type-document) (A document is sent.)

**category**: Consequence

> **focus****code**: DocumentReference**profile**: [MHD DocumentReference for Simplified Publish](https://profiles.ihe.net/ITI/MHD/5.0.0/StructureDefinition-IHE.MHD.SimplifiedPublish.DocumentReference.html)**min**: 1**max**: 1

> **focus****code**: Patient**profile**: [HL7® AT Core Patient Profile](http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/2.0.0/StructureDefinition-at-core-patient.html)**min**: 1**max**: 1

> **focus****code**: Encounter**min**: 0**max**: 1

> **allowedResponse****message**: [Communication over directed messaging.](MessageDefinition-at-messaging-communication-message.md)**situation**: 

As soon as the receiving system has processed the message successfully and further communication needed.


> **allowedResponse****message**: [Document transfer over directed messaging.](MessageDefinition-at-messaging-document-message.md)**situation**: 

As soon as the receiving system has processed the message successfully when the result of the ServiceRequest is available and can be transfered to the requesting party.




## Resource Content

```json
{
  "resourceType" : "MessageDefinition",
  "id" : "at-messaging-document-message",
  "url" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/MessageDefinition/at-messaging-document-message",
  "version" : "0.1.0",
  "versionAlgorithmCoding" : {
    "system" : "http://hl7.org/fhir/version-algorithm",
    "code" : "semver"
  },
  "name" : "ATMessagingDocumentMessage",
  "title" : "Document transfer over directed messaging.",
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
  "description" : "Regulates the resources to be used in a directed message when transferring a document.",
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
    "code" : "document"
  },
  "category" : "consequence",
  "focus" : [{
    "code" : "DocumentReference",
    "profile" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.SimplifiedPublish.DocumentReference",
    "min" : 1,
    "max" : "1"
  },
  {
    "code" : "Patient",
    "profile" : "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-patient",
    "min" : 1,
    "max" : "1"
  },
  {
    "code" : "Encounter",
    "min" : 0,
    "max" : "1"
  }],
  "allowedResponse" : [{
    "message" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/MessageDefinition/at-messaging-communication-message",
    "situation" : "As soon as the receiving system has processed the message successfully and further communication needed."
  },
  {
    "message" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/MessageDefinition/at-messaging-document-message",
    "situation" : "As soon as the receiving system has processed the message successfully when the result of the ServiceRequest is available and can be transfered to the requesting party."
  }]
}

```
