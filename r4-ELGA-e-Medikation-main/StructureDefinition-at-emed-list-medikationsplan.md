# HL7.AT.FHIR.ELGA.EMED.R4\ELGA e-Medikation Medikationsplan - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA e-Medikation Medikationsplan**

## Resource Profile: ELGA e-Medikation Medikationsplan 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-list-medikationsplan | *Version*:0.1.1 | |
| Draft as of 2026-01-28 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEmedListMedikationsplan |

 
**Beschreibung:** Bildet den Medikationsplan eines ELGA Teilnehmers ab. Enthält verordnete Arzneimittel und deren Dosierung in Form von 0..* Medikationsplaneinträgen (AtEmedMRPlaneintrag). Die Reihenfolge der Einträge ist fachlich relevant. 

**Usages:**

* Use this Profile: [ELGA e-Medikation Bundle vom Typ Collection Medikationsplan](StructureDefinition-at-emed-collection-medikationsplan.md)
* Examples for this Profile: [List/AtEmedJourneyListMedikationsplan02](List-AtEmedJourneyListMedikationsplan02.md) and [List/AtEmedJourneyListMedikationsplanLeer01](List-AtEmedJourneyListMedikationsplanLeer01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/at-emed-list-medikationsplan)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-emed-list-medikationsplan.csv), [Excel](StructureDefinition-at-emed-list-medikationsplan.xlsx), [Schematron](StructureDefinition-at-emed-list-medikationsplan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-emed-list-medikationsplan",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-list-medikationsplan",
  "version" : "0.1.1",
  "name" : "AtEmedListMedikationsplan",
  "title" : "ELGA e-Medikation Medikationsplan",
  "status" : "draft",
  "date" : "2026-01-28T08:09:20+00:00",
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
  "description" : "**Beschreibung:** Bildet den Medikationsplan eines ELGA Teilnehmers ab. Enthält verordnete Arzneimittel und deren Dosierung in Form von 0..* Medikationsplaneinträgen (AtEmedMRPlaneintrag). Die Reihenfolge der Einträge ist fachlich relevant.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "List",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/List",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "List.status",
        "path" : "List.status",
        "short" : "Der Medikationsplan ist aktuell: current | retired | entered-in-error. https://hl7.org/fhir/R4/valueset-list-status.html",
        "patternCode" : "current",
        "mustSupport" : true
      },
      {
        "id" : "List.mode",
        "path" : "List.mode",
        "short" : "Der Medikationsplan ist ein Arbeitsdokument: working | snapshot | changes. https://hl7.org/fhir/R4/valueset-list-mode.html",
        "patternCode" : "working",
        "mustSupport" : true
      },
      {
        "id" : "List.code",
        "path" : "List.code",
        "short" : "Code, der den Typ der Liste beschreibt. https://hl7.org/fhir/R4/valueset-list-example-codes.html. Zu prüfen, ob/wie in Medikationsplan verwendet.",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "736378000",
              "display" : "Medikationsplan"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "List.subject",
        "path" : "List.subject",
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
        "id" : "List.encounter",
        "path" : "List.encounter",
        "short" : "Keine Verwendung in der Liste für den Medikationsplan.",
        "max" : "0"
      },
      {
        "id" : "List.date",
        "path" : "List.date",
        "short" : "Letzte Aktualisierung der Liste des Medikationsplans.",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "List.source",
        "path" : "List.source",
        "short" : "Ersteller der Liste des Medikationsplans.",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitioner",
              "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitionerRole"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "List.orderedBy",
        "path" : "List.orderedBy",
        "short" : "Die Reihenfolge der Einträge im Medikationsplan ist fachlich relevant und wird durch den Ersteller der Liste vorgegeben. Mögliche Codes: user | system | event-date | entry-date| priority | alphabetic | category | patient.",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "code" : "user"
            }
          ]
        },
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/list-order"
        }
      },
      {
        "id" : "List.note",
        "path" : "List.note",
        "short" : "Freitextliche Anmerkungen zum Medikationsplan.",
        "mustSupport" : true
      },
      {
        "id" : "List.entry",
        "path" : "List.entry",
        "mustSupport" : true
      },
      {
        "id" : "List.entry.flag",
        "path" : "List.entry.flag",
        "short" : "Kennzeichnet die Art der Änderung des Medikationsplaneintrags",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/list-item-flag"
        }
      },
      {
        "id" : "List.entry.deleted",
        "path" : "List.entry.deleted",
        "short" : "Gibt an, ob der referenzierte Medikationsplaneintrag aus dem Medikationsplan entfernt wurde. Unklar, ob Löschen so abgebildet werden soll.",
        "mustSupport" : true
      },
      {
        "id" : "List.entry.date",
        "path" : "List.entry.date",
        "short" : "Datum der Aufnahme des Medikationsplaneintrags in den Medikationsplan. Fachlich zu klären.",
        "mustSupport" : true
      },
      {
        "id" : "List.entry.item",
        "path" : "List.entry.item",
        "short" : "Referenz auf einen Medikationsplaneintrag.",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "List.emptyReason",
        "path" : "List.emptyReason",
        "short" : "Intitalzustand: notstarted Grund, TODO: code für \"Patient nimmt derzeit keine Medikamente ein\".",
        "mustSupport" : true
      }
    ]
  }
}

```
