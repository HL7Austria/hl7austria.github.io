# HL7.AT.FHIR.MESSAGING.R5\Sender Actor - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sender Actor**

## ActorDefinition: Sender Actor 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://fhir.hl7.at/fhir/ATMessaging/0.1.0/ActorDefinition/SenderActor | *Version*:0.1.0 | |
| Draft as of 2026-06-03 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Computable Name*:SenderActor |
| **Usage:**Jurisdiction: Austria | | |

 
The actor that assembles and submits the FHIR message. 



## Resource Content

```json
{
  "resourceType" : "ActorDefinition",
  "id" : "SenderActor",
  "url" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/ActorDefinition/SenderActor",
  "version" : "0.1.0",
  "name" : "SenderActor",
  "title" : "Sender Actor",
  "status" : "draft",
  "date" : "2026-06-03T07:41:19+00:00",
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
  "description" : "The actor that assembles and submits the FHIR message.",
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
