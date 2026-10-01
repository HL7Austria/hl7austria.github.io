# AT e-Diagnose Reaction Time Value Set - ELGA e-Diagnose R4 (Draft) v0.1.0

## ValueSet: AT e-Diagnose Reaction Time Value Set (Experimental) 

 
ValueSet mit zulässigen Ausprägungen der Reaktionszeit einer allergischen Reaktion. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "at-ediag-reaction-time-vs",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-reaction-time-vs",
  "version" : "0.1.0",
  "name" : "AtEdiagReactionTimeVS",
  "title" : "AT e-Diagnose Reaction Time Value Set",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-10-01T13:01:54+00:00",
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
  "description" : "ValueSet mit zulässigen Ausprägungen der Reaktionszeit einer allergischen Reaktion.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-codesystem-reaction-time-cs"
    }]
  }
}

```
