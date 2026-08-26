# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE ValueSet PSS Frequency Answer Scale - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE ValueSet PSS Frequency Answer Scale**

## ValueSet: AT PreNUDGE ValueSet PSS Frequency Answer Scale 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/at-prenudge-pss-frequency-valueset | *Version*:0.1.0 | |
| Active as of 2026-08-26 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeValueSetPSSFrequency |

 
All five PSS frequency answer options (Nie–Sehr oft) used in PSS-4 and PSS-10 questionnaire items. 

 **References** 

* [AT PreNUDGE Observation PSS-10 Score](StructureDefinition-at-prenudge-pss10-score-observation.md)
* [AT PreNUDGE Observation PSS-4 Score](StructureDefinition-at-prenudge-pss4-score-observation.md)

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
2026-08-26

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "at-prenudge-pss-frequency-valueset",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/at-prenudge-pss-frequency-valueset",
  "version" : "0.1.0",
  "name" : "AtPrenudgeValueSetPSSFrequency",
  "title" : "AT PreNUDGE ValueSet PSS Frequency Answer Scale",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-26T07:06:07+00:00",
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
  "description" : "All five PSS frequency answer options (Nie–Sehr oft) used in PSS-4 and PSS-10 questionnaire items.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem"
    }]
  }
}

```
