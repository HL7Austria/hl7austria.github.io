# HL7.AT.FHIR.ELGA.EDIAG.R4\AT e-Diagnose AllergyIntolerance Code - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT e-Diagnose AllergyIntolerance Code**

## ValueSet: AT e-Diagnose AllergyIntolerance Code (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-allergyintolerance-code | *Version*:0.1.0 | |
| Active as of 2026-09-17 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEDiagAllergyIntoleranceCode |

 
ValueSet mit Codes für Substanzen und Stoffe, die als Auslöser von Allergien oder Intoleranzen erfasst werden. 

 **References** 

* [AT ELGA e-Diagnose AllergyIntolerance](StructureDefinition-at-elga-ediag-allergyintolerance.md)

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
  "id" : "at-ediag-allergyintolerance-code",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-allergyintolerance-code",
  "version" : "0.1.0",
  "name" : "AtEDiagAllergyIntoleranceCode",
  "title" : "AT e-Diagnose AllergyIntolerance Code",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-17T12:50:52+00:00",
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
  "description" : "ValueSet mit Codes für Substanzen und Stoffe, die als Auslöser von Allergien oder Intoleranzen erfasst werden.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "105590001"
      }]
    }]
  }
}

```
