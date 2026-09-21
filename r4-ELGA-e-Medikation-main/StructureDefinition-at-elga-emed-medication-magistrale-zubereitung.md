# HL7.AT.FHIR.ELGA.EMED.R4\AT ELGA e-Medikation Medication Magistrale Medikation - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT ELGA e-Medikation Medication Magistrale Medikation**

## Resource Profile: AT ELGA e-Medikation Medication Magistrale Medikation 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-magistrale-zubereitung | *Version*:0.1.0 | |
| Draft as of 2026-09-21 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtElgaEmedMedicationMagistraleZubereitung |

 
Bildet eine Magistrale Zubereitung in der "Medication"-Ressource ab. Wird grundsätzlich verwendet in Planeintrag, Geplanter Abgabe und Durchgeführter Abgabe. 

**Usages:**

* Refer to this Profile: [AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md), [At ELGA e-Medikation MedicationRequest Geplante Abgabe](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md) and [At ELGA e-Medikation MedicationRequest Planeintrag](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md)
* Examples for this Profile: [Medication/At-Emed-Example-Medication-Magistral-01](Medication-At-Emed-Example-Medication-Magistral-01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-medication-magistrale-zubereitung.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-emed-medication-magistrale-zubereitung.csv), [Excel](StructureDefinition-at-elga-emed-medication-magistrale-zubereitung.xlsx), [Schematron](StructureDefinition-at-elga-emed-medication-magistrale-zubereitung.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-medication-magistrale-zubereitung",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-magistrale-zubereitung",
  "version" : "0.1.0",
  "name" : "AtElgaEmedMedicationMagistraleZubereitung",
  "title" : "AT ELGA e-Medikation Medication Magistrale Medikation",
  "status" : "draft",
  "date" : "2026-09-21T11:37:47+00:00",
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
  "description" : "Bildet eine Magistrale Zubereitung in der \"Medication\"-Ressource ab. Wird grundsätzlich verwendet in Planeintrag, Geplanter Abgabe und Durchgeführter Abgabe.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "script10.6",
    "uri" : "http://ncpdp.org/SCRIPT10_6",
    "name" : "Mapping to NCPDP SCRIPT 10.6"
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Medication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Medication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Medication",
      "path" : "Medication"
    }]
  }
}

```
