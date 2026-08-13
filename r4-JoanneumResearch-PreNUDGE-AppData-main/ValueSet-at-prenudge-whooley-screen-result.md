# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE ValueSet Whooley Screen Result - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE ValueSet Whooley Screen Result**

## ValueSet: AT PreNUDGE ValueSet Whooley Screen Result 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/at-prenudge-whooley-screen-result | *Version*:0.1.0 | |
| Active as of 2026-08-13 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeValueSetWhooleyScreenResult |

 
Binary result of the PHQ-2; "Whooley" Questions (Ja/Nein-Version). Positive = both questions answered 'Ja'; Negative = at least one question answered 'Nein'. 

 **References** 

* [AT PreNUDGE Observation Whooley Depression Screening](StructureDefinition-at-prenudge-whooley-observation.md)

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

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-08-13

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "at-prenudge-whooley-screen-result",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/at-prenudge-whooley-screen-result",
  "version" : "0.1.0",
  "name" : "AtPrenudgeValueSetWhooleyScreenResult",
  "title" : "AT PreNUDGE ValueSet Whooley Screen Result",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-13T06:23:48+00:00",
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
  "description" : "Binary result of the PHQ-2; \"Whooley\" Questions (Ja/Nein-Version). Positive = both questions answered 'Ja'; Negative = at least one question answered 'Nein'.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "10828004",
        "display" : "Positive (qualifier value)"
      },
      {
        "code" : "260385009",
        "display" : "Negative (qualifier value)"
      }]
    }]
  }
}

```
