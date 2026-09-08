# HL7.AT.FHIR.ELGA.EDIAG.R4\AT ELGA e-Diagnose AllergyIntolerance - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT ELGA e-Diagnose AllergyIntolerance**

## Resource Profile: AT ELGA e-Diagnose AllergyIntolerance 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-allergyintolerance | *Version*:0.1.0 | |
| Active as of 2026-09-08 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEdiagAllergyIntolerance |

 
Das AT e-Diagnose AllergyIntolerance-Profil leitet sich vom AllergyIntolerance-Profil ab und passt dieses für die Anforderungen der e-Diagnose an. 

### Defintion

AllergyIntolerance dient der Dokumentation einer klinischen Einschätzung einer Allergie oder Intoleranz sowie einer bestehenden oder potenziellen Überempfindlichkeit gegenüber einer bestimmten Substanz oder Substanzklasse und des damit verbundenen Risikos einer unerwünschten Reaktion bei Exposition.

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
  "date" : "2026-09-08T12:07:36+00:00",
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
      "short" : "Zuordnung der Allergie in einem internen Dokumentationssystem."
    },
    {
      "id" : "AllergyIntolerance.clinicalStatus",
      "path" : "AllergyIntolerance.clinicalStatus",
      "short" : "Status der Allergie; mögliche Codes: active | inactive | resolved.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.verificationStatus",
      "path" : "AllergyIntolerance.verificationStatus",
      "short" : "Verifizierungsstatus der Allergie; mögliche Codes: unconfirmed | confirmed | refuted | entered-in-error.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.type",
      "path" : "AllergyIntolerance.type",
      "short" : "Kennzeichnung, ob es sich um eine Allergie oder Intoleranz handelt.",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.category",
      "path" : "AllergyIntolerance.category",
      "short" : "ToDo - falls nur med. rele. dann ist es nicht notwendig, fachlich klären: Differenzierung nach Kontext z. B. Medikamente, Lebensmittel oder Umwelt.",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.criticality",
      "path" : "AllergyIntolerance.criticality",
      "short" : "Einschätzung des Schweregrads, z. B. im Hinblick auf eine Anaphylaxie.",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.code",
      "path" : "AllergyIntolerance.code",
      "short" : "Allergiecode; Freitext ist nicht zulässig.",
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
      "short" : "Betroffene Person, auf die sich die Allergie bezieht.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.encounter",
      "path" : "AllergyIntolerance.encounter",
      "short" : "Behandlungskontakt.",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.onset[x]",
      "path" : "AllergyIntolerance.onset[x]",
      "short" : "Erstes Aufzeichnungsdatum der Allergie bzw. Allergiesymptomatik.",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.recordedDate",
      "path" : "AllergyIntolerance.recordedDate",
      "short" : "Dokumentationsdatum.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.recorder",
      "path" : "AllergyIntolerance.recorder",
      "short" : "GDA, der die Allergie im System erfasst bzw. dokumentiert hat.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitioner",
        "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.asserter",
      "path" : "AllergyIntolerance.asserter",
      "short" : "Quelle der Information zur Allergie, z. B. Patient, behandelnde Person oder Dritter.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitioner",
        "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitionerRole",
        "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson"]
      }]
    },
    {
      "id" : "AllergyIntolerance.lastOccurrence",
      "path" : "AllergyIntolerance.lastOccurrence",
      "short" : "Letztes Auftreten der Symptomatik; siehe Manifestation.",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.note",
      "path" : "AllergyIntolerance.note",
      "short" : "Zusätzliche Informationen; Freitext wird in reaction beschrieben.",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.reaction",
      "path" : "AllergyIntolerance.reaction",
      "short" : "Details zur allergischen Reaktion.",
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
      "short" : "Zeitlicher Verlauf der Manifestation.",
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
      "short" : "Spezifische Substanz, die zur Allergie führt; wird über AllergyIntolerance.code abgebildet.",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.reaction.manifestation",
      "path" : "AllergyIntolerance.reaction.manifestation",
      "short" : "Aufgezeichnete klinische Symptome der allergischen Reaktion.",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.reaction.description",
      "path" : "AllergyIntolerance.reaction.description",
      "short" : "Textbasierte Zusammenfassung der allergischen Reaktion.",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.reaction.onset",
      "path" : "AllergyIntolerance.reaction.onset",
      "short" : "Beginn der Reaktion."
    },
    {
      "id" : "AllergyIntolerance.reaction.severity",
      "path" : "AllergyIntolerance.reaction.severity",
      "short" : "Schweregrad der Reaktion, z. B. mild oder moderat.",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.reaction.exposureRoute",
      "path" : "AllergyIntolerance.reaction.exposureRoute",
      "short" : "Art der Exposition der betroffenen Person gegenüber der Substanz.",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.reaction.note",
      "path" : "AllergyIntolerance.reaction.note",
      "short" : "Freitext zu Allergie und Intoleranzen als Zusatzinformation.",
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
