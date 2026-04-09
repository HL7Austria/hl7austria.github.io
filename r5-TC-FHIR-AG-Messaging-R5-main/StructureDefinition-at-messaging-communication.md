# HL7.AT.FHIR.MESSAGING.R5\AT Messaging Communication - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT Messaging Communication**

## Resource Profile: AT Messaging Communication 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-communication | *Version*:0.1.0 | |
| Draft as of 2026-04-09 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Computable Name*:ATMessagingCommunication |
| **Usage:**Jurisdiction: Austria | | |

 
Communication to be used for all communication messages transfered with the AT FHIR messaging. 

**Usages:**

* Examples for this Profile: [Communication/08327a3a-1f52-4ec0-9b90-ac17fd6e06b2](Communication-08327a3a-1f52-4ec0-9b90-ac17fd6e06b2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.messaging.r5|current/StructureDefinition/at-messaging-communication)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-messaging-communication.csv), [Excel](StructureDefinition-at-messaging-communication.xlsx), [Schematron](StructureDefinition-at-messaging-communication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-messaging-communication",
  "url" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-communication",
  "version" : "0.1.0",
  "name" : "ATMessagingCommunication",
  "title" : "AT Messaging Communication",
  "status" : "draft",
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
  "description" : "Communication to be used for all communication messages transfered with the AT FHIR messaging.",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Communication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Communication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Communication",
      "path" : "Communication"
    },
    {
      "id" : "Communication.id",
      "path" : "Communication.id",
      "min" : 1
    },
    {
      "id" : "Communication.basedOn",
      "path" : "Communication.basedOn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-communication-request"]
      }]
    },
    {
      "id" : "Communication.payload",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
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
      "path" : "Communication.payload",
      "max" : "1"
    },
    {
      "id" : "Communication.payload.content[x]",
      "path" : "Communication.payload.content[x]",
      "type" : [{
        "code" : "Attachment",
        "profile" : ["http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-communication-attachment"]
      }]
    },
    {
      "id" : "Communication.note",
      "path" : "Communication.note",
      "max" : "0"
    }]
  }
}

```
