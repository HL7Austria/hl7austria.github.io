# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE ISCED-based Education Category Codes - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE ISCED-based Education Category Codes**

## CodeSystem: AT PreNUDGE ISCED-based Education Category Codes 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level | *Version*:0.1.0 | |
| Active as of 2026-08-18 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeCodeSystemIsced2011EducationLevel |

 
Local representation of the eight ISCED-based answer categories for the highest completed education level used in PreNUDGE. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AT PreNUDGE ISCED-based Education Category ValueSet](ValueSet-prenudge-isced-2011-education-level.md)

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-08-18

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
  "title" : "AT PreNUDGE ISCED-based Education Category Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-18T12:08:37+00:00",
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
  "description" : "Local representation of the eight ISCED-based answer categories for the highest completed education level used in PreNUDGE.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "isced-1",
    "display" : "ISCED 1: Volksschule"
  },
  {
    "code" : "isced-2",
    "display" : "ISCED 2: Hauptschule, Mittelschulen, Unterstufen von AHS"
  },
  {
    "code" : "isced-3a",
    "display" : "ISCED 3a: Polytechnische Schule"
  },
  {
    "code" : "isced-3b",
    "display" : "ISCED 3b: Berufsbildende mittlere Schulen (HASCH, Fachschulen)"
  },
  {
    "code" : "isced-3c",
    "display" : "ISCED 3c: Berufsbildende höhere Schulen (HAK, HBLA, HTL) und AHS-Oberstufe"
  },
  {
    "code" : "isced-4",
    "display" : "ISCED 4: Lehre mit Matura, Gesundheits- und Krankenpflegeschule (nicht-tertiär), Meister- oder Diplomprüfung"
  },
  {
    "code" : "isced-5",
    "display" : "ISCED 5: Kolleg, tertiäre Hebammenakademien bzw. medizinisch-technische Ausbildungen im Kurzzyklus"
  },
  {
    "code" : "isced-6-8",
    "display" : "ISCED 6–8: Hochschulabschlüsse (Bachelor, Master, Doktor)"
  }]
}

```
