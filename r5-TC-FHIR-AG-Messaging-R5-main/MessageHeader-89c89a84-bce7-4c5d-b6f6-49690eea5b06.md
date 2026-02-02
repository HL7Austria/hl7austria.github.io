# HL7.AT.FHIR.MESSAGING.R5\MessageHeader of an ad-hoc message sending a document. - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MessageHeader of an ad-hoc message sending a document.**

## Example MessageHeader: MessageHeader of an ad-hoc message sending a document.

Profile: [AT Messaging Message Header](StructureDefinition-at-messaging-message-header.md)

**event**: [AT Messaging Event Type: document](CodeSystem-at-messaging-event-type.md#at-messaging-event-type-document) (A document is sent.)

### Destinations

| | | |
| :--- | :--- | :--- |
| - | **Endpoint[x]** | **Receiver** |
| * | [Endpoint: status = active; connectionType = matrix; address = @huber:praxisdrhuber.example.at](Bundle-269f4c84-7762-47aa-b872-c4f927301485.md#urn-uuid-4707d4ab-0020-4cc9-8e0f-242f95ce31f3) | [Practitioner Hannah Huber ](Bundle-269f4c84-7762-47aa-b872-c4f927301485.md#urn-uuid-2d8fedd6-3ccf-4725-97b0-fa9e19cbd8fc) |

**sender**: [PractitionerRole Doctor](Bundle-269f4c84-7762-47aa-b872-c4f927301485.md#urn-uuid-f9ac6aa5-71b6-438b-a33b-b0b114d9deca)

**author**: [PractitionerRole Doctor](Bundle-269f4c84-7762-47aa-b872-c4f927301485.md#urn-uuid-f9ac6aa5-71b6-438b-a33b-b0b114d9deca)

### Sources

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Endpoint[x]** | **Name** | **Software** | **Version** | **Contact** |
| * | [Endpoint: status = active; connectionType = matrix; address = @internemed1:standort.krankenhaus.example.at](Bundle-269f4c84-7762-47aa-b872-c4f927301485.md#urn-uuid-caee7722-8340-4716-a36e-837dbc13ea75) | Fancy KIS | at.softwarecorp.health.kis | 2.0.0 | [kis.support@softwarecorp.at](mailto:kis.support@softwarecorp.at) |

**focus**: [DocumentReference: identifier = http://his.softwarecorp.at/identifier/his-patient#pat-123456 (use: usual, ); status = current; type = Internal medicine Outpatient Progress note; category = Progress note; facilityType = Government hospital; practiceSetting = Internal medicine; period = 2026-01-19 --> 2026-01-20; date = 2026-01-21 15:00:00+0200; securityLabel = normal](Bundle-269f4c84-7762-47aa-b872-c4f927301485.md#urn-uuid-a60faa01-38ff-40e8-8194-e395741875cb)

**definition**: [Document transfer over directed messaging.](MessageDefinition-at-messaging-document-message.md)



## Resource Content

```json
{
  "resourceType" : "MessageHeader",
  "id" : "89c89a84-bce7-4c5d-b6f6-49690eea5b06",
  "meta" : {
    "profile" : [
      "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-message-header"
    ]
  },
  "eventCoding" : {
    "system" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/CodeSystem/at-messaging-event-type",
    "code" : "document"
  },
  "destination" : [
    {
      "endpointReference" : {
        "reference" : "urn:uuid:4707d4ab-0020-4cc9-8e0f-242f95ce31f3"
      },
      "receiver" : {
        "reference" : "urn:uuid:2d8fedd6-3ccf-4725-97b0-fa9e19cbd8fc"
      }
    }
  ],
  "sender" : {
    "reference" : "urn:uuid:f9ac6aa5-71b6-438b-a33b-b0b114d9deca"
  },
  "author" : {
    "reference" : "urn:uuid:f9ac6aa5-71b6-438b-a33b-b0b114d9deca"
  },
  "source" : {
    "endpointReference" : {
      "reference" : "urn:uuid:caee7722-8340-4716-a36e-837dbc13ea75"
    },
    "name" : "Fancy KIS",
    "software" : "at.softwarecorp.health.kis",
    "version" : "2.0.0",
    "contact" : {
      "system" : "email",
      "value" : "kis.support@softwarecorp.at"
    }
  },
  "focus" : [
    {
      "reference" : "urn:uuid:a60faa01-38ff-40e8-8194-e395741875cb"
    }
  ],
  "definition" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/MessageDefinition/at-messaging-document-message"
}

```
