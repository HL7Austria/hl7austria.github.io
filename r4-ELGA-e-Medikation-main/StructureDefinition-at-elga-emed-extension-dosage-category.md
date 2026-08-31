# HL7.AT.FHIR.ELGA.EMED.R4\AT ELGA e-Medikation Extension Dosierungskategorie - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT ELGA e-Medikation Extension Dosierungskategorie**

## Extension: AT ELGA e-Medikation Extension Dosierungskategorie 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-dosage-category | *Version*:0.1.1 | |
| Draft as of 2026-08-31 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtElgaEmedExtensionDosageCategory |

AT ELGA e-Medikation Extension Dosierungskategorie

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [AT ELGA e-Medikation Dosage Dosierung](StructureDefinition-at-elga-emed-dosage-dosierung.md)
* Examples for this Extension: [Bundle/At-Emed-Journey-02-Bundle-Medikationsplan](Bundle-At-Emed-Journey-02-Bundle-Medikationsplan.md), [Bundle/At-Emed-Journey-02-Bundle-Tx-Medikationsplan](Bundle-At-Emed-Journey-02-Bundle-Tx-Medikationsplan.md), [Bundle/At-Emed-Journey-05-a-Bundle-Medikationsplan-Tx](Bundle-At-Emed-Journey-05-a-Bundle-Medikationsplan-Tx.md), [Bundle/At-Emed-Journey-05-a-Bundle-Medikationsplan](Bundle-At-Emed-Journey-05-a-Bundle-Medikationsplan.md)... Show 12 more, [Bundle/At-Emed-Journey-05-b-Bundle-Medikationsplan](Bundle-At-Emed-Journey-05-b-Bundle-Medikationsplan.md), [Bundle/At-Emed-Journey-05-b-Bundle-Tx-Medikationsplan](Bundle-At-Emed-Journey-05-b-Bundle-Tx-Medikationsplan.md), [MedicationRequest/At-Emed-Example-Mr-Dosierung-Timed](MedicationRequest-At-Emed-Example-Mr-Dosierung-Timed.md), [MedicationRequest/At-Emed-Example-Mr-Geplante-Abgabe](MedicationRequest-At-Emed-Example-Mr-Geplante-Abgabe.md), [MedicationRequest/At-Emed-Example-Mr-Planeintrag](MedicationRequest-At-Emed-Example-Mr-Planeintrag.md), [MedicationRequest/At-Emed-Journey-02-Mr-Planeintrag-01](MedicationRequest-At-Emed-Journey-02-Mr-Planeintrag-01.md), [MedicationRequest/At-Emed-Journey-02-Mr-Planeintrag-02](MedicationRequest-At-Emed-Journey-02-Mr-Planeintrag-02.md), [MedicationRequest/At-Emed-Journey-03-Mr-Geplante-Abgabe](MedicationRequest-At-Emed-Journey-03-Mr-Geplante-Abgabe.md), [MedicationRequest/At-Emed-Journey-05-b-Mr-Planeintrag-01](MedicationRequest-At-Emed-Journey-05-b-Mr-Planeintrag-01.md), [MedicationRequest/AtEmedExampleDosageStandardAdministration1](MedicationRequest-AtEmedExampleDosageStandardAdministration1.md), [MedicationRequest/AtEmedExampleDosageStandardAdministration2](MedicationRequest-AtEmedExampleDosageStandardAdministration2.md) and [MedicationRequest/AtEmedExampleDosageStandardAdministration3](MedicationRequest-AtEmedExampleDosageStandardAdministration3.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-extension-dosage-category.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-emed-extension-dosage-category.csv), [Excel](StructureDefinition-at-elga-emed-extension-dosage-category.xlsx), [Schematron](StructureDefinition-at-elga-emed-extension-dosage-category.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-extension-dosage-category",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-dosage-category",
  "version" : "0.1.1",
  "name" : "AtElgaEmedExtensionDosageCategory",
  "title" : "AT ELGA e-Medikation Extension Dosierungskategorie",
  "status" : "draft",
  "date" : "2026-08-31T18:38:38+00:00",
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
  "description" : "AT ELGA e-Medikation Extension Dosierungskategorie",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Dosage"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "AT ELGA e-Medikation Extension Dosierungskategorie",
      "definition" : "AT ELGA e-Medikation Extension Dosierungskategorie"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-dosage-category"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "Code für die Art der Dosierung",
        "valueSet" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/AtElgaEmedValueSetDosageCategory"
      }
    }]
  }
}

```
