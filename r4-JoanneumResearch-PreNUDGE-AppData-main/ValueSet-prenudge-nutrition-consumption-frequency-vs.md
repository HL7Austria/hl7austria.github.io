# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Nutrition Consumption Frequency - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Nutrition Consumption Frequency**

## ValueSet: AT PreNUDGE Nutrition Consumption Frequency 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/prenudge-nutrition-consumption-frequency-vs | *Version*:0.1.0 | |
| Active as of 2026-07-22 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeValueSetNutritionConsumptionFrequency |

 
All frequency options for fruit and vegetable consumption questions DH1 and DH3 from ATHIS 2025. Includes the 'Weiß nicht' option (code 'unknown'). 

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
2026-07-22

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "prenudge-nutrition-consumption-frequency-vs",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/prenudge-nutrition-consumption-frequency-vs",
  "version" : "0.1.0",
  "name" : "AtPrenudgeValueSetNutritionConsumptionFrequency",
  "title" : "AT PreNUDGE Nutrition Consumption Frequency",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-22T10:33:49+00:00",
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
  "description" : "All frequency options for fruit and vegetable consumption questions DH1 and DH3 from ATHIS 2025. Includes the 'Weiß nicht' option (code 'unknown').",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
      "concept" : [{
        "code" : "diet-daily-or-more",
        "display" : "Täglich oder mehrmals täglich"
      },
      {
        "code" : "diet-4-6-per-week",
        "display" : "4 bis 6 Mal pro Woche"
      },
      {
        "code" : "diet-1-3-per-week",
        "display" : "1 bis 3 Mal pro Woche"
      },
      {
        "code" : "diet-less-than-once-per-week",
        "display" : "Weniger als einmal pro Woche"
      },
      {
        "code" : "diet-never",
        "display" : "Nie"
      },
      {
        "code" : "meta-unknown",
        "display" : "Weiß nicht"
      }]
    }]
  }
}

```
