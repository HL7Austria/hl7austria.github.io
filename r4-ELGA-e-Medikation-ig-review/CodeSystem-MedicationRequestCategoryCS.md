# HL7.AT.FHIR.ELGA.EMED.R4\ELGA e-Med MedicationRequest Kategorie CodeSystem - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA e-Med MedicationRequest Kategorie CodeSystem**

## CodeSystem: ELGA e-Med MedicationRequest Kategorie CodeSystem (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS | *Version*:0.1.1 | |
| Active as of 2026-07-13 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:MedicationRequestCategoryCS |

 
Codesystem für zulässige Ausprägungen der MedicationRequest Kategorie. Dient der Unterscheidung von geplanten Abgaben und Medikationsplaneinträgen. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MedicationRequestCategoryVS](ValueSet-MedicationRequestCategoryVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "MedicationRequestCategoryCS",
  "url" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS",
  "version" : "0.1.1",
  "name" : "MedicationRequestCategoryCS",
  "title" : "ELGA e-Med MedicationRequest Kategorie CodeSystem",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-07-13T07:40:16+00:00",
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
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "1",
    "display" : "Medikationsplaneintrag"
  },
  {
    "code" : "2",
    "display" : "Geplante Abgabe"
  }]
}

```
