# ELGA e-Med MedicationRequest Kategorie ValueSet - ELGA e-Medikation (R4) DRAFT v0.1.0

## ValueSet: ELGA e-Med MedicationRequest Kategorie ValueSet (Experimental) 

 **References** 

* [At ELGA e-Medikation MedicationRequest Geplante Abgabe](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md)
* [At ELGA e-Medikation MedicationRequest Planeintrag](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "MedicationRequestCategoryVS",
  "url" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/MedicationRequestCategoryVS",
  "version" : "0.1.0",
  "name" : "MedicationRequestCategoryVS",
  "title" : "ELGA e-Med MedicationRequest Kategorie ValueSet",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-12T12:45:08+00:00",
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
  "description" : "ValueSet für zulässige Ausprägungen der MedicationRequest Kategorie. Dient der Unterscheidung von geplanten Abgaben und Medikationsplaneinträgen",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS"
    }]
  }
}

```
