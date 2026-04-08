# ELGA.MOPED\Moped Claim Item Category CodeSystem - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Moped Claim Item Category CodeSystem**

## CodeSystem: Moped Claim Item Category CodeSystem (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS | *Version*:0.1.0 | |
| Active as of 2026-04-08 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedClaimItemCategoryCS |

 
CodeSystem für die Arten von Claim Item Kategorien 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MopedClaimItemCategoryVS](ValueSet-MopedClaimItemCategoryVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "MopedClaimItemCategoryCS",
  "url" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
  "version" : "0.1.0",
  "name" : "MopedClaimItemCategoryCS",
  "title" : "Moped Claim Item Category CodeSystem",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-04-08T06:34:39+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "CodeSystem für die Arten von Claim Item Kategorien",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 10,
  "concept" : [{
    "code" : "Patientenanteil",
    "display" : "Patientenanteil"
  },
  {
    "code" : "LDFPLK",
    "display" : "Leistungskomponente/Leistungspunkte"
  },
  {
    "code" : "LDFPTK",
    "display" : "Tageskomponente/Kontaktpunktet"
  },
  {
    "code" : "SCULK",
    "display" : "Punkte Belagsdauerausreißer nach unten – Leistungskomponente"
  },
  {
    "code" : "SCUTK",
    "display" : "Punkte Belagsdauerausreißer nach unten – Tageskomponente"
  },
  {
    "code" : "BDZU",
    "display" : "Zusatzpunkte Belagsdauerausreißer nach oben"
  },
  {
    "code" : "INTZU",
    "display" : "Zusatzpunkte Intensiv"
  },
  {
    "code" : "MELZU",
    "display" : "Zusatzpunkte Mehrfachleistungen"
  },
  {
    "code" : "SCSPEZ",
    "display" : "Punkte spezieller Bereiche (tageweise)"
  },
  {
    "code" : "SCGES",
    "display" : "Punkte total"
  }]
}

```
