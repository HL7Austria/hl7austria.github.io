# HL7.AT.FHIR.ELGA.EMED.R4\At ELGA e-Medikation Substance Wirkstoff - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **At ELGA e-Medikation Substance Wirkstoff**

## Resource Profile: At ELGA e-Medikation Substance Wirkstoff 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-substance-wirkstoff | *Version*:0.1.1 | |
| Draft as of 2026-05-30 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtElgaEmedSubstanceWirkstoff |

 
Dokumentation des Wirkstoffs eines Arzneimittels in der ELGA e-Medikation, sofern es nicht kodiert vorliegt. 

**Usages:**

* Refer to this Profile: [AT ELGA e-Medikation Medication Medikation](StructureDefinition-at-elga-emed-medication-medikation.md)
* Examples for this Profile: [Substance/At-Emed-Example-Substance-Clotrimazol](Substance-At-Emed-Example-Substance-Clotrimazol.md) and [Substance/At-Emed-Example-Substance-Hydrocortison](Substance-At-Emed-Example-Substance-Hydrocortison.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-substance-wirkstoff.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-emed-substance-wirkstoff.csv), [Excel](StructureDefinition-at-elga-emed-substance-wirkstoff.xlsx), [Schematron](StructureDefinition-at-elga-emed-substance-wirkstoff.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-substance-wirkstoff",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-substance-wirkstoff",
  "version" : "0.1.1",
  "name" : "AtElgaEmedSubstanceWirkstoff",
  "title" : "At ELGA e-Medikation Substance Wirkstoff",
  "status" : "draft",
  "date" : "2026-05-30T06:37:24+00:00",
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
  "description" : "Dokumentation des Wirkstoffs eines Arzneimittels in der ELGA e-Medikation, sofern es nicht kodiert vorliegt.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "orim",
    "uri" : "http://hl7.org/orim",
    "name" : "Ontological RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Substance",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Substance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Substance",
      "path" : "Substance"
    }]
  }
}

```
