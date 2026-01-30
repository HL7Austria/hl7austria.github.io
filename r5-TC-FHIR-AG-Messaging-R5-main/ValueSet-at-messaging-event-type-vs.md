# HL7.AT.FHIR.MESSAGING.R5\ATMessagingEventTypeVS - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ATMessagingEventTypeVS**

## ValueSet: ATMessagingEventTypeVS 

| | | | |
| :--- | :--- | :--- | :--- |
| *Official URL*:http://fhir.hl7.at/fhir/ATMessaging/0.1.0/ValueSet/at-messaging-event-type-vs | *Version*:0.1.0 | | |
| Draft as of 2026-01-30 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Realm:*![](assets/images/aut.svg) | *Computable Name*:ATMessagingEventTypeVS |

 
Extensible ValueSet consisting of the Message Event Type Codings. 

 **References** 

* [AT Messaging Message Header](StructureDefinition-at-messaging-message-header.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R5/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "at-messaging-event-type-vs",
  "url" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/ValueSet/at-messaging-event-type-vs",
  "version" : "0.1.0",
  "name" : "ATMessagingEventTypeVS",
  "status" : "draft",
  "date" : "2026-01-30T08:45:51+00:00",
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
  "description" : "Extensible ValueSet consisting of the Message Event Type Codings.",
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
  "compose" : {
    "include" : [
      {
        "system" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/CodeSystem/at-messaging-event-type"
      }
    ]
  }
}

```
