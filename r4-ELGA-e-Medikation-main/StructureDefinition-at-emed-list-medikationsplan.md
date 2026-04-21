# HL7.AT.FHIR.ELGA.EMED.R4\ELGA e-Med Medikationsplan - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA e-Med Medikationsplan**

## Resource Profile: ELGA e-Med Medikationsplan 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-list-medikationsplan | *Version*:0.1.1 | |
| Draft as of 2026-04-21 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEmedListMedikationsplan |

 
Der Medikationsplan eines ELGA-Teilnehmers bzw. einer ELGA-Teilnehmerin wird durch eine List-Ressource abgebildet. Diese enthält 0..* Einträge (List.entry), wobei jedes Entry genau eine Referenz auf einen Medikationsplaneintrag (MedicationRequest) in List.entry.item beinhaltet. Die Reihenfolge der Einträge kann durch den GDA oder den Patienten festgelegt werden. Jeder Listeneintrag enthält im Element List.entry.flag den Änderungsstatus des jeweiligen Medikationsplaneintrags. 

**Usages:**

* Use this Profile: [ELGA e-Med Medikationsplan Collection Bundle](StructureDefinition-at-emed-bundle-medikationsplan.md) and [ELGA e-Med Medikationsplan Transaction Bundle](StructureDefinition-at-emed-bundle-tx-medikationsplan.md)
* Examples for this Profile: [List/At-Emed-Journey-01-List-Medikationsplan](List-At-Emed-Journey-01-List-Medikationsplan.md), [List/At-Emed-Journey-02-List-Medikationsplan](List-At-Emed-Journey-02-List-Medikationsplan.md), [List/At-Emed-Journey-05-a-List-Reihenfolge](List-At-Emed-Journey-05-a-List-Reihenfolge.md) and [List/At-Emed-Journey-05-b-List-Aenderung](List-At-Emed-Journey-05-b-List-Aenderung.md)

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
  "title" : "ELGA e-Med Medikationsplan",
  "status" : "draft",
  "date" : "2026-04-21T17:01:26+00:00",
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
  "description" : "Der Medikationsplan eines ELGA-Teilnehmers bzw. einer ELGA-Teilnehmerin wird durch eine List-Ressource abgebildet. \nDiese enthält 0..* Einträge (List.entry), wobei jedes Entry genau eine Referenz auf einen Medikationsplaneintrag (MedicationRequest) in List.entry.item beinhaltet.\nDie Reihenfolge der Einträge kann durch den GDA oder den Patienten festgelegt werden. Jeder Listeneintrag enthält im Element List.entry.flag den Änderungsstatus des jeweiligen Medikationsplaneintrags.",
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
      "id" : "List.identifier",
      "path" : "List.identifier",
      "short" : "Logischer Identfier der Liste (des Medikationsplans) zur Integritätsprüfung beim Schreibvorgang.",
      "min" : 1,
      "max" : "1",
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
      "id" : "List.title",
      "path" : "List.title",
      "short" : "Titel der Liste.",
      "max" : "0"
    },
    {
      "id" : "List.code",
      "path" : "List.code",
      "short" : "Code, der den Typ der Liste beschreibt.",
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
      "short" : "Patient, für den der Medikationsplan dokumentiert wird, der über den \nZentralen Patientenindex identifizierbar und Teilnehmer von ELGA e-Medikation ist.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "List.encounter",
      "path" : "List.encounter",
      "short" : "Behandlungskontext, in dem die Liste erstellt wurde.",
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
      "short" : "Arzt oder Ärztin, die den Medikationsplans erstellt hat und für den Inhalt verantwortlich ist. \nEindeutig identifiziert über den GDA-Index und berechtigt auf die ELGA e-Medikation \ndes Patienten zuzugreifen. Device nur für initiale Erstellung durch die Fachanwendung. Patient nur zur Änderung der Reihenfolge der Planeinträge oder nachdem er Einträge gelöscht hat.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitioner",
        "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitionerRole",
        "http://hl7.org/fhir/StructureDefinition/Device",
        "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "List.orderedBy",
      "path" : "List.orderedBy",
      "short" : "Die Reihenfolge der Einträge im Medikationsplan ist fachlich relevant und wird durch den Ersteller vorgegeben.",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "code" : "user"
        }]
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
      "short" : "Medikationsplaneinträge in der Liste",
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
      "short" : "Gibt an, ob der referenzierte Medikationsplaneintrag zur Entfernung markiert wurde.\nKeine Verwendung im Medikationsplan, da GDA für die Kennzeichnung von zur Entfernung freigegebenen Planeinträgen das Element entry.flag mit dem Wert \"removed\" verwenden und ELGA-Teilnehmer Einträge durch Entfernen aus der Liste löschen.",
      "max" : "0",
      "mustSupport" : true
    },
    {
      "id" : "List.entry.date",
      "path" : "List.entry.date",
      "short" : "Datum der Aufnahme bzw. Änderung des Medikationsplaneintrags.",
      "mustSupport" : true
    },
    {
      "id" : "List.entry.item",
      "path" : "List.entry.item",
      "short" : "Referenz auf einen Medikationsplaneintrag.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "List.emptyReason",
      "path" : "List.emptyReason",
      "short" : "Begründung, warum der Medikationsplan leer ist. Mögliche Ausprägungen: [notstarted |  nilknown] Bedeutung: notstarted: Intitalzustand - noch nie befüllt | nilknown: Patient nimmt derzeit keine Medikamente ein",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/ElgaListEmptyReasonVS"
      }
    }]
  }
}

```
