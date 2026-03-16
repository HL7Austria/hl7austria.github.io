# HL7.AT.FHIR.ELGA.EMED.R4\ELGA e-Med MedicationRequest Kategorie Rezeptart ValueSet - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA e-Med MedicationRequest Kategorie Rezeptart ValueSet**

## ValueSet: ELGA e-Med MedicationRequest Kategorie Rezeptart ValueSet (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/ValueSet/MedicationRequestCategoryRecipeTypeVS | *Version*:0.1.1 | |
| Draft as of 2026-03-16 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:MedicationRequestCategoryRecipeTypeVS |

 
ValueSet für zulässige Ausprägungen der MedicationRequest Kategorie Rezeptart. 

 **References** 

* [ELGA e-Med Geplante Abgabe](StructureDefinition-at-emed-mr-geplante-abgabe.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "MedicationRequestCategoryRecipeTypeVS",
  "url" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/MedicationRequestCategoryRecipeTypeVS",
  "version" : "0.1.1",
  "name" : "MedicationRequestCategoryRecipeTypeVS",
  "title" : "ELGA e-Med MedicationRequest Kategorie Rezeptart ValueSet",
  "status" : "draft",
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
  "description" : "ValueSet für zulässige Ausprägungen der MedicationRequest Kategorie Rezeptart.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryRecipeTypeCS"
    }]
  }
}

```
