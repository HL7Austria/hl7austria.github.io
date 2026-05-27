# HL7.AT.FHIR.ELGA.EMED.R4\At ELGA e-Medikation Substance Substanz - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **At ELGA e-Medikation Substance Substanz**

## Resource Profile: At ELGA e-Medikation Substance Substanz 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-substance-substanz | *Version*:0.1.1 | |
| Draft as of 2026-05-27 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtElgaEmedSubstanceSubstanz |

 
Dokumentation der Substanz eines Inhaltsstoffes eines Arzneimittels in der ELGA e-Medikation, sofern es nicht kodiert vorliegt. 

**Usages:**

* Refer to this Profile: [AT ELGA e-Medikation Medication Medikation](StructureDefinition-at-elga-emed-medication-medikation.md)
* Examples for this Profile: [Substance/At-Emed-Example-Substance-Clotrimazol](Substance-At-Emed-Example-Substance-Clotrimazol.md) and [Substance/At-Emed-Example-Substance-Hydrocortison](Substance-At-Emed-Example-Substance-Hydrocortison.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-substance-substanz.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-emed-substance-substanz.csv), [Excel](StructureDefinition-at-elga-emed-substance-substanz.xlsx), [Schematron](StructureDefinition-at-elga-emed-substance-substanz.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-substance-substanz",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-substance-substanz",
  "version" : "0.1.1",
  "name" : "AtElgaEmedSubstanceSubstanz",
  "title" : "At ELGA e-Medikation Substance Substanz",
  "status" : "draft",
  "date" : "2026-05-27T13:46:49+00:00",
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
  "description" : "Dokumentation der Substanz eines Inhaltsstoffes eines Arzneimittels in der ELGA e-Medikation, sofern es nicht kodiert vorliegt.",
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
