# ELGA List.entry.flag ValueSet - ELGA e-Medikation (R4) DRAFT v0.1.0

## ValueSet: ELGA List.entry.flag ValueSet (Experimental) 

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
  "id" : "ElgaListEntryFlagVS",
  "url" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/ElgaListEntryFlagVS",
  "version" : "0.1.0",
  "name" : "ElgaListEntryFlagVS",
  "title" : "ELGA List.entry.flag ValueSet",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-21T15:07:55+00:00",
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
  "description" : "ValueSet für zulässige Ausprägungen Ausprägungen des Flags eines List.Entries in ELGA.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/ElgaListEntryFlagCS"
    }]
  }
}

```
