# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE ATHIS Smoking Answer Codes - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE ATHIS Smoking Answer Codes**

## CodeSystem: AT PreNUDGE ATHIS Smoking Answer Codes 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-athis-smoking | *Version*:0.1.0 | |
| Active as of 2026-05-20 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeCodeSystemAthisSmoking |

 
Local answer codes for ATHIS smoking questionnaire items used in the PreNUDGE smoking status questionnaire. These codes preserve the questionnaire semantics and are mapped to SNOMED CT only where a clinical smoking-status Observation is derived. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "prenudge-athis-smoking",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-athis-smoking",
  "version" : "0.1.0",
  "name" : "AtPrenudgeCodeSystemAthisSmoking",
  "title" : "AT PreNUDGE ATHIS Smoking Answer Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-20T09:08:27+00:00",
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
  "description" : "Local answer codes for ATHIS smoking questionnaire items used in the PreNUDGE smoking status questionnaire. These codes preserve the questionnaire semantics and are mapped to SNOMED CT only where a clinical smoking-status Observation is derived.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "status-no",
    "display" : "Nein"
  },
  {
    "code" : "status-occasional",
    "display" : "Ja, gelegentlich"
  },
  {
    "code" : "status-daily",
    "display" : "Ja, täglich"
  },
  {
    "code" : "yes",
    "display" : "Ja"
  },
  {
    "code" : "no",
    "display" : "Nein"
  },
  {
    "code" : "use-former",
    "display" : "Nein, aber früher"
  },
  {
    "code" : "use-never",
    "display" : "Nein, habe ich noch nie genutzt"
  }]
}

```
