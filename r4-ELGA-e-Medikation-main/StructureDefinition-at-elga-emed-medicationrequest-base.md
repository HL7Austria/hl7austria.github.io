# HL7.AT.FHIR.ELGA.EMED.R4\At ELGA e-Medikation MedicationRequest Base - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **At ELGA e-Medikation MedicationRequest Base**

## Resource Profile: At ELGA e-Medikation MedicationRequest Base 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-base | *Version*:0.1.1 | |
| Draft as of 2026-09-03 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtElgaEmedMedicationRequestBase |

 
Die Basis für alle in eMed verwendeten MedicationRequests 

**Usages:**

* Derived from this Profile: [At ELGA e-Medikation MedicationRequest Geplante Abgabe](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md) and [At ELGA e-Medikation MedicationRequest Planeintrag](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-medicationrequest-base.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-emed-medicationrequest-base.csv), [Excel](StructureDefinition-at-elga-emed-medicationrequest-base.xlsx), [Schematron](StructureDefinition-at-elga-emed-medicationrequest-base.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-medicationrequest-base",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-base",
  "version" : "0.1.1",
  "name" : "AtElgaEmedMedicationRequestBase",
  "title" : "At ELGA e-Medikation MedicationRequest Base",
  "status" : "draft",
  "date" : "2026-09-03T18:40:45+00:00",
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
  "description" : "Die Basis für alle in eMed verwendeten MedicationRequests",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
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
  "type" : "MedicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationRequest",
      "path" : "MedicationRequest",
      "constraint" : [{
        "key" : "allDosagesSameCategory",
        "severity" : "error",
        "human" : "Alle Dosierungsanweisungen eines MedicationRequest müssen dieselbe Dosierungskategorie aufweisen.",
        "expression" : "dosageInstruction.extension.where(url = 'https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-dosage-category').value.coding.code.distinct().count() = 1",
        "source" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-base"
      },
      {
        "key" : "FirstDosageSequenceNumberExists",
        "severity" : "error",
        "human" : "Wenn mehrere Dosierungsanweisungen vorhanden sind, muss mindestens eine davon die Sequenznummer 1 haben.",
        "expression" : "dosageInstruction.count() <= 1 or dosageInstruction.sequence.where($this = 1).exists()",
        "source" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-base"
      }]
    }]
  }
}

```
