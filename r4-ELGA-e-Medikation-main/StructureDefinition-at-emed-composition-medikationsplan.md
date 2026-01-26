# HL7.AT.FHIR.ELGA.EMED.R4\ELGA e-Medikation Composition Medikationsplan - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA e-Medikation Composition Medikationsplan**

## Resource Profile: ELGA e-Medikation Composition Medikationsplan 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-composition-medikationsplan | *Version*:0.1.1 | |
| Draft as of 2026-01-26 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEmedCompositionMedikationsplan |

 
**Beschreibung:** Composition legt Inhalte des Medikationsplans (Dokument) fest. Beinhaltet: 
* Medikationsplan (List)
* Medikationsplaneinträge (MedicationRequest)
* Referenzen zu geplanten Abgaben (entsprechen Rezepten)
 
Bundle (type=document) ├─ Composition ├─ MedicationRequest 1 ├─ MedicationRequest 2 └─ List (referenziert 1+2) 

**Usages:**

* Examples for this Profile: [Composition/ExampleMedikationsplanComposition](Composition-ExampleMedikationsplanComposition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/at-emed-composition-medikationsplan)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-emed-composition-medikationsplan.csv), [Excel](StructureDefinition-at-emed-composition-medikationsplan.xlsx), [Schematron](StructureDefinition-at-emed-composition-medikationsplan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-emed-composition-medikationsplan",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-composition-medikationsplan",
  "version" : "0.1.1",
  "name" : "AtEmedCompositionMedikationsplan",
  "title" : "ELGA e-Medikation Composition Medikationsplan",
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
  "description" : "**Beschreibung:** Composition legt Inhalte des Medikationsplans (Dokument) fest. \nBeinhaltet:\n- Medikationsplan (List)\n- Medikationsplaneinträge (MedicationRequest)\n- Referenzen zu geplanten Abgaben (entsprechen Rezepten)\n\nBundle (type=document)\n ├─ Composition \n ├─ MedicationRequest 1\n ├─ MedicationRequest 2\n └─ List (referenziert 1+2)",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
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
      "identity" : "fhirdocumentreference",
      "uri" : "http://hl7.org/fhir/documentreference",
      "name" : "FHIR DocumentReference"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Composition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Composition",
        "path" : "Composition"
      },
      {
        "id" : "Composition.status",
        "path" : "Composition.status",
        "patternCode" : "final",
        "mustSupport" : true
      },
      {
        "id" : "Composition.type",
        "path" : "Composition.type",
        "mustSupport" : true
      },
      {
        "id" : "Composition.type.coding",
        "path" : "Composition.type.coding",
        "patternCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "736378000",
          "display" : "Medikationsplan"
        }
      },
      {
        "id" : "Composition.subject",
        "path" : "Composition.subject",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Composition.date",
        "path" : "Composition.date",
        "mustSupport" : true
      },
      {
        "id" : "Composition.author",
        "path" : "Composition.author",
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitioner",
              "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitionerRole",
              "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-organization"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Composition.title",
        "path" : "Composition.title",
        "patternString" : "Medikationsplan",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section",
        "path" : "Composition.section",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section.code",
        "path" : "Composition.section.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "code" : "medikationsplan",
              "display" : "Medikationsplan"
            }
          ]
        }
      },
      {
        "id" : "Composition.section.entry",
        "path" : "Composition.section.entry",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medicationrequest-planeintrag",
              "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-list-medikationsplan"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
