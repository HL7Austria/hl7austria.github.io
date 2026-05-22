# ELGA.MOPED\MOPED VAESupportingInformationCategory - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED VAESupportingInformationCategory**

## CodeSystem: MOPED VAESupportingInformationCategory (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS | *Version*:0.1.0 | |
| Active as of 2026-05-22 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:ClaimSupportingInformationCategoryCS |

 
Arten von zusätzlichen Informationen in der VAE 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ClaimSupportingInformationCategoryVS](ValueSet-ClaimSupportingInformationCategoryVS.md)
* [LKFSupportingInformationCategoryVS](ValueSet-LKFSupportingInformationCategoryVS.md)
* [VAESupportingInformationCategoryVS](ValueSet-VAESupportingInformationCategoryVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ClaimSupportingInformationCategoryCS",
  "url" : "https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS",
  "version" : "0.1.0",
  "name" : "ClaimSupportingInformationCategoryCS",
  "title" : "MOPED VAESupportingInformationCategory",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-05-22T08:08:56+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Arten von zusätzlichen Informationen in der VAE",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [{
    "code" : "KLAS",
    "display" : "Allgemeine Gebührenklasse/Sonderklasse"
  },
  {
    "code" : "FREVER",
    "display" : "Fremdversschluden"
  },
  {
    "code" : "VERLAENG",
    "display" : "Verlängerungstage"
  },
  {
    "code" : "PLAUS",
    "display" : "Plausibilitätskennzeichen"
  },
  {
    "code" : "FREMDRE",
    "display" : "Rechnungsnummer der zwischenstaatlichen Abrechnung"
  },
  {
    "code" : "OEGKELBNR",
    "display" : "Forderungsnummer der Österreichischen Gesundheitskasse"
  },
  {
    "code" : "VTAGE",
    "display" : "Vortageanzahl auf Kostenbeitrag"
  },
  {
    "code" : "ENDG",
    "display" : "Endgültige Meldung"
  },
  {
    "code" : "DEVX",
    "display" : "XDok Device"
  }]
}

```
