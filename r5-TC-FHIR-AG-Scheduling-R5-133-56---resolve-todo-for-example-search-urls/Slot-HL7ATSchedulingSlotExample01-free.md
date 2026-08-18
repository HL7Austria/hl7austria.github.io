# HL7.AT.FHIR.TC.WG.SCHEDULING.R5\HL7ATSchedulingSlotExample01-free - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7ATSchedulingSlotExample01-free**

## Example Slot: HL7ATSchedulingSlotExample01-free

Profile: [HL7® AT Scheduling Slot Profile](StructureDefinition-at-scheduling-slot.md)

**Slot Encounter Class**: ambulatory

### ServiceTypes

| | |
| :--- | :--- |
| - | **Concept** |
| * | Physiotherapy |

**schedule**: [Schedule: planningHorizon = 2025-05-13 08:00:00+0200 --> 2025-09-23 17:00:00+0200](Schedule-HL7ATSchedulingScheduleExample01.md)

**status**: Free

**start**: 2025-09-15 08:00:00+0000

**end**: 2025-09-15 09:00:00+0000



## Resource Content

```json
{
  "resourceType" : "Slot",
  "id" : "HL7ATSchedulingSlotExample01-free",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/tc/wg/scheduling/r5/StructureDefinition/at-scheduling-slot"]
  },
  "extension" : [{
    "url" : "https://fhir.hl7.at/tc/wg/scheduling/r5/StructureDefinition/slot-encounter-class",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "AMB",
        "display" : "ambulatory"
      }]
    }
  }],
  "serviceType" : [{
    "concept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/service-type",
        "code" : "65",
        "display" : "Physiotherapy"
      }]
    }
  }],
  "schedule" : {
    "reference" : "Schedule/HL7ATSchedulingScheduleExample01"
  },
  "status" : "free",
  "start" : "2025-09-15T08:00:00Z",
  "end" : "2025-09-15T09:00:00Z"
}

```
