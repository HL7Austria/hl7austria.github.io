# HL7.AT.FHIR.MESSAGING.R5\AT Messaging Message Header - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT Messaging Message Header**

## Resource Profile: AT Messaging Message Header 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-message-header | *Version*:0.1.0 | |
| Draft as of 2026-04-09 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Computable Name*:ATMessagingMessageHeader |
| **Usage:**Jurisdiction: Austria | | |

 
MessageHeader to be used for all messages transfered with the AT FHIR messaging. 

**Usages:**

* Examples for this Profile: [MessageHeader/89c89a84-bce7-4c5d-b6f6-49690eea5b06](MessageHeader-89c89a84-bce7-4c5d-b6f6-49690eea5b06.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.messaging.r5|current/StructureDefinition/at-messaging-message-header)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-messaging-message-header.csv), [Excel](StructureDefinition-at-messaging-message-header.xlsx), [Schematron](StructureDefinition-at-messaging-message-header.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-messaging-message-header",
  "url" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-message-header",
  "version" : "0.1.0",
  "name" : "ATMessagingMessageHeader",
  "title" : "AT Messaging Message Header",
  "status" : "draft",
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
  "description" : "MessageHeader to be used for all messages transfered with the AT FHIR messaging.",
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
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MessageHeader",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MessageHeader",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MessageHeader",
      "path" : "MessageHeader"
    },
    {
      "id" : "MessageHeader.id",
      "path" : "MessageHeader.id",
      "min" : 1
    },
    {
      "id" : "MessageHeader.event[x]",
      "path" : "MessageHeader.event[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/ValueSet/at-messaging-event-type-vs"
      }
    },
    {
      "id" : "MessageHeader.event[x].system",
      "path" : "MessageHeader.event[x].system",
      "min" : 1
    },
    {
      "id" : "MessageHeader.event[x].code",
      "path" : "MessageHeader.event[x].code",
      "min" : 1
    },
    {
      "id" : "MessageHeader.destination",
      "path" : "MessageHeader.destination",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "MessageHeader.destination.endpoint[x]",
      "path" : "MessageHeader.destination.endpoint[x]",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-endpoint"]
      }]
    },
    {
      "id" : "MessageHeader.destination.receiver",
      "path" : "MessageHeader.destination.receiver",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-practitioner",
        "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-practitionerRole",
        "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-organization"]
      }]
    },
    {
      "id" : "MessageHeader.sender",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/ActorDefinition/SenderActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:handle"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/ActorDefinition/ReceiverActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "MessageHeader.sender",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-practitioner",
        "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-practitionerRole",
        "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-organization"]
      }]
    },
    {
      "id" : "MessageHeader.author",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/ActorDefinition/SenderActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:handle"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/ActorDefinition/ReceiverActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "MessageHeader.author",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-practitioner",
        "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-practitionerRole",
        "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-organization"]
      }]
    },
    {
      "id" : "MessageHeader.source.endpoint[x]",
      "path" : "MessageHeader.source.endpoint[x]",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-endpoint"]
      }]
    },
    {
      "id" : "MessageHeader.source.name",
      "path" : "MessageHeader.source.name",
      "min" : 1
    },
    {
      "id" : "MessageHeader.source.software",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/ActorDefinition/SenderActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "MessageHeader.source.software"
    },
    {
      "id" : "MessageHeader.source.version",
      "path" : "MessageHeader.source.version",
      "min" : 1
    },
    {
      "id" : "MessageHeader.source.contact",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/ActorDefinition/SenderActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "MessageHeader.source.contact"
    },
    {
      "id" : "MessageHeader.definition",
      "path" : "MessageHeader.definition",
      "min" : 1
    }]
  }
}

```
