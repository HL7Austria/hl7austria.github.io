# HL7.AT.FHIR.MESSAGING.R5\Artifacts Summary - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Requirements: Actor Definitions 

The following artifacts define the types of individuals and/or systems that will interact as part of the use cases covered by this implementation guide.

| | |
| :--- | :--- |
| [Receiver Actor](ActorDefinition-ReceiverActor.md) | The actor that receives, parses and disassembles the FHIR message. |
| [Sender Actor](ActorDefinition-SenderActor.md) | The actor that assembles and submits the FHIR message. |

### Behavior: Message Definitions 

These define the types of messages that can be sent and/or received by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Communication over directed messaging.](MessageDefinition-at-messaging-communication-message.md) | Regulates the resources to be used in a directed message when transferring a Communication. |
| [Communication request over directed messaging.](MessageDefinition-at-messaging-communicationrequest-message.md) | Regulates the resources to be used in a directed message when performing a CommunicationRequest. |
| [Document transfer over directed messaging.](MessageDefinition-at-messaging-document-message.md) | Regulates the resources to be used in a directed message when transferring a document. |
| [Service request over directed messaging.](MessageDefinition-at-messaging-servicerequest-message.md) | Regulates the resources to be used in a directed message when performing a ServiceRequest. |
| [Service status update over directed messaging.](MessageDefinition-at-messaging-service-status-message.md) | Regulates the resources to be used in a directed message when transferring a task status update of a ServiceRequest. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AT Messaging Communication](StructureDefinition-at-messaging-communication.md) | Communication to be used for all communication messages transfered with the AT FHIR messaging. |
| [AT Messaging CommunicationRequest](StructureDefinition-at-messaging-communication-request.md) | CommunicationRequest to be used for all communication request messages transfered with the AT FHIR messaging. |
| [AT Messaging Endpoint](StructureDefinition-at-messaging-endpoint.md) | Endpoint for use in the Messaging systems for AT FHIR messaging. |
| [AT Messaging Message Bundle](StructureDefinition-at-messaging-bundle.md) | MessageBundle to be used for all messages transfered with the AT FHIR messaging. |
| [AT Messaging Message Header](StructureDefinition-at-messaging-message-header.md) | MessageHeader to be used for all messages transfered with the AT FHIR messaging. |
| [AT Messaging Task](StructureDefinition-at-messaging-task.md) | Task to be used for all service status messages transfered with the AT FHIR messaging. |

### Structures: Data Type Profiles 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AT Messaging Communication Attachment](StructureDefinition-at-messaging-communication-attachment.md) | Simple Attachment with base64 encoded content for communication over directed messaging. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AT Message Event Type ValueSet](ValueSet-at-messaging-event-type-vs.md) | Extensible ValueSet consisting of the Message Event Type Codings. |
| [AT Messaging Endpoint Type ValueSet](ValueSet-at-messaging-endpoint-type-vs.md) | ValueSet of Endpoint Type Codings. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AT Messaging Endpoint Type](CodeSystem-at-messaging-endpoint-type.md) | Endpoint Type Coding to encode Messaging Systems the message is transported over. |
| [AT Messaging Event Type](CodeSystem-at-messaging-event-type.md) | Event Coding for discriminating messages on the receiver. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Ad-hoc message of Doctors note](Bundle-269f4c84-7762-47aa-b872-c4f927301485.md) | Doctors note as ad-hoc submitted message (without previous request). |
| [Communication Example](Communication-08327a3a-1f52-4ec0-9b90-ac17fd6e06b2.md) | Plain text message that kindly rejects a previous communication request. |
| [CommunicationRequest for a consultation document](CommunicationRequest-c7090292-dc27-4d90-a500-7e4110217947.md) | Plain Text communication request for a consult document. |
| [Consult communication](Bundle-63874621-5550-410a-b893-ca890614cf6e.md) | Consultation document rejection as CommunicationRequest message. |
| [Consult request](Bundle-6df9d997-d34a-448b-944e-8721c49e0939.md) | Consult request as CommunicationRequest message. |
| [Lab ServiceRequest](ServiceRequest-81fd7dbf-5207-4bc5-b7df-89e97dcbbb79.md) | Service Request for a Blood Test. |
| [Lab request](Bundle-96beaf3e-6e2f-40f4-b1d3-02b19c984fb1.md) | Lab request as ServiceRequest message. |
| [Lab status update](Bundle-ab66186f-9d91-44b9-8459-bdee4e850bac.md) | Lab status update as service status update message. |
| [MessageHeader of an ad-hoc message sending a document.](MessageHeader-89c89a84-bce7-4c5d-b6f6-49690eea5b06.md) | Message header for sending a doctor's note document from a HIS to a GP software without prior request. |

