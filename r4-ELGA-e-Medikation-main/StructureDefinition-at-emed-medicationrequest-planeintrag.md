# HL7.AT.FHIR.ELGA.EMED.R4\ELGA e-Medikation Planeintrag - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA e-Medikation Planeintrag**

## Resource Profile: ELGA e-Medikation Planeintrag 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medicationrequest-planeintrag | *Version*:0.1.1 | |
| Draft as of 2026-01-22 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEmedMedicationRequestPlaneintrag |

 
**Beschreibung:** Bildet einen Eintrag eines Medikationsplans eines ELGA Teilnehmers ab. Er enthält genau ein verordnetes Arzneimittel und dessen Dosierung. Dient in weiterer Folge dazu, eine geplante Abgabe zu erstellen (AtEmedMedicationRequestGeplanteAbgabe). 

**Usages:**

* Refer to this Profile: [ELGA e-Medikation Geplante Abgabe](StructureDefinition-at-emed-medicationrequest-geplanteAbgabe.md)
* Examples for this Profile: [MedicationRequest/AtEmedExampleMedicationRequestPlaneintrag01](MedicationRequest-AtEmedExampleMedicationRequestPlaneintrag01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/at-emed-medicationrequest-planeintrag)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-emed-medicationrequest-planeintrag.csv), [Excel](StructureDefinition-at-emed-medicationrequest-planeintrag.xlsx), [Schematron](StructureDefinition-at-emed-medicationrequest-planeintrag.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-emed-medicationrequest-planeintrag",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medicationrequest-planeintrag",
  "version" : "0.1.1",
  "name" : "AtEmedMedicationRequestPlaneintrag",
  "title" : "ELGA e-Medikation Planeintrag",
  "status" : "draft",
  "date" : "2026-01-22T09:24:15+00:00",
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
  "description" : "**Beschreibung:** Bildet einen Eintrag eines Medikationsplans eines ELGA Teilnehmers ab. Er enthält genau ein verordnetes Arzneimittel und dessen Dosierung. Dient in weiterer Folge dazu, eine geplante Abgabe zu erstellen (AtEmedMedicationRequestGeplanteAbgabe).",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationRequest",
        "path" : "MedicationRequest"
      },
      {
        "id" : "MedicationRequest.status",
        "path" : "MedicationRequest.status",
        "short" : "active | aktiv"
      }
    ]
  }
}

```
