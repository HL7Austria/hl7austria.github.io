# AT ELGA e-Medikation Timing - ELGA e-Medikation (R4) DRAFT v0.1.0

## Data Type Profile: AT ELGA e-Medikation Timing 

**Usages:**

* Use this DataType Profile: [AT ELGA e-Medikation Dosage Dosierung](StructureDefinition-at-elga-emed-dosage-dosierung.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-timing.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-timing.csv), [Excel](../StructureDefinition-at-elga-emed-timing.xlsx), [Schematron](../StructureDefinition-at-elga-emed-timing.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-timing",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-timing",
  "version" : "0.1.0",
  "name" : "AtElgaEmedTiming",
  "title" : "AT ELGA e-Medikation Timing",
  "status" : "draft",
  "date" : "2026-10-21T09:29:04+00:00",
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
      "id" : "Timing.modifierExtension",
      "path" : "Timing.modifierExtension",
      "short" : "Fachliche Begründung: Für den Medikationsplan sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Timing.event",
      "path" : "Timing.event",
      "short" : "Event im Alltag des Patienten auf das sich das Timing bezieht z.b. OP-Termin",
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat",
      "path" : "Timing.repeat",
      "short" : "Wiederholungsangaben des Timings",
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
      },
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.bounds[x]:boundsPeriod",
      "path" : "Timing.repeat.bounds[x]",
      "sliceName" : "boundsPeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.bounds[x]:boundsPeriod.start",
      "path" : "Timing.repeat.bounds[x].start",
      "short" : "Start des Begrenzungszeitraums",
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.bounds[x]:boundsPeriod.end",
      "path" : "Timing.repeat.bounds[x].end",
      "short" : "Ende des Begrenzungszeitraums",
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.bounds[x]:boundsDuration",
      "path" : "Timing.repeat.bounds[x]",
      "sliceName" : "boundsDuration",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Duration"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.bounds[x]:boundsDuration.value",
      "path" : "Timing.repeat.bounds[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.bounds[x]:boundsDuration.comparator",
      "path" : "Timing.repeat.bounds[x].comparator",
      "short" : "Fachliche Begründung: TODO",
      "max" : "0"
    },
    {
      "id" : "Timing.repeat.bounds[x]:boundsDuration.unit",
      "path" : "Timing.repeat.bounds[x].unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.bounds[x]:boundsDuration.system",
      "path" : "Timing.repeat.bounds[x].system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.bounds[x]:boundsDuration.code",
      "path" : "Timing.repeat.bounds[x].code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.bounds[x]:boundsRange",
      "path" : "Timing.repeat.bounds[x]",
      "sliceName" : "boundsRange",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.bounds[x]:boundsRange.low",
      "path" : "Timing.repeat.bounds[x].low",
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.bounds[x]:boundsRange.low.value",
      "path" : "Timing.repeat.bounds[x].low.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.bounds[x]:boundsRange.low.comparator",
      "path" : "Timing.repeat.bounds[x].low.comparator",
      "short" : "Fachliche Begründung: TODO"
    },
    {
      "id" : "Timing.repeat.bounds[x]:boundsRange.low.unit",
      "path" : "Timing.repeat.bounds[x].low.unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.bounds[x]:boundsRange.low.system",
      "path" : "Timing.repeat.bounds[x].low.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.bounds[x]:boundsRange.low.code",
      "path" : "Timing.repeat.bounds[x].low.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.bounds[x]:boundsRange.high",
      "path" : "Timing.repeat.bounds[x].high",
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.bounds[x]:boundsRange.high.value",
      "path" : "Timing.repeat.bounds[x].high.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.bounds[x]:boundsRange.high.comparator",
      "path" : "Timing.repeat.bounds[x].high.comparator",
      "short" : "Fachliche Begründung: TODO"
    },
    {
      "id" : "Timing.repeat.bounds[x]:boundsRange.high.unit",
      "path" : "Timing.repeat.bounds[x].high.unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.bounds[x]:boundsRange.high.system",
      "path" : "Timing.repeat.bounds[x].high.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.bounds[x]:boundsRange.high.code",
      "path" : "Timing.repeat.bounds[x].high.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.count",
      "path" : "Timing.repeat.count",
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.countMax",
      "path" : "Timing.repeat.countMax",
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.duration",
      "path" : "Timing.repeat.duration",
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.durationMax",
      "path" : "Timing.repeat.durationMax",
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.durationUnit",
      "path" : "Timing.repeat.durationUnit",
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.frequency",
      "path" : "Timing.repeat.frequency",
      "short" : "Häufigkeit der Einnahme, z.B. 3 mal täglich.",
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.period",
      "path" : "Timing.repeat.period",
      "short" : "Intervall der Einnahme, z.B. alle 4 Stunden.",
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.periodMax",
      "path" : "Timing.repeat.periodMax",
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.periodUnit",
      "path" : "Timing.repeat.periodUnit",
      "short" : "Einheit des Intervalls der Einnahme, z.B. h für Stunden, d für Tage.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://termgit.elga.gv.at/ValueSet/elga-medikationfrequenz"
      }
    },
    {
      "id" : "Timing.repeat.dayOfWeek",
      "path" : "Timing.repeat.dayOfWeek",
      "mustSupport" : true
    },
    {
      "id" : "Timing.repeat.timeOfDay",
      "path" : "Timing.repeat.timeOfDay",
      "mustSupport" : true
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
