# HL7.AT.FHIR.ELGA.EMED.R4\ELGA e-Med Timing - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA e-Med Timing**

## Data Type Profile: ELGA e-Med Timing 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-timing | *Version*:0.1.1 | |
| Draft as of 2026-02-23 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEmedTiming |

 
**Beschreibung:** Timing 

**Usages:**

* This DataType Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/at-emed-timing)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-emed-timing.csv), [Excel](StructureDefinition-at-emed-timing.xlsx), [Schematron](StructureDefinition-at-emed-timing.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-emed-timing",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-timing",
  "version" : "0.1.1",
  "name" : "AtEmedTiming",
  "title" : "ELGA e-Med Timing",
  "status" : "draft",
  "date" : "2026-02-23T08:57:08+00:00",
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
  "description" : "**Beschreibung:** Timing",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Timing",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Timing",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Timing",
      "path" : "Timing"
    }]
  }
}

```
