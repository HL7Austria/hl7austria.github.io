# HL7.AT.FHIR.ELGA.EMED.R4\ELGA e-Med MedicationRequest Kategorie Rezeptart CodeSystem - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA e-Med MedicationRequest Kategorie Rezeptart CodeSystem**

## CodeSystem: ELGA e-Med MedicationRequest Kategorie Rezeptart CodeSystem (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryRecipeTypeCS | *Version*:0.1.1 | |
| Active as of 2026-03-16 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:MedicationRequestCategoryRecipeTypeCS |

 
Codesystem für zulässige Ausprägungen der MedicationRequest Kategorie Rezeptart. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MedicationRequestCategoryRecipeTypeVS](ValueSet-MedicationRequestCategoryRecipeTypeVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "MedicationRequestCategoryRecipeTypeCS",
  "url" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryRecipeTypeCS",
  "version" : "0.1.1",
  "name" : "MedicationRequestCategoryRecipeTypeCS",
  "title" : "ELGA e-Med MedicationRequest Kategorie Rezeptart CodeSystem",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-03-16T16:50:24+00:00",
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
  "description" : "Codesystem für zulässige Ausprägungen der MedicationRequest Kategorie Rezeptart.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "1",
    "display" : "Kassenrezept"
  },
  {
    "code" : "2",
    "display" : "Privatrezept"
  }]
}

```
