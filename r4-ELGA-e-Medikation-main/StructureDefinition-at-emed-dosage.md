# HL7.AT.FHIR.ELGA.EMED.R4\ELGA e-Med Dosage - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA e-Med Dosage**

## Data Type Profile: ELGA e-Med Dosage 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-dosage | *Version*:0.1.1 | |
| Draft as of 2026-02-20 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEmedDosage |

 
**Beschreibung:** Dosage 

**Usages:**

* This DataType Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/at-emed-dosage)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-emed-dosage.csv), [Excel](StructureDefinition-at-emed-dosage.xlsx), [Schematron](StructureDefinition-at-emed-dosage.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-emed-dosage",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-dosage",
  "version" : "0.1.1",
  "name" : "AtEmedDosage",
  "title" : "ELGA e-Med Dosage",
  "status" : "draft",
  "date" : "2026-02-20T10:02:53+00:00",
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
  "description" : "**Beschreibung:** Dosage",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Dosage",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Dosage",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Dosage",
      "path" : "Dosage"
    }]
  }
}

```
