# HL7.AT.FHIR.ELGA.EMED.R4\ELGA List.entry.flag CodeSystem - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA List.entry.flag CodeSystem**

## CodeSystem: ELGA List.entry.flag CodeSystem (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/CodeSystem/ElgaListEntryFlagCS | *Version*:0.1.1 | |
| Active as of 2026-06-30 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:ElgaListEntryFlagCS |

 
CodeSystem für zulässige Ausprägungen des Flags eines List.Entries in ELGA. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ElgaListEntryFlagVS](ValueSet-ElgaListEntryFlagVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ElgaListEntryFlagCS",
  "url" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/ElgaListEntryFlagCS",
  "version" : "0.1.1",
  "name" : "ElgaListEntryFlagCS",
  "title" : "ELGA List.entry.flag CodeSystem",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-06-30T14:26:32+00:00",
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
  "description" : "CodeSystem für zulässige Ausprägungen des Flags eines List.Entries in ELGA.",
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "new",
    "display" : "Neuer Planeintrag"
  },
  {
    "code" : "unchanged",
    "display" : "Planeintrag beibehalten"
  },
  {
    "code" : "changed",
    "display" : "Planeintrag geändert"
  },
  {
    "code" : "removed",
    "display" : "Planeintrag entfernt"
  }]
}

```
