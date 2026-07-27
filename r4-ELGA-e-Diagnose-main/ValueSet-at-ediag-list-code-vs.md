# HL7.AT.FHIR.ELGA.EDIAG.R4\ELGA AT e-Diagnose List Entry Code Value Set - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA AT e-Diagnose List Entry Code Value Set**

## ValueSet: ELGA AT e-Diagnose List Entry Code Value Set (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-list-code-vs | *Version*:0.1.0 | |
| Draft as of 2026-07-27 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEdiagListCodeVS |

 
ValueSet mit zulässigen Codes für das Flag eines List-Entries in ELGA. 

 **References** 

* [AT ELGA e-Diagnose List](StructureDefinition-at-elga-ediag-list.md)

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
  "id" : "at-ediag-list-code-vs",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-list-code-vs",
  "version" : "0.1.0",
  "name" : "AtEdiagListCodeVS",
  "title" : "ELGA AT e-Diagnose List Entry Code Value Set",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-07-27T09:29:06+00:00",
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
  "description" : "ValueSet mit zulässigen Codes für das Flag eines List-Entries in ELGA.",
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "11450-4"
      },
      {
        "code" : "47519-4"
      },
      {
        "code" : "48765-2"
      }]
    }]
  }
}

```
