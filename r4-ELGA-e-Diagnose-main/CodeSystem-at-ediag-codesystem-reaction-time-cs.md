# HL7.AT.FHIR.ELGA.EDIAG.R4\Reaktionszeit Codes - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Reaktionszeit Codes**

## CodeSystem: Reaktionszeit Codes (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-codesystem-reaction-time-cs | *Version*:0.1.0 | |
| Active as of 2026-08-06 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEdiagReactionTimeCS |

 
Zeitlicher Verlauf der Manifestation 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AtEdiagReactionTimeVS](ValueSet-at-ediag-reaction-time-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "at-ediag-codesystem-reaction-time-cs",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-codesystem-reaction-time-cs",
  "version" : "0.1.0",
  "name" : "AtEdiagReactionTimeCS",
  "title" : "Reaktionszeit Codes",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-08-06T10:46:09+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "http://elga.gv.at"
    }]
  },
  {
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at",
      "use" : "work"
    }]
  }],
  "description" : "Zeitlicher Verlauf der Manifestation",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "lt6h",
    "display" : "<6 Stunden"
  },
  {
    "code" : "btw6_24h",
    "display" : "6-24 Stunden"
  },
  {
    "code" : "gt24h",
    "display" : ">24 Stunden"
  },
  {
    "code" : "unknown",
    "display" : "Unbekannt"
  }]
}

```
