# AT ELGA e-Medikation Medication Magistrale Medikation - ELGA e-Medikation (R4) DRAFT v0.1.0

## Resource Profile: AT ELGA e-Medikation Medication Magistrale Medikation 

Dieser Teil der Spezifikation wird noch erarbeitet und im nächsten Ballot zur Verfügung gestellt. Feedback aus der Community ist erwünscht.

**Usages:**

* Use this Profile: [AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md) and [At ELGA e-Medikation MedicationRequest Base](StructureDefinition-at-elga-emed-medicationrequest-base.md)
* Refer to this Profile: [AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md), [At ELGA e-Medikation MedicationRequest Geplante Abgabe](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md) and [At ELGA e-Medikation MedicationRequest Planeintrag](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md)
* Examples for this Profile: [Medication/At-Emed-Example-Medication-Magistral-01](Medication-At-Emed-Example-Medication-Magistral-01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-medication-magistrale-zubereitung.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-medication-magistrale-zubereitung.csv), [Excel](../StructureDefinition-at-elga-emed-medication-magistrale-zubereitung.xlsx), [Schematron](../StructureDefinition-at-elga-emed-medication-magistrale-zubereitung.sch) 



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
  "date" : "2026-10-21T10:08:52+00:00",
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
      "short" : "Technische id der Ressource",
      "min" : 1,
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
      "mustSupport" : true
    },
    {
      "id" : "Medication.text.div",
      "path" : "Medication.text.div",
      "mustSupport" : true
    },
    {
      "id" : "Medication.extension",
      "path" : "Medication.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Medication.extension:Rezeptur",
      "path" : "Medication.extension",
      "sliceName" : "Rezeptur",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-rezeptur"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Medication.extension:Rezeptur.value[x]",
      "path" : "Medication.extension.value[x]",
      "short" : "Angabe der Rezeptur für die Zubereitung"
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
      "mustSupport" : true
    },
    {
      "id" : "Medication.code.text",
      "path" : "Medication.code.text",
      "short" : "Titel der Medikation",
      "min" : 1,
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
      "id" : "Medication.amount.numerator.comparator",
      "path" : "Medication.amount.numerator.comparator",
      "short" : "Fachliche Begründung: TODO",
      "max" : "0"
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
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "isActive"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Wirkstoffe.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient:activeIngredient",
      "path" : "Medication.ingredient",
      "sliceName" : "activeIngredient",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient:activeIngredient.modifierExtension",
      "path" : "Medication.ingredient.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Medication.ingredient:activeIngredient.item[x]",
      "path" : "Medication.ingredient.item[x]",
      "short" : "Inhaltsstoff codiert. Wirkstoff-Codes stammen aus der ATC-Klassifikation (Anatomical Therapeutic Chemical Classification), die von der WHO herausgegeben wird. Weitere Codes, wie auch die deutsche Bezeichnung der Codes, entsprechen dem GKV-Arzneimittelindex im Wissenschaftlichen Institut der AOK (WidO), AOK Bundesverband GbR, Deutschland, welcher auf den WHO ATC basiert. Zusätzlich kommen ergänzende Codes aus dem Arzneimittelverzeichnis der AGES zum Einsatz.",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient:activeIngredient.item[x].coding",
      "path" : "Medication.ingredient.item[x].coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient:activeIngredient.item[x].coding:ATCWidO",
      "path" : "Medication.ingredient.item[x].coding",
      "sliceName" : "ATCWidO",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/AtElgaEmedValueSetATC"
      }
    },
    {
      "id" : "Medication.ingredient:activeIngredient.item[x].coding:ATCWidO.system",
      "path" : "Medication.ingredient.item[x].coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient:activeIngredient.item[x].coding:ATCWidO.version",
      "path" : "Medication.ingredient.item[x].coding.version",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient:activeIngredient.item[x].coding:ATCWidO.code",
      "path" : "Medication.ingredient.item[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient:activeIngredient.item[x].coding:ATCWidO.display",
      "path" : "Medication.ingredient.item[x].coding.display",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient:activeIngredient.item[x].coding:WirkstoffeAges",
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
      "id" : "Medication.ingredient:activeIngredient.item[x].coding:WirkstoffeAges.system",
      "path" : "Medication.ingredient.item[x].coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient:activeIngredient.item[x].coding:WirkstoffeAges.version",
      "path" : "Medication.ingredient.item[x].coding.version",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient:activeIngredient.item[x].coding:WirkstoffeAges.code",
      "path" : "Medication.ingredient.item[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient:activeIngredient.item[x].coding:WirkstoffeAges.display",
      "path" : "Medication.ingredient.item[x].coding.display",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient:activeIngredient.item[x].text",
      "path" : "Medication.ingredient.item[x].text",
      "short" : "Fachliche Begründung: TODO",
      "max" : "0"
    },
    {
      "id" : "Medication.ingredient:activeIngredient.isActive",
      "path" : "Medication.ingredient.isActive",
      "min" : 1,
      "patternBoolean" : true,
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient:activeIngredient.strength",
      "path" : "Medication.ingredient.strength",
      "short" : "Menge der vorhandenen Zutaten.",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient:inactiveIngredient",
      "path" : "Medication.ingredient",
      "sliceName" : "inactiveIngredient",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient:inactiveIngredient.modifierExtension",
      "path" : "Medication.ingredient.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Medication.ingredient:inactiveIngredient.item[x]",
      "path" : "Medication.ingredient.item[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient:inactiveIngredient.item[x].text",
      "path" : "Medication.ingredient.item[x].text",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient:inactiveIngredient.isActive",
      "path" : "Medication.ingredient.isActive",
      "min" : 1,
      "patternBoolean" : false,
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient:inactiveIngredient.strength",
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
