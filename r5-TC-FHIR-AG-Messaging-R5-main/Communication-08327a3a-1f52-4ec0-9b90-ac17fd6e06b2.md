# HL7.AT.FHIR.MESSAGING.R5\Communication Example - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Communication Example**

## Example Communication: Communication Example

Profile: [AT Messaging Communication](StructureDefinition-at-messaging-communication.md)

**basedOn**: [CommunicationRequest: status = active; intent = plan](Bundle-63874621-5550-410a-b893-ca890614cf6e.md#urn-uuid-c7090292-dc27-4d90-a500-7e4110217947)

**status**: Stopped

### Payloads

| | |
| :--- | :--- |
| - | **Content[x]** |
| * | text/plain: RGVhciBEci4gSHViZXIsIHVuZm9ydHVuYXRlbHkgdGhpcyBzZXJ2aWNlIGlzIG5vdCBhdmFpbGFibGUgYXQgdGhlIG1vbWVudC4gS2luZCByZWdhcmRzLCBEci4gTWF5ZXI= |



## Resource Content

```json
{
  "resourceType" : "Communication",
  "id" : "08327a3a-1f52-4ec0-9b90-ac17fd6e06b2",
  "meta" : {
    "profile" : [
      "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-communication"
    ]
  },
  "basedOn" : [
    {
      "reference" : "urn:uuid:c7090292-dc27-4d90-a500-7e4110217947"
    }
  ],
  "status" : "stopped",
  "payload" : [
    {
      "contentAttachment" : {
        "contentType" : "text/plain",
        "data" : "RGVhciBEci4gSHViZXIsIHVuZm9ydHVuYXRlbHkgdGhpcyBzZXJ2aWNlIGlzIG5vdCBhdmFpbGFibGUgYXQgdGhlIG1vbWVudC4gS2luZCByZWdhcmRzLCBEci4gTWF5ZXI="
      }
    }
  ]
}

```
