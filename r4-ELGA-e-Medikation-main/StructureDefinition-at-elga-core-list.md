# HL7.AT.FHIR.ELGA.EMED.R4\AT ELGA Core List - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT ELGA Core List**

## Resource Profile: AT ELGA Core List 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-core-list | *Version*:0.1.1 | |
| Draft as of 2026-04-29 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtElgaCoreList |

 
Generische Liste für ELGA-Anwendungen. Diese enthält 0..* Einträge (List.entry), wobei jedes Entry genau eine Referenz auf einen Eintrag in List.entry.item beinhaltet. Die Reihenfolge der Einträge der Liste ist relevant und kann festgelegt werden. Jeder Listeneintrag enthält im Element List.entry.flag den Änderungsstatus des jeweiligen Eintrags. 

**Usages:**

* Derived from this Profile: [ELGA e-Med Medikationsplan](StructureDefinition-at-emed-list-medikationsplan.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/at-elga-core-list)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-core-list.csv), [Excel](StructureDefinition-at-elga-core-list.xlsx), [Schematron](StructureDefinition-at-elga-core-list.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-core-list",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-core-list",
  "version" : "0.1.1",
  "name" : "AtElgaCoreList",
  "title" : "AT ELGA Core List",
  "status" : "draft",
  "date" : "2026-04-29T14:27:58+00:00",
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
  "description" : "Generische Liste für ELGA-Anwendungen. Diese enthält 0..* Einträge (List.entry), wobei jedes Entry genau eine Referenz auf einen Eintrag in List.entry.item beinhaltet.\nDie Reihenfolge der Einträge der Liste ist relevant und kann festgelegt werden. Jeder Listeneintrag enthält im Element List.entry.flag den Änderungsstatus des jeweiligen Eintrags.",
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
      "path" : "List"
    },
    {
      "id" : "List.identifier",
      "path" : "List.identifier",
      "short" : "Logischer Identfier der Liste zur Integritätsprüfung beim Schreibvorgang.",
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
      "short" : "Die Liste wird laufend gepflegt, hat daher den fixen Wert: working.",
      "fixedCode" : "working",
      "mustSupport" : true
    },
    {
      "id" : "List.title",
      "path" : "List.title",
      "short" : "Die Liste hat keinen Titel.",
      "max" : "0"
    },
    {
      "id" : "List.code",
      "path" : "List.code",
      "short" : "Code, der den Typ der Liste beschreibt.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "List.subject",
      "path" : "List.subject",
      "short" : "Patient, für den die Liste geführt wird, der über den \nZentralen Patientenindex identifizierbar und Teilnehmer der ELGA-Anwendung ist.",
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
      "short" : "Es wird kein Behandlungskontext dokumentiert.",
      "max" : "0"
    },
    {
      "id" : "List.date",
      "path" : "List.date",
      "short" : "Letzte Aktualisierung der Liste.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "List.source",
      "path" : "List.source",
      "short" : "Person, die die Liste erstellt hat und für den Inhalt verantwortlich ist. \nIm Falle eines GDA: eindeutig identifiziert über den GDA-Index und berechtigt auf die ELGA-Anwendung \ndes Patienten zuzugreifen.",
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
      "short" : "Die Reihenfolge der Einträge wird über die List.entries durch den Ersteller vorgegeben.",
      "max" : "0",
      "mustSupport" : true
    },
    {
      "id" : "List.note",
      "path" : "List.note",
      "short" : "Keine Freitext-Anmerkungen auf Listenebene.",
      "max" : "0"
    },
    {
      "id" : "List.entry",
      "path" : "List.entry",
      "short" : "Die Reihenfolge der Einträge der Liste ist fachlich relevant und wird durch den Ersteller vorgegeben.",
      "mustSupport" : true
    },
    {
      "id" : "List.entry.flag",
      "path" : "List.entry.flag",
      "short" : "Kennzeichnet die Art der Änderung des Listeneintrags: [New | Unchanged | Changed | Removed] Bedeutung: New: Neuer Eintrag wird hinzugefügt | Unchanged: Bestehender Eintrag wird beibehalten und zur Kenntnis genommen | Changed: Bestehender Eintrag wird geändert | Removed: Bestehender Eintrag wird entfernt",
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
      "short" : "Kann nur verwendet werden, wenn list.mode = changes, daher keine Verwendung im Medikationsplan.",
      "max" : "0"
    },
    {
      "id" : "List.entry.date",
      "path" : "List.entry.date",
      "short" : "Datum der Aufnahme bzw. Änderung des Eintrags ist im Eintrag (in der referenzierten Ressource) ersichtlich.",
      "max" : "0",
      "mustSupport" : true
    },
    {
      "id" : "List.entry.item",
      "path" : "List.entry.item",
      "short" : "Referenz auf einen Eintrag.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "List.emptyReason",
      "path" : "List.emptyReason",
      "short" : "Begründung, warum die Liste leer ist. Mögliche Ausprägungen: [notstarted |  nilknown] Bedeutung: notstarted: Intitalzustand - noch nie befüllt | nilknown: Die Liste wurde explizit geleert.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/ElgaListEmptyReasonVS"
      }
    }]
  }
}

```
