# HL7.AT.FHIR.TC.WG.SCHEDULING.R5\Slot Encounter Class - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Slot Encounter Class**

## Extension: Slot Encounter Class 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/tc/wg/scheduling/r5/StructureDefinition/slot-encounter-class | *Version*:0.2.0 | |
| Draft as of 2026-08-18 | *Responsible:*HL7® Austria, TC FHIR® | *Computable Name*:SlotEncounterClassExt |

An encounter class similar to (Appointment.class)[https://www.hl7.org/fhir/appointment-definitions.html#Appointment.class] for classification of possible mode of encounter

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [HL7® AT Scheduling Slot Profile](StructureDefinition-at-scheduling-slot.md)
* Examples for this Extension: [Slot/HL7ATSchedulingSlotExample01-free](Slot-HL7ATSchedulingSlotExample01-free.md), [Slot/HL7ATSchedulingSlotExample02-VirtualVisit](Slot-HL7ATSchedulingSlotExample02-VirtualVisit.md), [Slot/HL7ATSchedulingSlotExample03-selectable-encounterClass](Slot-HL7ATSchedulingSlotExample03-selectable-encounterClass.md) and [Slot/HL7ATSchedulingSlotExample04-external-booking-URL](Slot-HL7ATSchedulingSlotExample04-external-booking-URL.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.tc.wg.scheduling.r5|current/StructureDefinition/StructureDefinition-slot-encounter-class.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-slot-encounter-class.csv), [Excel](StructureDefinition-slot-encounter-class.xlsx), [Schematron](StructureDefinition-slot-encounter-class.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "slot-encounter-class",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://fhir.hl7.at/tc/wg/scheduling/r5/StructureDefinition/slot-encounter-class",
  "version" : "0.2.0",
  "name" : "SlotEncounterClassExt",
  "title" : "Slot Encounter Class",
  "status" : "draft",
  "date" : "2026-08-18T13:20:27+00:00",
  "publisher" : "HL7® Austria, TC FHIR®",
  "description" : "An encounter class similar to (Appointment.class)[https://www.hl7.org/fhir/appointment-definitions.html#Appointment.class] for classification of possible mode of encounter",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Slot"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Slot Encounter Class",
      "definition" : "An encounter class similar to (Appointment.class)[https://www.hl7.org/fhir/appointment-definitions.html#Appointment.class] for classification of possible mode of encounter"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.hl7.at/tc/wg/scheduling/r5/StructureDefinition/slot-encounter-class"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://terminology.hl7.org/ValueSet/encounter-class"
      }
    }]
  }
}

```
