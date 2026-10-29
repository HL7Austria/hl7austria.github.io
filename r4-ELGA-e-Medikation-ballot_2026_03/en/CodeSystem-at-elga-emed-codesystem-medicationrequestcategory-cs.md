# AT ELGA e-Medikation MedicationRequest Kategorie CodeSystem - ELGA e-Medikation (R4) DRAFT v0.1.0

## CodeSystem: AT ELGA e-Medikation MedicationRequest Kategorie CodeSystem 

This Code system is referenced in the definition of the following value sets:

* [AT ELGA e-Medikation MedicationRequest Kategorie ValueSet](ValueSet-at-elga-emed-valueset-medicationrequestcategory-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "at-elga-emed-codesystem-medicationrequestcategory-cs",
  "url" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/at-elga-emed-codesystem-medicationrequestcategory-cs",
  "version" : "0.1.0",
  "name" : "MedicationRequestCategoryCS",
  "title" : "AT ELGA e-Medikation MedicationRequest Kategorie CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-29T15:54:42+00:00",
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
  "description" : "Codesystem für zulässige Ausprägungen der MedicationRequest Kategorie. Dient der Unterscheidung von Geplanten Abgaben und Medikationsplaneinträgen.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "Planeintrag",
    "display" : "Planeintrag"
  },
  {
    "code" : "GeplAbgabe",
    "display" : "Geplante Abgabe"
  }]
}

```
