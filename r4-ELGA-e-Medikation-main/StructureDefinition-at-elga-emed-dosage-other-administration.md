# HL7.AT.FHIR.ELGA.EMED.R4\AtElgaEmedDosageOtherAdministration - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtElgaEmedDosageOtherAdministration**

## Data Type Profile: AtElgaEmedDosageOtherAdministration 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-dosage-other-administration | *Version*:0.1.1 | |
| Draft as of 2026-08-31 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtElgaEmedDosageOtherAdministration |

**Usages:**

* Use this DataType Profile: [At ELGA e-Medikation MedicationRequest Planeintrag](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-dosage-other-administration.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-emed-dosage-other-administration.csv), [Excel](StructureDefinition-at-elga-emed-dosage-other-administration.xlsx), [Schematron](StructureDefinition-at-elga-emed-dosage-other-administration.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-dosage-other-administration",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-dosage-other-administration",
  "version" : "0.1.1",
  "name" : "AtElgaEmedDosageOtherAdministration",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Dosage",
  "baseDefinition" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-dosage-dosierung",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Dosage.extension:DosageCategory",
      "path" : "Dosage.extension",
      "sliceName" : "DosageCategory"
    },
    {
      "id" : "Dosage.extension:DosageCategory.value[x]",
      "path" : "Dosage.extension.value[x]",
      "fixedCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/AtElgaEmedCodeSystemDosageCategory",
          "code" : "other"
        }]
      }
    }]
  }
}

```
