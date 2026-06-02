# HL7.AT.FHIR.MESSAGING.R5\Receiver Actor - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Receiver Actor**

## ActorDefinition: Receiver Actor 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://fhir.hl7.at/fhir/ATMessaging/0.1.0/ActorDefinition/ReceiverActor | *Version*:0.1.0 | |
| Draft as of 2026-06-02 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Computable Name*:ReceiverActor |
| **Usage:**Jurisdiction: Austria | | |

 
The actor that receives, parses and disassembles the FHIR message. 



## Resource Content

```json
{
  "resourceType" : "ActorDefinition",
  "id" : "ReceiverActor",
  "url" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/ActorDefinition/ReceiverActor",
  "version" : "0.1.0",
  "name" : "ReceiverActor",
  "title" : "Receiver Actor",
  "status" : "draft",
  "date" : "2026-06-02T07:37:21+00:00",
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
  "description" : "The actor that receives, parses and disassembles the FHIR message.",
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
  "type" : "system"
}

```
