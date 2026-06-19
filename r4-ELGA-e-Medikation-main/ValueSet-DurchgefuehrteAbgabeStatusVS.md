# HL7.AT.FHIR.ELGA.EMED.R4\ELGA e-Med Durchgeführte Abgabe Status Value Set - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA e-Med Durchgeführte Abgabe Status Value Set**

## ValueSet: ELGA e-Med Durchgeführte Abgabe Status Value Set (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/ValueSet/DurchgefuehrteAbgabeStatusVS | *Version*:0.1.1 | |
| Draft as of 2026-06-19 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:DurchgefuehrteAbgabeStatusVS |

 
ValueSet für zulässige Ausprägungen eines Status einer durchgeführten Abgabe (MedicationDispense). 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

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
  "id" : "DurchgefuehrteAbgabeStatusVS",
  "url" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/DurchgefuehrteAbgabeStatusVS",
  "version" : "0.1.1",
  "name" : "DurchgefuehrteAbgabeStatusVS",
  "title" : "ELGA e-Med Durchgeführte Abgabe Status Value Set",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-19T14:53:34+00:00",
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
  "description" : "ValueSet für zulässige Ausprägungen eines Status einer durchgeführten Abgabe (MedicationDispense).",
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/ValueSet/medicationdispense-status",
      "concept" : [{
        "code" : "completed"
      },
      {
        "code" : "entered-in-error"
      },
      {
        "code" : "cancelled"
      }]
    }]
  }
}

```
