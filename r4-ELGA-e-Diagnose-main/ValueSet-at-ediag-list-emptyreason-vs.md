# HL7.AT.FHIR.ELGA.EDIAG.R4\ELGA List Empty Reason Value Set - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA List Empty Reason Value Set**

## ValueSet: ELGA List Empty Reason Value Set (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-list-emptyreason-vs | *Version*:0.1.0 | |
| Draft as of 2026-09-03 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEdiagListEmptyReasonVS |

 
ValueSet für zulässige Ausprägungen des Elements emptyReason einer Liste. 

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
  "id" : "at-ediag-list-emptyreason-vs",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-list-emptyreason-vs",
  "version" : "0.1.0",
  "name" : "AtEdiagListEmptyReasonVS",
  "title" : "ELGA List Empty Reason Value Set",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-03T13:31:10+00:00",
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
  "description" : "ValueSet für zulässige Ausprägungen des Elements emptyReason einer Liste.",
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/list-empty-reason",
      "concept" : [{
        "code" : "nilknown"
      },
      {
        "code" : "notstarted"
      }]
    }]
  }
}

```
