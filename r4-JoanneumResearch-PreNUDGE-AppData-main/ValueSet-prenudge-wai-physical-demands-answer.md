# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE WAI Physical Demands Answer ValueSet - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE WAI Physical Demands Answer ValueSet**

## ValueSet: AT PreNUDGE WAI Physical Demands Answer ValueSet 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/prenudge-wai-physical-demands-answer | *Version*:0.1.0 | |
| Active as of 2026-06-29 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeValueSetWaiPhysicalDemandsAnswer |

 
Permitted categorical answers for current work ability in relation to physical work demands. 

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

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-06-29

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "prenudge-wai-physical-demands-answer",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/prenudge-wai-physical-demands-answer",
  "version" : "0.1.0",
  "name" : "AtPrenudgeValueSetWaiPhysicalDemandsAnswer",
  "title" : "AT PreNUDGE WAI Physical Demands Answer ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-29T16:58:51+00:00",
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
  "description" : "Permitted categorical answers for current work ability in relation to physical work demands.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-wai-answer"
    }]
  }
}

```
