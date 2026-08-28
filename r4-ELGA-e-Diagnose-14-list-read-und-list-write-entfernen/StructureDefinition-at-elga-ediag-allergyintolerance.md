# HL7.AT.FHIR.ELGA.EDIAG.R4\AT ELGA e-Diagnose AllergyIntolerance - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT ELGA e-Diagnose AllergyIntolerance**

## Resource Profile: AT ELGA e-Diagnose AllergyIntolerance 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-allergyintolerance | *Version*:0.1.0 | |
| Active as of 2026-08-28 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEdiagAllergyIntolerance |

 
Das AT e-Diagnose AllergyIntolerance-Profil leitet sich vom AllergyIntolerance-Profil ab und passt dieses für die Anforderungen der e-Diagnose an. 

**Usages:**

* Refer to this Profile: [AT ELGA e-Diagnose List](StructureDefinition-at-elga-ediag-list.md)
* Examples for this Profile: [AllergyIntolerance/AllergyExample](AllergyIntolerance-AllergyExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.ediag.r4|current/StructureDefinition/StructureDefinition-at-elga-ediag-allergyintolerance.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-ediag-allergyintolerance.csv), [Excel](StructureDefinition-at-elga-ediag-allergyintolerance.xlsx), [Schematron](StructureDefinition-at-elga-ediag-allergyintolerance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-ediag-allergyintolerance",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-allergyintolerance",
  "version" : "0.1.0",
  "name" : "AtEdiagAllergyIntolerance",
  "title" : "AT ELGA e-Diagnose AllergyIntolerance",
  "status" : "active",
  "date" : "2026-08-28T07:11:43+00:00",
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
  "description" : "Das AT e-Diagnose AllergyIntolerance-Profil leitet sich vom AllergyIntolerance-Profil ab und passt dieses für die Anforderungen der e-Diagnose an.",
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AllergyIntolerance",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AllergyIntolerance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "AllergyIntolerance",
      "path" : "AllergyIntolerance",
      "short" : "AT e-Diagnose AllergyIntolerance"
    },
    {
      "id" : "AllergyIntolerance.extension",
      "path" : "AllergyIntolerance.extension",
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
      "id" : "AllergyIntolerance.extension:reported",
      "path" : "AllergyIntolerance.extension",
      "sliceName" : "reported",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported"]
      }]
    },
    {
      "id" : "AllergyIntolerance.extension:entered-in-error",
      "path" : "AllergyIntolerance.extension",
      "sliceName" : "entered-in-error",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-ext-entered-in-error"]
      }]
    },
    {
      "id" : "AllergyIntolerance.identifier",
      "path" : "AllergyIntolerance.identifier",
      "short" : "Zuordnung der Allergie in einem internem Dokumentationssystem"
    },
    {
      "id" : "AllergyIntolerance.clinicalStatus",
      "path" : "AllergyIntolerance.clinicalStatus",
      "short" : "Status der Allergie; active | inactive | resolved",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.verificationStatus",
      "path" : "AllergyIntolerance.verificationStatus",
      "short" : "ToDo; Presumed, gibt es hierzu aktuelle Infos? kardinalität von clinicalStatus & verificationStatus muss noch erarbeitet werden. Möglicher Status; unconfirmed | confirmed | refuted | entered-in-error",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.type",
      "path" : "AllergyIntolerance.type",
      "short" : "Identifikation ob es eine Allergie oder Intoleranz ist",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.category",
      "path" : "AllergyIntolerance.category",
      "short" : "Differenzierung nach Kontext - Medikamente, Lebensmittel, Umwelt,.. - falls nur med. rele. dann ist es nicht notwendig, fachlich klären",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.criticality",
      "path" : "AllergyIntolerance.criticality",
      "short" : "Einschätzung der Schwere (Anaphylaxie)",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.code",
      "path" : "AllergyIntolerance.code",
      "short" : "Allergiecode, Text verboten",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.code.coding",
      "path" : "AllergyIntolerance.code.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "AllergyIntolerance.code.text",
      "path" : "AllergyIntolerance.code.text",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.patient",
      "path" : "AllergyIntolerance.patient",
      "short" : "Betroffene Person, auf die sich die Allergie bezieht",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.encounter",
      "path" : "AllergyIntolerance.encounter",
      "short" : "Behandlungskontakt",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.onset[x]",
      "path" : "AllergyIntolerance.onset[x]",
      "short" : "Erstes Aufzeichnungsdatum der Allergie(symptomatik)",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.recordedDate",
      "path" : "AllergyIntolerance.recordedDate",
      "short" : "Dokumentationsdatum",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.recorder",
      "path" : "AllergyIntolerance.recorder",
      "short" : "Gesundheitsdiensteanbieter, die die Allergie ins System erfasst/dokumentiert",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitioner",
        "https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.asserter",
      "path" : "AllergyIntolerance.asserter",
      "short" : "Person (fachliche Quelle + related Person oder Patient selbst), die/der die Allergie bestätigt",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitioner",
        "https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitionerRole",
        "https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-patient",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson"]
      }]
    },
    {
      "id" : "AllergyIntolerance.lastOccurrence",
      "path" : "AllergyIntolerance.lastOccurrence",
      "short" : "Letztes Auftreten der Symptomatik - siehe manifestation",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.note",
      "path" : "AllergyIntolerance.note",
      "short" : "Zusätzliche Informationen oder Freitext zur Allergie wird in reaction beschrieben",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.reaction",
      "path" : "AllergyIntolerance.reaction",
      "short" : "Details über die Allergiereaktion",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.reaction.extension",
      "path" : "AllergyIntolerance.reaction.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "AllergyIntolerance.reaction.extension:reactionTime",
      "path" : "AllergyIntolerance.reaction.extension",
      "sliceName" : "reactionTime",
      "short" : "Zeitlicher Verlauf der Manifestation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reaction-time"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.reaction.substance",
      "path" : "AllergyIntolerance.reaction.substance",
      "short" : "Spezifische Substanz die zur Allergie führt, wird in allergyintoleranz.code gelöst",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.reaction.manifestation",
      "path" : "AllergyIntolerance.reaction.manifestation",
      "short" : "Aufgezeichnete klinische allergische Symptome",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.reaction.description",
      "path" : "AllergyIntolerance.reaction.description",
      "short" : "Textbasierte Zusammenfassung der allergischen Reaktion",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.reaction.onset",
      "path" : "AllergyIntolerance.reaction.onset",
      "short" : "Beginn der Reaktion"
    },
    {
      "id" : "AllergyIntolerance.reaction.severity",
      "path" : "AllergyIntolerance.reaction.severity",
      "short" : "Beschreibt ob die Reaktion mild, moderat,... war",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.reaction.exposureRoute",
      "path" : "AllergyIntolerance.reaction.exposureRoute",
      "short" : "Art der Exposition der betroffenen Person gegenüber der Substanz",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.reaction.note",
      "path" : "AllergyIntolerance.reaction.note",
      "short" : "Freitext zu Allergie und Intoleranzen als Zusatzinformation",
      "max" : "1"
    },
    {
      "id" : "AllergyIntolerance.reaction.note.author[x]",
      "path" : "AllergyIntolerance.reaction.note.author[x]",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.reaction.note.time",
      "path" : "AllergyIntolerance.reaction.note.time",
      "max" : "0"
    }]
  }
}

```
