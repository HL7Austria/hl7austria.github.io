# ELGA MedicationRequest courseOfTherapyType ValueSet - ELGA e-Medikation (R4) DRAFT v0.1.0

## ValueSet: ELGA MedicationRequest courseOfTherapyType ValueSet (Experimental) 

 **References** 

* [At ELGA e-Medikation MedicationRequest Planeintrag](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "AtElgaEmedValueSetCourseOfTherapyType",
  "url" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/AtElgaEmedValueSetCourseOfTherapyType",
  "version" : "0.1.0",
  "name" : "AtElgaEmedValueSetCourseOfTherapyType",
  "title" : "ELGA MedicationRequest courseOfTherapyType ValueSet",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-10-21T09:52:38+00:00",
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
  "description" : "Zulässige Ausprägungen des Elements courseOfTherapyType in ELGA.",
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy",
      "version" : "1.0.1",
      "concept" : [{
        "code" : "acute"
      },
      {
        "code" : "continuous"
      }]
    }]
  }
}

```
