# HL7.AT.FHIR.ELGA.EMED.R4\ELGA e-Med Substanz - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA e-Med Substanz**

## Resource Profile: ELGA e-Med Substanz 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-substance | *Version*:0.1.1 | |
| Draft as of 2026-03-24 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEmedSubstance |

 
Dokumentation der Substanz eines Inhaltsstoffes eines Arzneimittels, sofern es nicht kodiert vorliegt. 

**Usages:**

* Refer to this Profile: [ELGA e-Med Medikation](StructureDefinition-at-emed-medication.md)
* Examples for this Profile: [Substance/At-Emed-Example-Substance-Clotrimazol](Substance-At-Emed-Example-Substance-Clotrimazol.md) and [Substance/At-Emed-Example-Substance-Hydrocortison](Substance-At-Emed-Example-Substance-Hydrocortison.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/at-emed-substance)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-emed-substance.csv), [Excel](StructureDefinition-at-emed-substance.xlsx), [Schematron](StructureDefinition-at-emed-substance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-emed-substance",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-substance",
  "version" : "0.1.1",
  "name" : "AtEmedSubstance",
  "title" : "ELGA e-Med Substanz",
  "status" : "draft",
  "date" : "2026-03-24T10:00:40+00:00",
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
  "description" : "Dokumentation der Substanz eines Inhaltsstoffes eines Arzneimittels, sofern es nicht kodiert vorliegt.",
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
