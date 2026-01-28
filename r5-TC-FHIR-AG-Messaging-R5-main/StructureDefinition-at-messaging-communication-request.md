# HL7.AT.FHIR.MESSAGING.R5\AT Messaging CommunicationRequest - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT Messaging CommunicationRequest**

## Resource Profile: AT Messaging CommunicationRequest 

| | | | |
| :--- | :--- | :--- | :--- |
| *Official URL*:http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-communication-request | *Version*:0.1.0 | | |
| Draft as of 2026-01-28 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Realm:*![](assets/images/aut.svg) | *Computable Name*:ATMessagingCommunicationRequest |

 
CommunicationRequest to be used for all communication request messages transfered with the AT FHIR messaging. 

**Usages:**

* Refer to this Profile: [AT Messaging Communication](StructureDefinition-at-messaging-communication.md)
* Examples for this Profile: [CommunicationRequest/c7090292-dc27-4d90-a500-7e4110217947](CommunicationRequest-c7090292-dc27-4d90-a500-7e4110217947.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.messaging.r5|current/StructureDefinition/at-messaging-communication-request)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-messaging-communication-request.csv), [Excel](StructureDefinition-at-messaging-communication-request.xlsx), [Schematron](StructureDefinition-at-messaging-communication-request.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-messaging-communication-request",
  "url" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-communication-request",
  "version" : "0.1.0",
  "name" : "ATMessagingCommunicationRequest",
  "title" : "AT Messaging CommunicationRequest",
  "status" : "draft",
  "date" : "2026-01-28T12:34:00+00:00",
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
  "description" : "CommunicationRequest to be used for all communication request messages transfered with the AT FHIR messaging.",
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
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
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
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CommunicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CommunicationRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "CommunicationRequest",
        "path" : "CommunicationRequest"
      },
      {
        "id" : "CommunicationRequest.id",
        "path" : "CommunicationRequest.id",
        "min" : 1
      },
      {
        "id" : "CommunicationRequest.payload",
        "path" : "CommunicationRequest.payload",
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "CommunicationRequest.payload.content[x]",
        "path" : "CommunicationRequest.payload.content[x]",
        "type" : [
          {
            "code" : "Attachment",
            "profile" : [
              "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-communication-attachment"
            ]
          }
        ]
      },
      {
        "id" : "CommunicationRequest.note",
        "path" : "CommunicationRequest.note",
        "max" : "0"
      }
    ]
  }
}

```
