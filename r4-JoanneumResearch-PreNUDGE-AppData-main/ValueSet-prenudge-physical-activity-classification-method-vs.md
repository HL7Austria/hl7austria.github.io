# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Physical Activity Classification Method ValueSet - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Physical Activity Classification Method ValueSet**

## ValueSet: AT PreNUDGE Physical Activity Classification Method ValueSet 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/prenudge-physical-activity-classification-method-vs | *Version*:0.1.0 | |
| Active as of 2026-07-22 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:PrenudgePhysicalActivityClassificationMethodVS |

 
ValueSet containing all codes from the AT PreNUDGE Physical Activity Classification Method CodeSystem. Used as the required binding for component[classificationMethod].value[x] in the AT PreNUDGE Observation Physical Activity Minutes profile. 

 **References** 

* [AT PreNUDGE Observation Physical Activity Minutes](StructureDefinition-at-prenudge-physical-activity-minutes-observation.md)

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
2026-07-22

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "prenudge-physical-activity-classification-method-vs",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/prenudge-physical-activity-classification-method-vs",
  "version" : "0.1.0",
  "name" : "PrenudgePhysicalActivityClassificationMethodVS",
  "title" : "AT PreNUDGE Physical Activity Classification Method ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-22T11:37:23+00:00",
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
  "description" : "ValueSet containing all codes from the AT PreNUDGE Physical Activity Classification Method CodeSystem. Used as the required binding for component[classificationMethod].value[x] in the AT PreNUDGE Observation Physical Activity Minutes profile.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-physical-activity-classification-method-cs"
    }]
  }
}

```
