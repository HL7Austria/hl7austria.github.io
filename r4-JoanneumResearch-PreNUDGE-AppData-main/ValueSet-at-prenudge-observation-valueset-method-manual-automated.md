# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AtPrenudgeValueSetMethodManualAutomated - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtPrenudgeValueSetMethodManualAutomated**

## ValueSet: AtPrenudgeValueSetMethodManualAutomated 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/at-prenudge-observation-valueset-method-manual-automated | *Version*:0.1.0 | |
| Active as of 2026-02-25 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeValueSetMethodManualAutomated |

 **References** 

* [AT PreNUDGE Observation](StructureDefinition-at-prenudge-observation.md)

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
  "id" : "at-prenudge-observation-valueset-method-manual-automated",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/at-prenudge-observation-valueset-method-manual-automated",
  "version" : "0.1.0",
  "name" : "AtPrenudgeValueSetMethodManualAutomated",
  "status" : "active",
  "date" : "2026-02-25T07:03:20+00:00",
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
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "87982008",
        "display" : "Manual"
      },
      {
        "code" : "8359006",
        "display" : "Automated"
      }]
    }]
  }
}

```
