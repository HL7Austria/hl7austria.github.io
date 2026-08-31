# HL7.AT.FHIR.ELGA.EMED.R4\AT ELGA e-Medikation Timing - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT ELGA e-Medikation Timing**

## Data Type Profile: AT ELGA e-Medikation Timing 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-timing | *Version*:0.1.1 | |
| Draft as of 2026-08-31 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtElgaEmedTiming |

 
AT ELGA e-Medikation Timing 

**Usages:**

* Use this DataType Profile: [AT ELGA e-Medikation Dosage Dosierung](StructureDefinition-at-elga-emed-dosage-dosierung.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-timing.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-emed-timing.csv), [Excel](StructureDefinition-at-elga-emed-timing.xlsx), [Schematron](StructureDefinition-at-elga-emed-timing.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-timing",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-timing",
  "version" : "0.1.1",
  "name" : "AtElgaEmedTiming",
  "title" : "AT ELGA e-Medikation Timing",
  "status" : "draft",
  "date" : "2026-08-31T18:38:38+00:00",
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
  "description" : "AT ELGA e-Medikation Timing",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Timing",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Timing",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Timing.event",
      "path" : "Timing.event",
      "short" : "Zeitpunkt der Einnahme.",
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat",
      "path" : "Timing.repeat",
      "short" : "Wiederholungsangaben zur Einnahme",
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.extension:TimingDayOfMonth",
      "path" : "Timing.repeat.extension",
      "sliceName" : "TimingDayOfMonth",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/timing-dayOfMonth"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.bounds[x]",
      "path" : "Timing.repeat.bounds[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Timing.repeat.bounds[x]:boundsPeriod",
      "path" : "Timing.repeat.bounds[x]",
      "sliceName" : "boundsPeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "Timing.repeat.bounds[x]:boundsPeriod.start",
      "path" : "Timing.repeat.bounds[x].start",
      "short" : "Zeitraum der Einnahme: Start."
    },
    {
      "id" : "Timing.repeat.bounds[x]:boundsPeriod.end",
      "path" : "Timing.repeat.bounds[x].end",
      "short" : "Zeitraum der Einnahme: Ende."
    },
    {
      "id" : "Timing.repeat.frequency",
      "path" : "Timing.repeat.frequency",
      "short" : "Häufigkeit der Einnahme, z.B. 3 mal täglich."
    },
    {
      "id" : "Timing.repeat.period",
      "path" : "Timing.repeat.period",
      "short" : "Intervall der Einnahme, z.B. alle 4 Stunden.",
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.periodUnit",
      "path" : "Timing.repeat.periodUnit",
      "short" : "Einheit des Intervalls der Einnahme, z.B. h für Stunden, d für Tage.",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://termgit.elga.gv.at/ValueSet/elga-medikationfrequenz"
      }
    },
    {
      "id" : "Timing.repeat.when",
      "path" : "Timing.repeat.when",
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.offset",
      "path" : "Timing.repeat.offset",
      "mustSupport" : true
    }]
  }
}

```
