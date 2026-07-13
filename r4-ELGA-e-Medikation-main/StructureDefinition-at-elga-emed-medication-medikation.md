# HL7.AT.FHIR.ELGA.EMED.R4\AT ELGA e-Medikation Medication Medikation - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT ELGA e-Medikation Medication Medikation**

## Resource Profile: AT ELGA e-Medikation Medication Medikation 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-medikation | *Version*:0.1.1 | |
| Draft as of 2026-07-13 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtElgaEmedMedicationMedikation |

 
Bildet ein Arzneimittel in der "Medication"-Ressource ab. Wird grundsätzlich verwendet in Planeintrag, Geplanter Abgabe und Durchgeführter Abgabe. 

**Usages:**

* Refer to this Profile: [AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md), [At ELGA e-Medikation MedicationRequest Geplante Abgabe](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md) and [At ELGA e-Medikation MedicationRequest Planeintrag](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md)
* Examples for this Profile: [Medication/At-Emed-Example-Medication-Magistral-01](Medication-At-Emed-Example-Medication-Magistral-01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-medication-medikation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-emed-medication-medikation.csv), [Excel](StructureDefinition-at-elga-emed-medication-medikation.xlsx), [Schematron](StructureDefinition-at-elga-emed-medication-medikation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-medication-medikation",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-medikation",
  "version" : "0.1.1",
  "name" : "AtElgaEmedMedicationMedikation",
  "title" : "AT ELGA e-Medikation Medication Medikation",
  "status" : "draft",
  "date" : "2026-07-13T07:52:05+00:00",
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
  "description" : "Bildet ein Arzneimittel in der \"Medication\"-Ressource ab. Wird grundsätzlich verwendet in Planeintrag, Geplanter Abgabe und Durchgeführter Abgabe.",
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
    },
    {
      "id" : "Medication.identifier",
      "path" : "Medication.identifier",
      "short" : "Eindeutiger Identifikator für das Arzneimittel. Wird nicht benötigt, da PZN, sofern vorhanden, im Code angegeben wird.",
      "max" : "0"
    },
    {
      "id" : "Medication.code",
      "path" : "Medication.code",
      "short" : "Code des Arzneimittels. Hier muss die Pharmazentralnummer (PZN) aus der ASP-Liste angegeben werden, sofern vorhanden.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://termgit.elga.gv.at/CodeSystem/asp-liste"
      }
    },
    {
      "id" : "Medication.status",
      "path" : "Medication.status",
      "short" : "Verfügbarkeitsstatus des Arzneimittels:(req) active | inactive | entered-in-error. https://hl7.org/fhir/R4/valueset-medication-status.html.\n Keine Verwendung im Kontext Planeintrag.",
      "max" : "0"
    },
    {
      "id" : "Medication.manufacturer",
      "path" : "Medication.manufacturer",
      "short" : "Der Hersteller des Arzneimittels. Keine Verwendung im Kontext Planeintrag.",
      "max" : "0"
    },
    {
      "id" : "Medication.form",
      "path" : "Medication.form",
      "short" : "Die Darreichungsform des Arzneimittels. Wenn PZN vorhanden 0..0, da Anreicherung aus ASP-Liste durch Fachanwendung.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://termgit.elga.gv.at/ValueSet-elga-medikationmengenart"
      }
    },
    {
      "id" : "Medication.amount",
      "path" : "Medication.amount",
      "short" : "Die Gesamtmenge des Arzneimittels in der Verpackung. \nWenn PZN vorhanden 0..0, da Anreicherung aus ASP-Liste durch Fachanwendung.",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient",
      "path" : "Medication.ingredient",
      "short" : "Wirkstoffe. Keine Angabe, wenn PZN vorhanden (Anreicherung aus ASP-Liste durch Fachanwendung).",
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
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-substance-wirkstoff"],
        "aggregation" : ["contained"]
      }]
    },
    {
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept",
      "path" : "Medication.ingredient.item[x]",
      "sliceName" : "itemCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x]:itemReference",
      "path" : "Medication.ingredient.item[x]",
      "sliceName" : "itemReference",
      "short" : "Referenz auf Ressourcen Substance im Fall von magistraler Anwendung.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-substance-wirkstoff"],
        "aggregation" : ["contained"]
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
