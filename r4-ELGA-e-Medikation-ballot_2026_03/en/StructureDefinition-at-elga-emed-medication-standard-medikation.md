# AT ELGA e-Medikation Medication Profil für die Standardmedikation mit PZN - ELGA e-Medikation (R4) DRAFT v0.1.0

## Resource Profile: AT ELGA e-Medikation Medication Profil für die Standardmedikation mit PZN 

Dieser Teil der Spezifikation wird noch erarbeitet und im nächsten Ballot zur Verfügung gestellt. Feedback aus der Community ist erwünscht.

Die Übersetzungen der `short-descriptions` werden noch erarbeitet und im nächsten Ballot zur Verfügung gestellt.

**Usages:**

* Use this Profile: [AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md), [AT ELGA e-Medikation MedicationRequest Base](StructureDefinition-at-elga-emed-medicationrequest-base.md) and [AT ELGA e-Medikation MedicationRequest Geplante Abgabe](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md)
* Refer to this Profile: [AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md), [AT ELGA e-Medikation MedicationRequest Geplante Abgabe](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md) and [AT ELGA e-Medikation MedicationRequest Planeintrag](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md)
* Examples for this Profile: [Medication/at-emed-journey-medication-ramipril](Medication-at-emed-journey-medication-ramipril.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-medication-standard-medikation.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-medication-standard-medikation.csv), [Excel](../StructureDefinition-at-elga-emed-medication-standard-medikation.xlsx), [Schematron](../StructureDefinition-at-elga-emed-medication-standard-medikation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-medication-standard-medikation",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-standard-medikation",
  "version" : "0.1.0",
  "name" : "AtElgaEmedMedicationStandardMedikation",
  "title" : "AT ELGA e-Medikation Medication Profil für die Standardmedikation mit PZN",
  "status" : "draft",
  "date" : "2026-10-29T16:50:58+00:00",
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
      "id" : "Medication.id",
      "path" : "Medication.id",
      "short" : "Technische id der Ressource",
      "mustSupport" : true
    },
    {
      "id" : "Medication.meta",
      "path" : "Medication.meta",
      "mustSupport" : true
    },
    {
      "id" : "Medication.meta.profile",
      "path" : "Medication.meta.profile",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Medication.implicitRules",
      "path" : "Medication.implicitRules",
      "short" : "Fachliche Begründung: Die Ressource wird nach den Regeln dieses Implementierungsleitfadens interpretiert. Zusätzliche implizite Verarbeitungsregeln werden nicht verwendet.",
      "max" : "0"
    },
    {
      "id" : "Medication.text",
      "path" : "Medication.text",
      "mustSupport" : true
    },
    {
      "id" : "Medication.text.status",
      "path" : "Medication.text.status",
      "short" : "Siehe Notes - \"Regeln für den Inhalt der narrativen Teile in den Notes\".",
      "mustSupport" : true
    },
    {
      "id" : "Medication.text.div",
      "path" : "Medication.text.div",
      "mustSupport" : true
    },
    {
      "id" : "Medication.modifierExtension",
      "path" : "Medication.modifierExtension",
      "short" : "Fachliche Begründung: Für den Medikationsplan sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Medication.code",
      "path" : "Medication.code",
      "short" : "Code des Arzneimittels. Hier muss die Pharmazentralnummer (PZN) aus der ASP-Liste angegeben werden.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.code.coding",
      "path" : "Medication.code.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Medication.code.coding.system",
      "path" : "Medication.code.coding.system",
      "min" : 1,
      "fixedUri" : "https://termgit.elga.gv.at/CodeSystem/asp-liste",
      "mustSupport" : true
    },
    {
      "id" : "Medication.code.coding.version",
      "path" : "Medication.code.coding.version",
      "mustSupport" : true
    },
    {
      "id" : "Medication.code.coding.code",
      "path" : "Medication.code.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.code.coding.display",
      "path" : "Medication.code.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "Medication.code.text",
      "path" : "Medication.code.text",
      "max" : "0"
    },
    {
      "id" : "Medication.status",
      "path" : "Medication.status",
      "short" : "Verfügbarkeitsstatus des Arzneimittels:(req) active | inactive | entered-in-error. https://hl7.org/fhir/R4/valueset-medication-status.html.\n Keine Verwendung.",
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
      "id" : "Medication.form.coding",
      "path" : "Medication.form.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Medication.form.coding.system",
      "path" : "Medication.form.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.form.coding.version",
      "path" : "Medication.form.coding.version",
      "mustSupport" : true
    },
    {
      "id" : "Medication.form.coding.code",
      "path" : "Medication.form.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.form.coding.display",
      "path" : "Medication.form.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "Medication.form.text",
      "path" : "Medication.form.text",
      "max" : "0"
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
      "id" : "Medication.amount.numerator.comparator",
      "path" : "Medication.amount.numerator.comparator",
      "max" : "0"
    },
    {
      "id" : "Medication.amount.numerator.code",
      "path" : "Medication.amount.numerator.code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://termgit.elga.gv.at/ValueSet/elga-medikationmengenart"
      }
    },
    {
      "id" : "Medication.amount.denominator",
      "path" : "Medication.amount.denominator",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.amount.denominator.value",
      "path" : "Medication.amount.denominator.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.amount.denominator.comparator",
      "path" : "Medication.amount.denominator.comparator",
      "max" : "0"
    },
    {
      "id" : "Medication.amount.denominator.code",
      "path" : "Medication.amount.denominator.code",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://termgit.elga.gv.at/ValueSet/elga-medikationmengenart"
      }
    },
    {
      "id" : "Medication.ingredient",
      "path" : "Medication.ingredient",
      "short" : "Wirkstoffe.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.modifierExtension",
      "path" : "Medication.ingredient.modifierExtension",
      "short" : "Fachliche Begründung: Für den Medikationsplan sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Medication.ingredient.item[x]",
      "path" : "Medication.ingredient.item[x]",
      "short" : "Inhaltsstoff codiert. Wirkstoff-Codes stammen aus der ATC-Klassifikation (Anatomical Therapeutic Chemical Classification), die von der WHO herausgegeben wird. Weitere Codes, wie auch die deutsche Bezeichnung der Codes, entsprechen dem GKV-Arzneimittelindex im Wissenschaftlichen Institut der AOK (WidO), AOK Bundesverband GbR, Deutschland, welcher auf den WHO ATC basiert. Zusätzlich kommen ergänzende Codes aus dem Arzneimittelverzeichnis der AGES zum Einsatz.",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "constraint" : [{
        "key" : "at-emed-medication-ingredient-atcwido-oder-wirkstoffeages",
        "severity" : "error",
        "human" : "Der Wirkstoff muss entweder mit einem Code aus ATC (WIdO) oder aus dem AGES-Wirkstoffverzeichnis angegeben werden.",
        "expression" : "coding.where(system = 'https://termgit.elga.gv.at/CodeSystem/atc-deutsch-wido' or system = 'https://termgit.elga.gv.at/CodeSystem/medikation-ages-wirkstoffe').exists()",
        "source" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-standard-medikation"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x].coding",
      "path" : "Medication.ingredient.item[x].coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x].coding:ATCWidO",
      "path" : "Medication.ingredient.item[x].coding",
      "sliceName" : "ATCWidO",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x].coding:ATCWidO.system",
      "path" : "Medication.ingredient.item[x].coding.system",
      "min" : 1,
      "patternUri" : "https://termgit.elga.gv.at/CodeSystem/atc-deutsch-wido",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x].coding:ATCWidO.version",
      "path" : "Medication.ingredient.item[x].coding.version",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x].coding:ATCWidO.code",
      "path" : "Medication.ingredient.item[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x].coding:ATCWidO.display",
      "path" : "Medication.ingredient.item[x].coding.display",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x].coding:WirkstoffeAges",
      "path" : "Medication.ingredient.item[x].coding",
      "sliceName" : "WirkstoffeAges",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x].coding:WirkstoffeAges.system",
      "path" : "Medication.ingredient.item[x].coding.system",
      "min" : 1,
      "patternUri" : "https://termgit.elga.gv.at/CodeSystem/medikation-ages-wirkstoffe",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x].coding:WirkstoffeAges.version",
      "path" : "Medication.ingredient.item[x].coding.version",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x].coding:WirkstoffeAges.code",
      "path" : "Medication.ingredient.item[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x].coding:WirkstoffeAges.display",
      "path" : "Medication.ingredient.item[x].coding.display",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x].text",
      "path" : "Medication.ingredient.item[x].text",
      "max" : "0"
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
