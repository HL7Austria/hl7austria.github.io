# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Other Observations Units - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Other Observations Units**

## ValueSet: AT PreNUDGE Other Observations Units 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/prenudge-other-observations-units | *Version*:0.1.0 | |
| Active as of 2026-03-03 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeValueSetOtherObservationsUnits |

 
Allowed UCUM units for the 'Other' observation profile. 

 **References** 

* [AT PreNUDGE Observation Other](StructureDefinition-at-prenudge-observation-other.md)

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
  "id" : "prenudge-other-observations-units",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/prenudge-other-observations-units",
  "version" : "0.1.0",
  "name" : "AtPrenudgeValueSetOtherObservationsUnits",
  "title" : "AT PreNUDGE Other Observations Units",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-03T18:16:34+00:00",
  "publisher" : "The PreNUDGE Consortium",
  "contact" : [{
    "name" : "The PreNUDGE Consortium",
    "telecom" : [{
      "system" : "url",
      "value" : "https://prenudge.at"
    }]
  },
  {
    "name" : "The PreNUDGE Consortium",
    "telecom" : [{
      "system" : "url",
      "value" : "https://prenudge.at",
      "use" : "work"
    }]
  }],
  "description" : "Allowed UCUM units for the 'Other' observation profile.",
  "compose" : {
    "include" : [{
      "system" : "http://unitsofmeasure.org",
      "concept" : [{
        "code" : "min",
        "display" : "minute"
      },
      {
        "code" : "{finding}",
        "display" : "finding"
      },
      {
        "code" : "{intensity}",
        "display" : "intensity"
      }]
    }]
  }
}

```
