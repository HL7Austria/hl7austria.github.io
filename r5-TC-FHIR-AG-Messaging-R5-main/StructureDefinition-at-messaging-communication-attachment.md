# HL7.AT.FHIR.MESSAGING.R5\AT Messaging Communication Attachment - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT Messaging Communication Attachment**

## Data Type Profile: AT Messaging Communication Attachment 

| | | | |
| :--- | :--- | :--- | :--- |
| *Official URL*:http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-communication-attachment | *Version*:0.1.0 | | |
| Draft as of 2026-01-28 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Realm:*![](assets/images/aut.svg) | *Computable Name*:ATMessagingCommunicationAttachment |

 
Simple Attachment with base64 encoded content for communication over directed messaging. 

**Usages:**

* Use this DataType Profile: [AT Messaging CommunicationRequest](StructureDefinition-at-messaging-communication-request.md) and [AT Messaging Communication](StructureDefinition-at-messaging-communication.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.messaging.r5|current/StructureDefinition/at-messaging-communication-attachment)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-messaging-communication-attachment.csv), [Excel](StructureDefinition-at-messaging-communication-attachment.xlsx), [Schematron](StructureDefinition-at-messaging-communication-attachment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-messaging-communication-attachment",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "do-translations"
    }
  ],
  "url" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-communication-attachment",
  "version" : "0.1.0",
  "name" : "ATMessagingCommunicationAttachment",
  "title" : "AT Messaging Communication Attachment",
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
  "description" : "Simple Attachment with base64 encoded content for communication over directed messaging.",
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 V2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Attachment",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Attachment",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Attachment",
        "path" : "Attachment"
      },
      {
        "id" : "Attachment.contentType",
        "path" : "Attachment.contentType",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Attachment.data",
        "path" : "Attachment.data",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Attachment.url",
        "path" : "Attachment.url",
        "max" : "0"
      }
    ]
  }
}

```
