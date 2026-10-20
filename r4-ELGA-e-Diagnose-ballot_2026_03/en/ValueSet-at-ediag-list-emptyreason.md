# ELGA List Empty Reason - ELGA e-Diagnose R4 v0.1.0

## ValueSet: ELGA List Empty Reason 

 **References** 

* [AT e-Diagnose Summary-Liste](StructureDefinition-at-elga-ediag-list.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "at-ediag-list-emptyreason",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-list-emptyreason",
  "version" : "0.1.0",
  "name" : "AtEdiagListEmptyReason",
  "title" : "ELGA List Empty Reason",
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
  "description" : "ValueSet für zulässige Ausprägungen des Elements emptyReason einer Liste.",
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/list-empty-reason",
      "version" : "1.0.1",
      "concept" : [{
        "code" : "nilknown"
      },
      {
        "code" : "notstarted"
      }]
    }]
  }
}

```
