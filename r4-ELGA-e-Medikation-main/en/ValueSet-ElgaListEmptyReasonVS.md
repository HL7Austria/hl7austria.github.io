# ELGA List Empty Reason ValueSet - ELGA e-Medikation (R4) DRAFT v0.1.0

## ValueSet: ELGA List Empty Reason ValueSet (Experimental) 

 **References** 

* [AT ELGA e-Medikation List Medikationsplan](StructureDefinition-at-elga-emed-list-medikationsplan.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ElgaListEmptyReasonVS",
  "url" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/ElgaListEmptyReasonVS",
  "version" : "0.1.0",
  "name" : "ElgaListEmptyReasonVS",
  "title" : "ELGA List Empty Reason ValueSet",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-10-26T16:19:19+00:00",
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
