# ELGA e-Med MedicationRequest Kategorie CodeSystem - ELGA e-Medikation (R4) DRAFT v0.1.0

## CodeSystem: ELGA e-Med MedicationRequest Kategorie CodeSystem (Experimental) 

This Code system is referenced in the definition of the following value sets:

* [ELGA e-Med MedicationRequest Kategorie ValueSet](ValueSet-MedicationRequestCategoryVS.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "MedicationRequestCategoryCS",
  "url" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS",
  "version" : "0.1.0",
  "name" : "MedicationRequestCategoryCS",
  "title" : "ELGA e-Med MedicationRequest Kategorie CodeSystem",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-10-11T19:49:48+00:00",
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
  "description" : "Codesystem für zulässige Ausprägungen der MedicationRequest Kategorie. Dient der Unterscheidung von geplanten Abgaben und Medikationsplaneinträgen.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "1",
    "display" : "Planeintrag"
  },
  {
    "code" : "2",
    "display" : "Geplante Abgabe"
  }]
}

```
