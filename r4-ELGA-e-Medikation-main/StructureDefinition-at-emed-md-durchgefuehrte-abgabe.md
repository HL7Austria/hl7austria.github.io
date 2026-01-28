# HL7.AT.FHIR.ELGA.EMED.R4\ELGA e-Medikation Durchgeführte Abgabe - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA e-Medikation Durchgeführte Abgabe**

## Resource Profile: ELGA e-Medikation Durchgeführte Abgabe 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-md-durchgefuehrte-abgabe | *Version*:0.1.1 | |
| Draft as of 2026-01-28 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEmedMDDurchgefuehrteAbgabe |

 
ELGA e-Medikation Durchgeführte Abgabe 

**Usages:**

* Examples for this Profile: [MedicationDispense/AtEmedExampleDurchgefuehrteAbgabe01](MedicationDispense-AtEmedExampleDurchgefuehrteAbgabe01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/at-emed-md-durchgefuehrte-abgabe)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-emed-md-durchgefuehrte-abgabe.csv), [Excel](StructureDefinition-at-emed-md-durchgefuehrte-abgabe.xlsx), [Schematron](StructureDefinition-at-emed-md-durchgefuehrte-abgabe.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-emed-md-durchgefuehrte-abgabe",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-md-durchgefuehrte-abgabe",
  "version" : "0.1.1",
  "name" : "AtEmedMDDurchgefuehrteAbgabe",
  "title" : "ELGA e-Medikation Durchgeführte Abgabe",
  "status" : "draft",
  "date" : "2026-01-28T19:29:09+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://elga.gv.at"
        }
      ]
    },
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://elga.gv.at",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "ELGA e-Medikation Durchgeführte Abgabe",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "rx-dispense-rmim",
      "uri" : "http://www.hl7.org/v3/PORX_RM020070UV",
      "name" : "V3 Pharmacy Dispense RMIM"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationDispense",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationDispense",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationDispense",
        "path" : "MedicationDispense"
      }
    ]
  }
}

```
