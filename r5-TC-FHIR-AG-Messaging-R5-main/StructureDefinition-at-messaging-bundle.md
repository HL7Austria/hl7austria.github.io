# HL7.AT.FHIR.MESSAGING.R5\AT Messaging Message Bundle - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT Messaging Message Bundle**

## Resource Profile: AT Messaging Message Bundle 

| | | | |
| :--- | :--- | :--- | :--- |
| *Official URL*:http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-bundle | *Version*:0.1.0 | | |
| Draft as of 2026-01-30 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Realm:*![](assets/images/aut.svg) | *Computable Name*:ATMessagingBundle |

 
MessageBundle to be used for all messages transfered with the AT FHIR messaging. 

**Usages:**

* Examples for this Profile: [Bundle/269f4c84-7762-47aa-b872-c4f927301485](Bundle-269f4c84-7762-47aa-b872-c4f927301485.md), [Bundle/63874621-5550-410a-b893-ca890614cf6e](Bundle-63874621-5550-410a-b893-ca890614cf6e.md), [Bundle/6df9d997-d34a-448b-944e-8721c49e0939](Bundle-6df9d997-d34a-448b-944e-8721c49e0939.md), [Bundle/96beaf3e-6e2f-40f4-b1d3-02b19c984fb1](Bundle-96beaf3e-6e2f-40f4-b1d3-02b19c984fb1.md) and [Bundle/ab66186f-9d91-44b9-8459-bdee4e850bac](Bundle-ab66186f-9d91-44b9-8459-bdee4e850bac.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.messaging.r5|current/StructureDefinition/at-messaging-bundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-messaging-bundle.csv), [Excel](StructureDefinition-at-messaging-bundle.xlsx), [Schematron](StructureDefinition-at-messaging-bundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-messaging-bundle",
  "url" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-bundle",
  "version" : "0.1.0",
  "name" : "ATMessagingBundle",
  "title" : "AT Messaging Message Bundle",
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
  "description" : "MessageBundle to be used for all messages transfered with the AT FHIR messaging.",
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 V2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle"
      },
      {
        "id" : "Bundle.id",
        "path" : "Bundle.id",
        "min" : 1
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "patternCode" : "message"
      },
      {
        "id" : "Bundle.timestamp",
        "path" : "Bundle.timestamp",
        "min" : 1
      },
      {
        "id" : "Bundle.entry.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1,
        "constraint" : [
          {
            "key" : "uuid-only",
            "severity" : "error",
            "human" : "fullUrl must be a valid UUID",
            "expression" : "value.matches('^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$')",
            "source" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-bundle"
          }
        ]
      }
    ]
  }
}

```
