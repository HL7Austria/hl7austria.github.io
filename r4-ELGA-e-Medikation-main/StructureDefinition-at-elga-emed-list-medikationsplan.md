# HL7.AT.FHIR.ELGA.EMED.R4\AT ELGA e-Medikation List Medikationsplan - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT ELGA e-Medikation List Medikationsplan**

## Resource Profile: AT ELGA e-Medikation List Medikationsplan 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-list-medikationsplan | *Version*:0.1.0 | |
| Draft as of 2026-09-25 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtElgaEmedListMedikationsplan |

 
Der Medikationsplan wird durch eine List-Ressource abgebildet. Diese enthält 0..* Einträge (List.entry), wobei jedes List.entry.item genau eine Referenz auf einen Medikationsplaneintrag (MedicationRequest) beinhaltet. Die Reihung der List.entries bestimmt die Reihenfolge der Medikationsplaneinträge. Jeder Listeneintrag enthält im Element List.entry.flag den Änderungsstatus des jeweiligen Medikationsplaneintrags. 

**Usages:**

* Use this Profile: [AT ELGA e-Medikation Medikationsplan-Bundle Medikationsplan](StructureDefinition-at-elga-emed-bundle-medikationsplan.md) and [AT ELGA e-Medikation Transaction Bundle Medikationsplan](StructureDefinition-at-elga-emed-bundle-medikationsplantx.md)
* Examples for this Profile: [List/4cb4dceb-173f-461a-a267-683ec33e4be1](List-4cb4dceb-173f-461a-a267-683ec33e4be1.md), [List/At-Emed-Journey-01-02-List-Medikationsplan](List-At-Emed-Journey-01-02-List-Medikationsplan.md), [List/At-Emed-Journey-05-01-List-Medikationsplan](List-At-Emed-Journey-05-01-List-Medikationsplan.md), [List/At-Emed-Journey-06-02-List-Medikationsplan](List-At-Emed-Journey-06-02-List-Medikationsplan.md) and [List/At-Emed-Journey-07-02-List-Medikationsplan](List-At-Emed-Journey-07-02-List-Medikationsplan.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-list-medikationsplan.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-emed-list-medikationsplan.csv), [Excel](StructureDefinition-at-elga-emed-list-medikationsplan.xlsx), [Schematron](StructureDefinition-at-elga-emed-list-medikationsplan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-list-medikationsplan",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-list-medikationsplan",
  "version" : "0.1.0",
  "name" : "AtElgaEmedListMedikationsplan",
  "title" : "AT ELGA e-Medikation List Medikationsplan",
  "status" : "draft",
  "date" : "2026-09-25T14:56:10+00:00",
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
  "description" : "Der Medikationsplan wird durch eine List-Ressource abgebildet. \nDiese enthält 0..* Einträge (List.entry), wobei jedes List.entry.item genau eine Referenz auf einen Medikationsplaneintrag (MedicationRequest) beinhaltet.\nDie Reihung der List.entries bestimmt die Reihenfolge der Medikationsplaneinträge. \nJeder Listeneintrag enthält im Element List.entry.flag den Änderungsstatus des jeweiligen Medikationsplaneintrags.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "List",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/List",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "List",
      "path" : "List",
      "constraint" : [{
        "key" : "at-emed-list-same-patient",
        "severity" : "error",
        "human" : "Alle in der Liste referenzierten Patienten müssen gleich sein",
        "expression" : "subject.resolve() = entry.item.resolve().ofType(MedicationRequest).subject.resolve()",
        "source" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-list-medikationsplan"
      }]
    },
    {
      "id" : "List.id",
      "path" : "List.id",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "List.meta",
      "path" : "List.meta",
      "mustSupport" : true
    },
    {
      "id" : "List.implicitRules",
      "path" : "List.implicitRules",
      "max" : "0"
    },
    {
      "id" : "List.text",
      "path" : "List.text",
      "mustSupport" : true
    },
    {
      "id" : "List.extension",
      "path" : "List.extension",
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
      "id" : "List.extension:PatientModified",
      "path" : "List.extension",
      "sliceName" : "PatientModified",
      "short" : "Boolean der angibt, ob diese Version des Plans durch Aktionen des Patienten verändert wurde (z.B. Einträge entfernt).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-patient-modified"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "List.status",
      "path" : "List.status",
      "short" : "Status des Medikationsplans. Mögliche Ausprägungen: [current | retired] Bedeutung: current: default | retired: nach Ableben des Patienten bis Ende der Aufbewahrungsfrist",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/ElgaListStatusVS"
      }
    },
    {
      "id" : "List.mode",
      "path" : "List.mode",
      "short" : "Der Medikationsplan ist ein laufend gepflegtes Dokument. Fixer Wert: working.",
      "fixedCode" : "working",
      "mustSupport" : true
    },
    {
      "id" : "List.code",
      "path" : "List.code",
      "short" : "Code der den Medikationsplan identifiziert",
      "min" : 1,
      "fixedCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "736378000",
          "display" : "Medikationsplan"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "List.subject",
      "path" : "List.subject",
      "short" : "ELGA-Teilnehmer, für den der Medikationsplan dokumentiert wird.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "List.encounter",
      "path" : "List.encounter",
      "short" : "Fachliche Begründung: TODO",
      "max" : "0"
    },
    {
      "id" : "List.date",
      "path" : "List.date",
      "short" : "Letzte Aktualisierung des Medikationsplans.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "List.source",
      "path" : "List.source",
      "short" : "Ersteller des Medikationsplans und für den Inhalt verantwortlich. Device nur für initiale Erstellung durch die Fachanwendung.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitioner",
        "https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitionerRole",
        "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-device-fachanwendung"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "List.orderedBy",
      "path" : "List.orderedBy",
      "max" : "0"
    },
    {
      "id" : "List.note",
      "path" : "List.note",
      "short" : "Fachliche Begrüundung: Auf dieser Ebene keine Freitext-Anmerkungen im Medikationsplan. Freitext ist in den jeweiligen MedicationRequests(Planeinträgen möglich)",
      "max" : "0"
    },
    {
      "id" : "List.entry",
      "path" : "List.entry",
      "short" : "Medikationsplaneinträge. Die Reihenfolge der Medikationsplaneinträge ist fachlich relevant und wird durch den Ersteller durch die Reihung der Eintries festgelegt.",
      "mustSupport" : true
    },
    {
      "id" : "List.entry.flag",
      "path" : "List.entry.flag",
      "short" : "Kennzeichnet die Art der Änderung des Medikationsplaneintrags: [New | Unchanged | Changed | Removed] Bedeutung: New: Neuer Planeintrag wird hinzugefügt | Unchanged: Bestehender Planeintrag wird beibehalten und zur Kenntnis genommen | Changed: Bestehender Planeintrag wird geändert | Removed: Bestehender Planeintrag wird entfernt",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/ElgaListEntryFlagVS"
      }
    },
    {
      "id" : "List.entry.deleted",
      "path" : "List.entry.deleted",
      "short" : "Fachliche Begründung: Keine Verwendung im Medikationsplan (da list.mode immer working).",
      "max" : "0"
    },
    {
      "id" : "List.entry.date",
      "path" : "List.entry.date",
      "short" : "Fachliche Begründung: Kein Datum der initialen Aufnahme des Eintrags im Medikationsplan.\nDas Datum ist nur im referenzierten Medikationsplaneintrag ersichtlich.",
      "max" : "0"
    },
    {
      "id" : "List.entry.item",
      "path" : "List.entry.item",
      "short" : "Referenz auf einen Medikationsplaneintrag.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "List.emptyReason",
      "path" : "List.emptyReason",
      "short" : "Begründung, warum der Medikationsplan leer ist. Mögliche Ausprägungen: [notstarted |  nilknown | unavailable] Bedeutung: notstarted: Intitalzustand - noch nie befüllt | nilknown: Patient nimmt derzeit keine Medikamente ein | unavailable: Plan ist leer weil alle Einträge vom Patienten entfernt wurden",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/ElgaListEmptyReasonVS"
      }
    }]
  }
}

```
