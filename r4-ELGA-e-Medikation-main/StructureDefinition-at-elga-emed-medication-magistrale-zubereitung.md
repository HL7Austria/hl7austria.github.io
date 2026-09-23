# HL7.AT.FHIR.ELGA.EMED.R4\AT ELGA e-Medikation Medication Magistrale Medikation - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT ELGA e-Medikation Medication Magistrale Medikation**

## Resource Profile: AT ELGA e-Medikation Medication Magistrale Medikation 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-magistrale-zubereitung | *Version*:0.1.0 | |
| Draft as of 2026-09-23 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtElgaEmedMedicationMagistraleZubereitung |

 
Bildet eine Magistrale Zubereitung in der "Medication"-Ressource ab. Wird grundsätzlich verwendet in Planeintrag, Geplanter Abgabe und Durchgeführter Abgabe. 

**Usages:**

* Use this Profile: [At ELGA e-Medikation MedicationRequest Geplante Abgabe](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md)
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
  "date" : "2026-09-23T05:33:05+00:00",
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
      "id" : "Medication.id",
      "path" : "Medication.id",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.meta",
      "path" : "Medication.meta",
      "mustSupport" : true
    },
    {
      "id" : "Medication.implicitRules",
      "path" : "Medication.implicitRules",
      "max" : "0"
    },
    {
      "id" : "Medication.text",
      "path" : "Medication.text",
      "mustSupport" : true
    },
    {
      "id" : "Medication.code",
      "path" : "Medication.code",
      "short" : "Code des Arzneimittels.",
      "mustSupport" : true
    },
    {
      "id" : "Medication.status",
      "path" : "Medication.status",
      "short" : "Keine Verwendung. Entered-in-error führt zu inkonsistenten Zuständen.",
      "max" : "0"
    },
    {
      "id" : "Medication.form",
      "path" : "Medication.form",
      "short" : "Die Darreichungsform des Arzneimittels.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://termgit.elga.gv.at/ValueSet/elga-medikationdarreichungsform"
      }
    },
    {
      "id" : "Medication.amount",
      "path" : "Medication.amount",
      "short" : "Die Gesamtmenge des Arzneimittels in der Verpackung.",
      "mustSupport" : true
    },
    {
      "id" : "Medication.amount.numerator",
      "path" : "Medication.amount.numerator",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.amount.numerator.code",
      "path" : "Medication.amount.numerator.code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://termgit.elga.gv.at/ValueSet-elga-medikationmengenart"
      }
    },
    {
      "id" : "Medication.amount.denominator.value",
      "path" : "Medication.amount.denominator.value",
      "patternDecimal" : 1
    },
    {
      "id" : "Medication.amount.denominator.unit",
      "path" : "Medication.amount.denominator.unit",
      "max" : "0"
    },
    {
      "id" : "Medication.amount.denominator.code",
      "path" : "Medication.amount.denominator.code",
      "max" : "0"
    },
    {
      "id" : "Medication.ingredient",
      "path" : "Medication.ingredient",
      "short" : "Wirkstoffe.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x]",
      "path" : "Medication.ingredient.item[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-substance-wirkstoff",
        "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-standard-medikation"]
      }]
    },
    {
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept",
      "path" : "Medication.ingredient.item[x]",
      "sliceName" : "itemCodeableConcept",
      "short" : "Inhaltsstoff codiert. Wirkstoff-Codes stammen aus der ATC-Klassifikation (Anatomical Therapeutic Chemical Classification), die von der WHO herausgegeben wird. Weitere Codes, wie auch die deutsche Bezeichnung der Codes, entsprechen dem GKV-Arzneimittelindex im Wissenschaftlichen Institut der AOK (WidO), AOK Bundesverband GbR, Deutschland, welcher auf den WHO ATC basiert. Zusätzlich kommen ergänzende Codes aus dem Arzneimittelverzeichnis der AGES zum Einsatz.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept.coding",
      "path" : "Medication.ingredient.item[x].coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept.coding:ATCWidO",
      "path" : "Medication.ingredient.item[x].coding",
      "sliceName" : "ATCWidO",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept.coding:ATCWidO.system",
      "path" : "Medication.ingredient.item[x].coding.system",
      "min" : 1,
      "patternUri" : "TODO"
    },
    {
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept.coding:WirkstoffeAges",
      "path" : "Medication.ingredient.item[x].coding",
      "sliceName" : "WirkstoffeAges",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://termgit.elga.gv.at/ValueSet/elga-wirkstoffe-ages"
      }
    },
    {
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept.coding:WirkstoffeAges.system",
      "path" : "Medication.ingredient.item[x].coding.system",
      "min" : 1
    },
    {
      "id" : "Medication.ingredient.item[x]:itemReference",
      "path" : "Medication.ingredient.item[x]",
      "sliceName" : "itemReference",
      "short" : "Referenz auf Substance oder enthaltene Medikation von magistraler Anwendung.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-substance-wirkstoff",
        "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-standard-medikation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.isActive",
      "path" : "Medication.ingredient.isActive",
      "short" : "Aktive Wirkstoff TRUE/FALSE",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.strength",
      "path" : "Medication.ingredient.strength",
      "short" : "Menge der vorhandenen Zutaten.",
      "mustSupport" : true
    },
    {
      "id" : "Medication.batch",
      "path" : "Medication.batch",
      "short" : "Informationen zur Charge des Arzneimittels.",
      "max" : "0"
    }]
  }
}

```
