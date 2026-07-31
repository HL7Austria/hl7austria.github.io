# HL7.AT.FHIR.ELGA.EDIAG.R4\AT e-Diagnose Reaction Time Value Set - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT e-Diagnose Reaction Time Value Set**

## ValueSet: AT e-Diagnose Reaction Time Value Set (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-reaction-time-vs | *Version*:0.1.0 | |
| Active as of 2026-07-31 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEdiagReactionTimeVS |

 
ValueSet mit zulässigen Ausprägungen der Reaktionszeit einer allergischen Reaktion. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "at-ediag-reaction-time-vs",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-reaction-time-vs",
  "version" : "0.1.0",
  "name" : "AtEdiagReactionTimeVS",
  "title" : "AT e-Diagnose Reaction Time Value Set",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-07-31T12:19:34+00:00",
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
  "description" : "ValueSet mit zulässigen Ausprägungen der Reaktionszeit einer allergischen Reaktion.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-codesystem-reaction-time-cs"
    }]
  }
}

```
