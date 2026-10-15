# ELGA List.entry.flag CodeSystem - ELGA e-Medikation (R4) DRAFT v0.1.0

## CodeSystem: ELGA List.entry.flag CodeSystem (Experimental) 

This Code system is referenced in the definition of the following value sets:

* [ELGA List.entry.flag Value Set](ValueSet-ElgaListEntryFlagVS.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ElgaListEntryFlagCS",
  "url" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/ElgaListEntryFlagCS",
  "version" : "0.1.0",
  "name" : "ElgaListEntryFlagCS",
  "title" : "ELGA List.entry.flag CodeSystem",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-10-15T16:39:56+00:00",
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
  "description" : "CodeSystem für zulässige Ausprägungen des Flags eines List.Entries in ELGA.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "new",
    "display" : "Neuer Planeintrag"
  },
  {
    "code" : "unchanged",
    "display" : "Planeintrag beibehalten"
  },
  {
    "code" : "changed",
    "display" : "Planeintrag geändert"
  },
  {
    "code" : "removed",
    "display" : "Planeintrag entfernt"
  }]
}

```
