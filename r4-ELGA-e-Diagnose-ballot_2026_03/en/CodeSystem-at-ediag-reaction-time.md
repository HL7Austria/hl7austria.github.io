# AT e-Diagnose Reaktionszeit CS - ELGA e-Diagnose R4 v0.1.0

## CodeSystem: AT e-Diagnose Reaktionszeit CS 

This Code system is referenced in the definition of the following value sets:

* [AT e-Diagnose Reaktionszeit VS](ValueSet-at-ediag-reaction-time.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "at-ediag-reaction-time",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-reaction-time",
  "version" : "0.1.0",
  "name" : "AtEdiagReactionTimeCS",
  "title" : "AT e-Diagnose Reaktionszeit CS",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-10-20T08:47:52+00:00",
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
