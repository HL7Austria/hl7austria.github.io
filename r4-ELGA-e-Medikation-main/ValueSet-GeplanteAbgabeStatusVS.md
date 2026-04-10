# HL7.AT.FHIR.ELGA.EMED.R4\ELGA e-Med Geplante Abgabe Status ValueSet - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA e-Med Geplante Abgabe Status ValueSet**

## ValueSet: ELGA e-Med Geplante Abgabe Status ValueSet (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/ValueSet/GeplanteAbgabeStatusVS | *Version*:0.1.1 | |
| Draft as of 2026-04-10 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:GeplanteAbgabeStatusVS |

 
ValueSet für zulässige Ausprägungen eines Status einer geplanten Abgabe (MedicationRequest). 

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
  "id" : "GeplanteAbgabeStatusVS",
  "url" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/GeplanteAbgabeStatusVS",
  "version" : "0.1.1",
  "name" : "GeplanteAbgabeStatusVS",
  "title" : "ELGA e-Med Geplante Abgabe Status ValueSet",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-04-10T11:48:51+00:00",
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
  "description" : "ValueSet für zulässige Ausprägungen eines Status einer geplanten Abgabe (MedicationRequest).",
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/CodeSystem/medicationrequest-status",
      "concept" : [{
        "code" : "active"
      },
      {
        "code" : "completed"
      },
      {
        "code" : "entered-in-error"
      },
      {
        "code" : "stopped"
      }]
    }]
  }
}

```
