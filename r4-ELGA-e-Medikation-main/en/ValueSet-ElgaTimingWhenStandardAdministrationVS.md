# ELGA Dosierung Timing When ValueSet für Tageszeitenschema - ELGA e-Medikation (R4) DRAFT v0.1.0

## ValueSet: ELGA Dosierung Timing When ValueSet für Tageszeitenschema (Experimental) 

 **References** 

* [AtElgaEmedDosageStandardAdministration](StructureDefinition-at-elga-emed-dosage-standard-administration.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ElgaTimingWhenStandardAdministrationVS",
  "url" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/ElgaTimingWhenStandardAdministrationVS",
  "version" : "0.1.0",
  "name" : "ElgaTimingWhenStandardAdministrationVS",
  "title" : "ELGA Dosierung Timing When ValueSet für Tageszeitenschema",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-10-15T13:39:50+00:00",
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
  "description" : "ValueSet für zulässige Ausprägungen des Elements when eines Timings für eine Dosierung mit Tageszeitenschema.",
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/event-timing",
      "version" : "4.0.1",
      "concept" : [{
        "code" : "MORN"
      },
      {
        "code" : "NOON"
      },
      {
        "code" : "EVE"
      },
      {
        "code" : "NIGHT"
      }]
    }]
  }
}

```
