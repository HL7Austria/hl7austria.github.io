# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE ISCED 2011 Education Level Codes - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE ISCED 2011 Education Level Codes**

## CodeSystem: AT PreNUDGE ISCED 2011 Education Level Codes 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level | *Version*:0.1.0 | |
| Active as of 2026-06-29 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeCodeSystemIsced2011EducationLevel |

 
Local representation of ISCED 2011 education levels for the highest completed education level used in PreNUDGE. Austrian levels are described at https://bildungssystem.oead.at/isced-klassifikation 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AtPrenudgeValueSetIsced2011EducationLevel](ValueSet-prenudge-isced-2011-education-level.md)

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
  "resourceType" : "CodeSystem",
  "id" : "prenudge-isced-2011-education-level",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level",
  "version" : "0.1.0",
  "name" : "AtPrenudgeCodeSystemIsced2011EducationLevel",
  "title" : "AT PreNUDGE ISCED 2011 Education Level Codes",
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
  "description" : "Local representation of ISCED 2011 education levels for the highest completed education level used in PreNUDGE. Austrian levels are described at https://bildungssystem.oead.at/isced-klassifikation",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 11,
  "concept" : [{
    "code" : "isced-0",
    "display" : "ISCED 0 - Elementarbereich"
  },
  {
    "code" : "isced-1",
    "display" : "ISCED 1 - Primarbereich"
  },
  {
    "code" : "isced-2",
    "display" : "ISCED 2 - Sekundarbereich I"
  },
  {
    "code" : "isced-3",
    "display" : "ISCED 3 - Sekundarbereich II"
  },
  {
    "code" : "isced-4",
    "display" : "ISCED 4 - Postsekundarer, nicht tertiärer Bereich"
  },
  {
    "code" : "isced-5",
    "display" : "ISCED 5 - Kurzes tertiäres Bildungsprogramm"
  },
  {
    "code" : "isced-6",
    "display" : "ISCED 6 - Bachelor- bzw. gleichwertiges Bildungsprogramm"
  },
  {
    "code" : "isced-7",
    "display" : "ISCED 7 - Master- bzw. gleichwertiges Bildungsprogramm"
  },
  {
    "code" : "isced-8",
    "display" : "ISCED 8 - Promotion bzw. gleichwertiges Bildungsprogramm"
  },
  {
    "code" : "unknown",
    "display" : "Weiß nicht"
  },
  {
    "code" : "not-stated",
    "display" : "Keine Angabe"
  }]
}

```
