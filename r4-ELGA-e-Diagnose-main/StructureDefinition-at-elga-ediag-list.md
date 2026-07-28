# HL7.AT.FHIR.ELGA.EDIAG.R4\AT ELGA e-Diagnose List - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT ELGA e-Diagnose List**

## Resource Profile: AT ELGA e-Diagnose List 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-list | *Version*:0.1.0 | |
| Active as of 2026-07-28 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEdiagList |

 
Das AT e-Diagnose List-Profil leitet sich vom HL7-AT-Core-R4-Profil ab und dient der strukturierten Listung von Einträgen. 

**Usages:**

* Use this Profile: [AT ELGA e-Diagnose Collection Bundle](StructureDefinition-at-elga-ediag-bundle-liste-cl.md) and [AT ELGA e-Diagnose Transaction Bundle](StructureDefinition-at-elga-ediag-bundle-liste-tx.md)
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
  "date" : "2026-07-28T06:19:15+00:00",
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
  "baseDefinition" : "https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-list",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "List",
      "path" : "List",
      "short" : "AT e-Diagnose List"
    },
    {
      "id" : "List.status",
      "path" : "List.status",
      "short" : "Status des Liste."
    },
    {
      "id" : "List.mode",
      "path" : "List.mode",
      "short" : "Die Liste ist ein laufend gepflegtes Dokument. Fixer Wert: working."
    },
    {
      "id" : "List.title",
      "path" : "List.title",
      "short" : "Titel der Liste"
    },
    {
      "id" : "List.code",
      "path" : "List.code",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-list-code-vs"
      }
    },
    {
      "id" : "List.subject",
      "path" : "List.subject",
      "short" : "Patient, für den die Liste erstellt werden soll, der über den Zentralen Patientenindex identifizierbar und Teilnehmer von ELGA e-Diagnose ist."
    },
    {
      "id" : "List.encounter",
      "path" : "List.encounter",
      "short" : "Patientenkontakt"
    },
    {
      "id" : "List.date",
      "path" : "List.date",
      "short" : "Letzte Aktualisierung der Liste."
    },
    {
      "id" : "List.source",
      "path" : "List.source",
      "short" : "Arzt oder Ärztin, die die Liste erstellt und für den Inhalt verantwortlich ist. Eindeutig identifiziert über den GDA-Index und berechtigt auf die ELGA e-Diagnose des Patienten zuzugreifen. Device nur für initiale Erstellung durch die Fachanwendung. Patient nur nachdem er Einträge gelöscht hat.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitioner",
        "https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitionerRole",
        "https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-patient"]
      }]
    },
    {
      "id" : "List.orderedBy",
      "path" : "List.orderedBy",
      "short" : "Die Reihenfolge der Einträge in der Liste."
    },
    {
      "id" : "List.note",
      "path" : "List.note",
      "short" : "Freitextliche Anmerkungen zur Liste."
    },
    {
      "id" : "List.entry.flag",
      "path" : "List.entry.flag",
      "short" : "Kennzeichnet die Art der Änderung des Eintrags"
    },
    {
      "id" : "List.entry.deleted",
      "path" : "List.entry.deleted",
      "short" : "Gibt an, ob der referenzierte Eintrag zur Entfernung markiert wurde. Wird durch Flag 'removed' gelöst."
    },
    {
      "id" : "List.entry.date",
      "path" : "List.entry.date",
      "short" : "Datum der Aufnahme des Eintrags in die Liste."
    },
    {
      "id" : "List.entry.item",
      "path" : "List.entry.item",
      "short" : "Referenz auf einen Eintrag. Zu klären: reicht ein List-Profil oder braucht es jeweils eines für die integren Listen, die Gesamtliste, Liste für Allergien, Alerts?"
    },
    {
      "id" : "List.emptyReason",
      "path" : "List.emptyReason",
      "short" : "Begründung, warum der Medikationsplan leer ist. Mögliche Ausprägungen: [notstarted |  nilknown] Bedeutung: notstarted: Intitalzustand - noch nie befüllt | nilknown: Für Patient gibt es zurzeit keine Einträge"
    }]
  }
}

```
