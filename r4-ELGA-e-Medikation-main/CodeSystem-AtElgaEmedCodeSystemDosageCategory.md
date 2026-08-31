# HL7.AT.FHIR.ELGA.EMED.R4\ELGA Dosage Category Status CodeSystem - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA Dosage Category Status CodeSystem**

## CodeSystem: ELGA Dosage Category Status CodeSystem (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/CodeSystem/AtElgaEmedCodeSystemDosageCategory | *Version*:0.1.1 | |
| Active as of 2026-08-31 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtElgaEmedCodeSystemDosageCategory |

 
Zulässige Ausprägungen der Kategorie einer Dosierung in ELGA. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ELGA Dosage Category Status ValueSet](ValueSet-AtElgaEmedValueSetDosageCategory.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "AtElgaEmedCodeSystemDosageCategory",
  "url" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/AtElgaEmedCodeSystemDosageCategory",
  "version" : "0.1.1",
  "name" : "AtElgaEmedCodeSystemDosageCategory",
  "title" : "ELGA Dosage Category Status CodeSystem",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-08-31T18:38:38+00:00",
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
  "description" : "Zulässige Ausprägungen der Kategorie einer Dosierung in ELGA.",
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "timed",
    "display" : "Timed Administration"
  },
  {
    "code" : "frequency",
    "display" : "Frequency Administration"
  },
  {
    "code" : "other",
    "display" : "Other"
  },
  {
    "code" : "freitext"
  },
  {
    "code" : "standard",
    "display" : "Standard Administration"
  }]
}

```
