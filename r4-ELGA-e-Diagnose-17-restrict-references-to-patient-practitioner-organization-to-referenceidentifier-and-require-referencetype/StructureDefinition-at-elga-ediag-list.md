# HL7.AT.FHIR.ELGA.EDIAG.R4\AT ELGA e-Diagnose List - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT ELGA e-Diagnose List**

## Resource Profile: AT ELGA e-Diagnose List 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-list | *Version*:0.1.0 | |
| Active as of 2026-08-20 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEdiagList |

 
Das AT e-Diagnose List-Profil leitet sich vom HL7-AT-Core-R4-Profil ab und dient der strukturierten Listung von Einträgen. 

**Usages:**

* Examples for this Profile: [List/ListExample01](List-ListExample01.md) and [List/ListExample02](List-ListExample02.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.ediag.r4|current/StructureDefinition/StructureDefinition-at-elga-ediag-list.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-ediag-list.csv), [Excel](StructureDefinition-at-elga-ediag-list.xlsx), [Schematron](StructureDefinition-at-elga-ediag-list.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-ediag-list",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-list",
  "version" : "0.1.0",
  "name" : "AtEdiagList",
  "title" : "AT ELGA e-Diagnose List",
  "status" : "active",
  "date" : "2026-08-20T12:23:05+00:00",
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
  "description" : "Das AT e-Diagnose List-Profil leitet sich vom HL7-AT-Core-R4-Profil ab und dient der strukturierten Listung von Einträgen.",
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
      "short" : "AT e-Diagnose List"
    },
    {
      "id" : "List.identifier",
      "path" : "List.identifier",
      "short" : "Logischer Identfier der Liste zur Integritätsprüfung beim Schreibvorgang.",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "List.status",
      "path" : "List.status",
      "short" : "Status des Liste.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/core/r4/ValueSet/ElgaListStatusVS"
      }
    },
    {
      "id" : "List.mode",
      "path" : "List.mode",
      "short" : "Die Liste ist ein laufend gepflegtes Dokument. Fixer Wert: working.",
      "fixedCode" : "working",
      "mustSupport" : true
    },
    {
      "id" : "List.title",
      "path" : "List.title",
      "short" : "Titel der Liste",
      "max" : "0"
    },
    {
      "id" : "List.code",
      "path" : "List.code",
      "short" : "Code, der den Typ der Liste beschreibt.",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-list-code-vs"
      }
    },
    {
      "id" : "List.subject",
      "path" : "List.subject",
      "short" : "Patient, für den die Liste erstellt werden soll, der über den Zentralen Patientenindex identifizierbar und Teilnehmer von ELGA e-Diagnose ist.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reference"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "List.encounter",
      "path" : "List.encounter",
      "short" : "Patientenkontakt",
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
      "short" : "Arzt oder Ärztin, die die Liste erstellt und für den Inhalt verantwortlich ist. Eindeutig identifiziert über den GDA-Index und berechtigt auf die ELGA e-Diagnose des Patienten zuzugreifen. Device nur für initiale Erstellung durch die Fachanwendung. Patient nur nachdem er Einträge gelöscht hat.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reference"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient",
        "http://hl7.org/fhir/StructureDefinition/Practitioner",
        "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-practitionerrole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "List.orderedBy",
      "path" : "List.orderedBy",
      "short" : "Die Reihenfolge der Einträge in der Liste.",
      "max" : "0"
    },
    {
      "id" : "List.note",
      "path" : "List.note",
      "short" : "Freitextliche Anmerkungen zur Liste.",
      "max" : "0"
    },
    {
      "id" : "List.entry",
      "path" : "List.entry",
      "mustSupport" : true
    },
    {
      "id" : "List.entry.flag",
      "path" : "List.entry.flag",
      "short" : "Kennzeichnet die Art der Änderung des Eintrags",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/core/r4/ValueSet/ElgaListEntryFlagVS"
      }
    },
    {
      "id" : "List.entry.deleted",
      "path" : "List.entry.deleted",
      "short" : "Gibt an, ob der referenzierte Eintrag zur Entfernung markiert wurde. Wird durch Flag 'removed' gelöst.",
      "max" : "0"
    },
    {
      "id" : "List.entry.date",
      "path" : "List.entry.date",
      "short" : "Datum der Aufnahme des Eintrags in die Liste.",
      "max" : "0"
    },
    {
      "id" : "List.entry.item",
      "path" : "List.entry.item",
      "short" : "Referenz auf einen Eintrag. Zu klären: reicht ein List-Profil oder braucht es jeweils eines für die integren Listen, die Gesamtliste, Liste für Allergien, Alerts?",
      "mustSupport" : true
    },
    {
      "id" : "List.emptyReason",
      "path" : "List.emptyReason",
      "short" : "Begründung, warum der Medikationsplan leer ist. Mögliche Ausprägungen: [notstarted |  nilknown] Bedeutung: notstarted: Intitalzustand - noch nie befüllt | nilknown: Für Patient gibt es zurzeit keine Einträge",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/core/r4/ValueSet/ElgaListEmptyReasonVS"
      }
    }]
  }
}

```
