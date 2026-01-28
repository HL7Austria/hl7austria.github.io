# AT Messaging Endpoint - HL7® Austria TC FHIR® Messaging v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT Messaging Endpoint**

## Resource Profile: AT Messaging Endpoint 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-endpoint | *Version*:0.1.0 |
| Draft as of 2026-01-28 | *Computable Name*:ATMessagingEndpoint |

 
Endpoint for use in the Messaging systems for AT FHIR messaging. 

**Usages:**

* Refer to this Profile: [AT Messaging Message Header](StructureDefinition-at-messaging-message-header.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.messaging.r5|current/StructureDefinition/at-messaging-endpoint)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-messaging-endpoint.csv), [Excel](StructureDefinition-at-messaging-endpoint.xlsx), [Schematron](StructureDefinition-at-messaging-endpoint.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-messaging-endpoint",
  "url" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-endpoint",
  "version" : "0.1.0",
  "name" : "ATMessagingEndpoint",
  "title" : "AT Messaging Endpoint",
  "status" : "draft",
  "date" : "2026-01-28T09:37:24+00:00",
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
  "description" : "Endpoint for use in the Messaging systems for AT FHIR messaging.",
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
  "type" : "Endpoint",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Endpoint",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Endpoint",
        "path" : "Endpoint"
      },
      {
        "id" : "Endpoint.connectionType",
        "path" : "Endpoint.connectionType",
        "max" : "1",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/ValueSet/at-messaging-endpoint-type-vs"
        }
      },
      {
        "id" : "Endpoint.address",
        "path" : "Endpoint.address",
        "mustSupport" : true
      }
    ]
  }
}

```
