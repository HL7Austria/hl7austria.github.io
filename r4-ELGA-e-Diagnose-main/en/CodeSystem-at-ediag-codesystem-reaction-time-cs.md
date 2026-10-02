# Reaktionszeit Codes - ELGA e-Diagnose R4 (Draft) v0.1.0

## CodeSystem: Reaktionszeit Codes (Experimental) 

 
Zeitlicher Verlauf der Manifestation 

This Code system is referenced in the definition of the following value sets:

* [AT e-Diagnose Reaction Time Value Set](ValueSet-at-ediag-reaction-time-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2026-10-02T12:58:24+00:00",
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
