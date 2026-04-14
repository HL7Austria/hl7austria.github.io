# HL7.AT.FHIR.MESSAGING.R5\MessageHeader of an ad-hoc message sending a questionnaire response. - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MessageHeader of an ad-hoc message sending a questionnaire response.**

## Example MessageHeader: MessageHeader of an ad-hoc message sending a questionnaire response.

Profile: [AT Messaging Message Header](StructureDefinition-at-messaging-message-header.md)

**event**: [AT Messaging Event Type: questionnaireResponse](CodeSystem-at-messaging-event-type.md#at-messaging-event-type-questionnaireResponse) (A questionnare response to a predefined questionnaire is sent.)

### Destinations

| | | |
| :--- | :--- | :--- |
| - | **Endpoint[x]** | **Receiver** |
| * | [Endpoint: status = active; connectionType = matrix; address = @internemed1:standort.krankenhaus.example.at](Bundle-269f4c84-7762-47aa-b872-c4f927301485.md#urn-uuid-caee7722-8340-4716-a36e-837dbc13ea75) | [Organization Krankenhaus am Standort GmbH](Bundle-269f4c84-7762-47aa-b872-c4f927301485.md#urn-uuid-ab9ca6ac-b114-43a4-90eb-96070c1824ad) |

**sender**: [Organization Krankenhaus am Standort GmbH](Bundle-269f4c84-7762-47aa-b872-c4f927301485.md#urn-uuid-ab9ca6ac-b114-43a4-90eb-96070c1824ad)

**author**: [Organization Krankenhaus am Standort GmbH](Bundle-269f4c84-7762-47aa-b872-c4f927301485.md#urn-uuid-ab9ca6ac-b114-43a4-90eb-96070c1824ad)

### Sources

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Endpoint[x]** | **Name** | **Software** | **Version** | **Contact** |
| * | [Endpoint: status = active; connectionType = matrix; address = @feedback:standort.krankenhaus.example.at](Bundle-c669729a-67af-453c-8b3f-ed05d754e506.md#urn-uuid-71998612-308f-4062-8d7e-318c1b1ab1cc) | My Medical Feedback App | at.softwarecorp.medical.feedback | 1.0.0 | [feedbackapp@softwarecorp.at](mailto:feedbackapp@softwarecorp.at) |

**focus**: [Response to Questionnaire 'http://feedbackapp.softwarecorp.at/fhir/Questionnaire/feedback' about 'Unspecified Subject'](Bundle-c669729a-67af-453c-8b3f-ed05d754e506.md#urn-uuid-f58b0623-84a5-446e-9ecc-1a6f553233de)

**definition**: [Questionnaire response transfer over directed messaging.](MessageDefinition-at-messaging-questionnaireresponse-message.md)



## Resource Content

```json
{
  "resourceType" : "MessageHeader",
  "id" : "7ea8b8eb-eeb3-4632-9a21-d6132fe093d6",
  "meta" : {
    "profile" : ["http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-message-header"]
  },
  "eventCoding" : {
    "system" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/CodeSystem/at-messaging-event-type",
    "code" : "questionnaireResponse"
  },
  "destination" : [{
    "endpointReference" : {
      "reference" : "urn:uuid:caee7722-8340-4716-a36e-837dbc13ea75"
    },
    "receiver" : {
      "reference" : "urn:uuid:ab9ca6ac-b114-43a4-90eb-96070c1824ad"
    }
  }],
  "sender" : {
    "reference" : "urn:uuid:ab9ca6ac-b114-43a4-90eb-96070c1824ad"
  },
  "author" : {
    "reference" : "urn:uuid:ab9ca6ac-b114-43a4-90eb-96070c1824ad"
  },
  "source" : {
    "endpointReference" : {
      "reference" : "urn:uuid:71998612-308f-4062-8d7e-318c1b1ab1cc"
    },
    "name" : "My Medical Feedback App",
    "software" : "at.softwarecorp.medical.feedback",
    "version" : "1.0.0",
    "contact" : {
      "system" : "email",
      "value" : "feedbackapp@softwarecorp.at"
    }
  },
  "focus" : [{
    "reference" : "urn:uuid:f58b0623-84a5-446e-9ecc-1a6f553233de"
  }],
  "definition" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/MessageDefinition/at-messaging-questionnaireresponse-message"
}

```
