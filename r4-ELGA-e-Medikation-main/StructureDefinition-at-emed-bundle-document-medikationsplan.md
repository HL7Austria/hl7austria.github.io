# HL7.AT.FHIR.ELGA.EMED.R4\ELGA e-Medikation Document Bundle Medikationsplan - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA e-Medikation Document Bundle Medikationsplan**

## Resource Profile: ELGA e-Medikation Document Bundle Medikationsplan 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-bundle-document-medikationsplan | *Version*:0.1.1 | |
| Draft as of 2026-01-26 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEmedBundleDocumentMedikationsplan |

 
**Beschreibung:** ELGA e-Medikation Document Bundle zur Anzeige des Medikationsplans mit allen Medikationsplaneinträgen. Beinhaltet: 
* Medikationsplan (List)
* Medikationsplaneinträge (MedicationRequest)
* Referenzen zu geplanten Abgaben (entsprechen Rezepten)
 
Bundle (type=document) ├─ Composition (AtEmedCompositionMedikationsplan) ├─ MedicationRequest 1 (AtEmedMedicationRequestPlaneintrag) ├─ MedicationRequest 2 (AtEmedMedicationRequestPlaneintrag) └─ List (referenziert 1+2) (AtEmedListMedikationsplan) 

**Usages:**

* Examples for this Profile: [Bundle/AtEmedExampleBundleDocumentMedikationsplan01](Bundle-AtEmedExampleBundleDocumentMedikationsplan01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/at-emed-bundle-document-medikationsplan)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-emed-bundle-document-medikationsplan.csv), [Excel](StructureDefinition-at-emed-bundle-document-medikationsplan.xlsx), [Schematron](StructureDefinition-at-emed-bundle-document-medikationsplan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-emed-bundle-document-medikationsplan",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-bundle-document-medikationsplan",
  "version" : "0.1.1",
  "name" : "AtEmedBundleDocumentMedikationsplan",
  "title" : "ELGA e-Medikation Document Bundle Medikationsplan",
  "status" : "draft",
  "date" : "2026-01-26T15:48:48+00:00",
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
  "description" : "**Beschreibung:** ELGA e-Medikation Document Bundle zur Anzeige des Medikationsplans mit allen Medikationsplaneinträgen. \nBeinhaltet:\n- Medikationsplan (List)\n- Medikationsplaneinträge (MedicationRequest)\n- Referenzen zu geplanten Abgaben (entsprechen Rezepten)\n\nBundle (type=document)\n ├─ Composition  (AtEmedCompositionMedikationsplan)\n ├─ MedicationRequest 1 (AtEmedMedicationRequestPlaneintrag)\n ├─ MedicationRequest 2 (AtEmedMedicationRequestPlaneintrag)\n └─ List (referenziert 1+2) (AtEmedListMedikationsplan)",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle"
      },
      {
        "id" : "Bundle.identifier",
        "path" : "Bundle.identifier",
        "short" : "Persistenter Identifikator für das Bundle."
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "patternCode" : "document",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1
      }
    ]
  }
}

```
