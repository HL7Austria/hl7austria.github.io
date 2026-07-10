# HL7.AT.FHIR.ELGA.EMED.R4\AT ELGA e-Medikation List Medikationsplan - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT ELGA e-Medikation List Medikationsplan**

## Resource Profile: AT ELGA e-Medikation List Medikationsplan 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-list-medikationsplan | *Version*:0.1.1 | |
| Draft as of 2026-07-10 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtElgaEmedListMedikationsplan |

 
Der Medikationsplan eines ELGA-Teilnehmers bzw. einer ELGA-Teilnehmerin wird durch eine List-Ressource abgebildet. Diese enthält 0..* Einträge (List.entry), wobei jedes Entry genau eine Referenz auf einen Medikationsplaneintrag (MedicationRequest) in List.entry.item beinhaltet. Die Reihenfolge der Einträge kann durch den GDA festgelegt werden. Jeder Listeneintrag enthält im Element List.entry.flag den Änderungsstatus des jeweiligen Medikationsplaneintrags. 

**Usages:**

* Use this Profile: [AT ELGA e-Medikation Collection Bundle Medikationsplan](StructureDefinition-at-elga-emed-bundle-medikationsplan.md) and [AT ELGA e-Medikation Transaction Bundle Medikationsplan](StructureDefinition-at-elga-emed-bundle-medikationsplantx.md)
* Examples for this Profile: [List/At-Emed-Journey-01-List-Medikationsplan](List-At-Emed-Journey-01-List-Medikationsplan.md), [List/At-Emed-Journey-02-List-Medikationsplan](List-At-Emed-Journey-02-List-Medikationsplan.md), [List/At-Emed-Journey-05-a-List-Reihenfolge](List-At-Emed-Journey-05-a-List-Reihenfolge.md) and [List/At-Emed-Journey-05-b-List-Aenderung](List-At-Emed-Journey-05-b-List-Aenderung.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-list-medikationsplan.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-emed-list-medikationsplan.csv), [Excel](StructureDefinition-at-elga-emed-list-medikationsplan.xlsx), [Schematron](StructureDefinition-at-elga-emed-list-medikationsplan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-list-medikationsplan",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-list-medikationsplan",
  "version" : "0.1.1",
  "name" : "AtElgaEmedListMedikationsplan",
  "title" : "AT ELGA e-Medikation List Medikationsplan",
  "status" : "draft",
  "date" : "2026-07-10T13:02:50+00:00",
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
  "description" : "Der Medikationsplan eines ELGA-Teilnehmers bzw. einer ELGA-Teilnehmerin wird durch eine List-Ressource abgebildet. \nDiese enthält 0..* Einträge (List.entry), wobei jedes Entry genau eine Referenz auf einen Medikationsplaneintrag (MedicationRequest) in List.entry.item beinhaltet.\nDie Reihenfolge der Einträge kann durch den GDA festgelegt werden. Jeder Listeneintrag enthält im Element List.entry.flag den Änderungsstatus des jeweiligen Medikationsplaneintrags.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "List",
  "baseDefinition" : "https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-list",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "List.code",
      "path" : "List.code",
      "fixedCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "736378000",
          "display" : "Medikationsplan"
        }]
      }
    },
    {
      "id" : "List.entry.item",
      "path" : "List.entry.item",
      "short" : "Referenz auf einen Medikationsplaneintrag.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"]
      }]
    }]
  }
}

```
