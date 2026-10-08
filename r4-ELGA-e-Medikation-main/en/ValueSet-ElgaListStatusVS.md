# ELGA List Status ValueSet - ELGA e-Medikation (R4) DRAFT v0.1.0

## ValueSet: ELGA List Status ValueSet (Experimental) 

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
  "id" : "ElgaListStatusVS",
  "url" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/ElgaListStatusVS",
  "version" : "0.1.0",
  "name" : "ElgaListStatusVS",
  "title" : "ELGA List Status ValueSet",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-10-08T16:43:43+00:00",
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
  "description" : "Zulässige Ausprägungen des Status einer List-Ressource in ELGA.",
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/list-status",
      "version" : "4.0.1",
      "concept" : [{
        "code" : "current"
      },
      {
        "code" : "retired"
      }]
    }]
  }
}

```
