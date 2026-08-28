# HL7.AT.FHIR.ELGA.EDIAG.R4\AT ELGA e-Diagnose List - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT ELGA e-Diagnose List**

## Resource Profile: AT ELGA e-Diagnose List 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-list | *Version*:0.1.0 | |
| Active as of 2026-08-28 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEdiagList |

 
Das AT e-Diagnose List-Profil dient der strukturierten Listung von Einträgen. 

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
  "date" : "2026-08-28T07:57:41+00:00",
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
  "description" : "Das AT e-Diagnose List-Profil dient der strukturierten Listung von Einträgen.",
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
      "short" : "AT e-Diagnose List",
      "constraint" : [{
        "key" : "list-integrity",
        "severity" : "error",
        "human" : "Die Liste darf nur Referenzen (List.entry.item) enthalten, die dem Code der Liste (List.code) entsprechen.",
        "expression" : "(code.coding.exists(system='http://loinc.org' and code='11450-4') implies entry.item.all(reference.matches('(^|/)Condition/'))) and (code.coding.exists(system='http://loinc.org' and code='47519-4') implies entry.item.all(reference.matches('(^|/)Procedure/'))) and (code.coding.exists(system='http://loinc.org' and code='48765-2') implies entry.item.all(reference.matches('(^|/)AllergyIntolerance/')))",
        "source" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-list"
      },
      {
        "key" : "list-emptyreason-required",
        "severity" : "error",
        "human" : "Begründung für leere Liste ist erforderlich.",
        "expression" : "entry.empty() implies emptyReason.exists()",
        "source" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-list"
      }]
    },
    {
      "id" : "List.identifier",
      "path" : "List.identifier",
      "short" : "Kein logischer Identifier für die Liste erforderlich.",
      "max" : "0"
    },
    {
      "id" : "List.status",
      "path" : "List.status",
      "short" : "Status des Liste.",
      "fixedCode" : "current",
      "mustSupport" : true
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
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-list-code-vs"
      }
    },
    {
      "id" : "List.subject",
      "path" : "List.subject",
      "short" : "Patient, für den die Liste geführt wird, der über den \nZentralen Patientenindex identifizierbar und Teilnehmer der e-Diagnose ist.",
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
      "short" : "Es wird kein Behandlungskontext dokumentiert.",
      "max" : "0"
    },
    {
      "id" : "List.date",
      "path" : "List.date",
      "short" : "Datum der letzten Aktualisierung der Liste.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "List.source",
      "path" : "List.source",
      "short" : "Person, die die Liste erstellt hat und für den Inhalt verantwortlich ist. Im Falle eines GDA: eindeutig identifiziert über den GDA-Index und berechtigt auf die ELGA-Anwendung \ndes Patienten zuzugreifen. Im Falle eines Patienten: eindeutig identifiziert durch den Z-PI.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitioner",
        "https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitionerRole",
        "https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "List.orderedBy",
      "path" : "List.orderedBy",
      "short" : "Die Reihenfolge der Einträge wird über die List.entries durch den Ersteller vorgegeben.",
      "max" : "0"
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
      "short" : "Die Reihenfolge der Listeneinträge kann in die Fachanwendung zurückgeschrieben werden. Gleichzeitig kann die Sortierung in lokalen Systemen erfolgen.",
      "mustSupport" : true
    },
    {
      "id" : "List.entry.flag",
      "path" : "List.entry.flag",
      "short" : "Kennzeichnung des Status entsprechend Workflow nicht relevant.",
      "max" : "0"
    },
    {
      "id" : "List.entry.deleted",
      "path" : "List.entry.deleted",
      "short" : "Kennzeichnung, dass der Eintrag gelöscht wurde, ist nicht erlaubt (siehe Invariant lst-2).",
      "max" : "0"
    },
    {
      "id" : "List.entry.date",
      "path" : "List.entry.date",
      "short" : "Datum der Aufnahme des Eintrags in die Liste wird nicht dokumentiert, da die Liste laufend gepflegt wird und das Datum der letzten Aktualisierung der Liste (List.date) dokumentiert wird.",
      "max" : "0"
    },
    {
      "id" : "List.entry.item",
      "path" : "List.entry.item",
      "short" : "Referenz auf einen Eintrag.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition",
        "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-procedure",
        "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-allergyintolerance"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "List.entry.item.reference",
      "path" : "List.entry.item.reference",
      "min" : 1
    },
    {
      "id" : "List.emptyReason",
      "path" : "List.emptyReason",
      "short" : "Begründung, warum die Summary-Liste leer ist.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/core/r4/ValueSet/ElgaListEmptyReasonVS"
      }
    }]
  }
}

```
