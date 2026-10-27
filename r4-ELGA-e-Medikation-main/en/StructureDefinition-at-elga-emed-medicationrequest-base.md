# At ELGA e-Medikation MedicationRequest Base - ELGA e-Medikation (R4) DRAFT v0.1.0

## Resource Profile: At ELGA e-Medikation MedicationRequest Base 

**Usages:**

* Derived from this Profile: [At ELGA e-Medikation MedicationRequest Geplante Abgabe](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md) and [At ELGA e-Medikation MedicationRequest Planeintrag](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-medicationrequest-base.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-medicationrequest-base.csv), [Excel](../StructureDefinition-at-elga-emed-medicationrequest-base.xlsx), [Schematron](../StructureDefinition-at-elga-emed-medicationrequest-base.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-medicationrequest-base",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-base",
  "version" : "0.1.0",
  "name" : "AtElgaEmedMedicationRequestBase",
  "title" : "At ELGA e-Medikation MedicationRequest Base",
  "status" : "draft",
  "date" : "2026-10-27T20:05:18+00:00",
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
    },
    {
      "id" : "MedicationRequest.id",
      "path" : "MedicationRequest.id",
      "short" : "Technische id der Ressource",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.meta",
      "path" : "MedicationRequest.meta",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.meta.versionId",
      "path" : "MedicationRequest.meta.versionId",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.meta.lastUpdated",
      "path" : "MedicationRequest.meta.lastUpdated",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.meta.profile",
      "path" : "MedicationRequest.meta.profile",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.implicitRules",
      "path" : "MedicationRequest.implicitRules",
      "short" : "Fachliche Begründung: Die Ressource wird nach den Regeln dieses Implementierungsleitfadens interpretiert. Zusätzliche implizite Verarbeitungsregeln werden nicht verwendet.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.text",
      "path" : "MedicationRequest.text",
      "short" : "Narrative - wird immer durch die Fachanwendung generiert.",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.text.status",
      "path" : "MedicationRequest.text.status",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.text.div",
      "path" : "MedicationRequest.text.div",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.contained",
      "path" : "MedicationRequest.contained",
      "short" : "Es sind nur die hier definierten contained Medication-Ressourcen zulässig. Contained (eingebettete) Ressourcen werden nicht separat versioniert, sondern ausschließlich im Rahmen der übergeordneten Ressource versioniert.",
      "type" : [{
        "code" : "Medication",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-standard-medikation",
        "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-magistrale-zubereitung",
        "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-wirkstoff"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.modifierExtension",
      "path" : "MedicationRequest.modifierExtension",
      "short" : "Fachliche Begründung: Für den Medikationsplan sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.dosageInstruction",
      "path" : "MedicationRequest.dosageInstruction",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "extension.value.ofType(CodeableConcept).coding.code"
        }],
        "ordered" : false,
        "rules" : "closed"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction:freitextDosage",
      "path" : "MedicationRequest.dosageInstruction",
      "sliceName" : "freitextDosage",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Dosage",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-dosage-freetext-administration"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction:standardDosage",
      "path" : "MedicationRequest.dosageInstruction",
      "sliceName" : "standardDosage",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Dosage",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-dosage-standard-administration"]
      }],
      "mustSupport" : true
    }]
  }
}

```
