# AT ELGA e-Medikation Dosage Category Status CodeSystem - ELGA e-Medikation (R4) DRAFT v0.1.0

## CodeSystem: AT ELGA e-Medikation Dosage Category Status CodeSystem (Experimental) 

This Code system is referenced in the definition of the following value sets:

* [AT ELGA e-Medikation Dosage Category Status ValueSet](ValueSet-at-elga-emed-valueset-dosagecategory-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "at-elga-emed-codesystem-dosagecategory-cs",
  "url" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/at-elga-emed-codesystem-dosagecategory-cs",
  "version" : "0.1.0",
  "name" : "AtElgaEmedCodeSystemDosageCategory",
  "title" : "AT ELGA e-Medikation Dosage Category Status CodeSystem",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-10-29T14:50:53+00:00",
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
  "description" : "Zulässige Ausprägungen der Kategorie einer Dosierung in ELGA.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "timed",
    "display" : "Timed Administration"
  },
  {
    "code" : "frequency",
    "display" : "Frequency Administration"
  },
  {
    "code" : "other",
    "display" : "Other"
  },
  {
    "code" : "freitext"
  },
  {
    "code" : "standard",
    "display" : "Standard Administration"
  }]
}

```
