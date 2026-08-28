# HL7.AT.FHIR.ELGA.EDIAG.R4\AT e-Diagnose Diagnosis Type Value Set - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT e-Diagnose Diagnosis Type Value Set**

## ValueSet: AT e-Diagnose Diagnosis Type Value Set (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-diagnosen-type | *Version*:0.1.0 | |
| Active as of 2026-08-28 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEdiagDiagnosisTypeVS |

 
ValueSet zur Unterscheidung, ob eine Diagnose aktuell relevant oder nicht aktuell relevant ist. 

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
  "id" : "at-ediag-diagnosen-type",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-diagnosen-type",
  "version" : "0.1.0",
  "name" : "AtEdiagDiagnosisTypeVS",
  "title" : "AT e-Diagnose Diagnosis Type Value Set",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-08-28T12:02:09+00:00",
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
  "description" : "ValueSet zur Unterscheidung, ob eine Diagnose aktuell relevant oder nicht aktuell relevant ist.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-codesystem-diagnose-type"
    }]
  }
}

```
