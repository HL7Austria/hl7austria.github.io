# ELGA List Empty Reason Value Set - ELGA e-Diagnose R4 (Draft) v0.1.0

## ValueSet: ELGA List Empty Reason Value Set (Experimental) 

 
ValueSet für zulässige Ausprägungen des Elements emptyReason einer Liste. 

 **References** 

* [AT ELGA e-Diagnose List](StructureDefinition-at-elga-ediag-list.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "at-ediag-list-emptyreason-vs",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-list-emptyreason-vs",
  "version" : "0.1.0",
  "name" : "AtEdiagListEmptyReasonVS",
  "title" : "ELGA List Empty Reason Value Set",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-30T14:46:14+00:00",
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
