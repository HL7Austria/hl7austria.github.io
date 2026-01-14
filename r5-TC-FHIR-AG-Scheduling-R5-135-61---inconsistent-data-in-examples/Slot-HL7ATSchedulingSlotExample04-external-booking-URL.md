# HL7.AT.FHIR.TC.WG.SCHEDULING.R5\HL7ATSchedulingSlotExample04-external-booking-URL - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7ATSchedulingSlotExample04-external-booking-URL**

## Example Slot: HL7ATSchedulingSlotExample04-external-booking-URL

Profile: [HL7® AT Scheduling Slot Profile](StructureDefinition-at-scheduling-slot.md)

**Slot Encounter Class**: ambulatory

**Appointment Booking URL**: [https://booking.example.com/slot/297c0007-f8d1-4e47-bddb-a47978607f65](https://booking.example.com/slot/297c0007-f8d1-4e47-bddb-a47978607f65)

### ServiceTypes

| | |
| :--- | :--- |
| - | **Concept** |
| * | Physiotherapy |

**schedule**: [Schedule: planningHorizon = 2025-05-13 08:00:00+0200 --> 2025-05-23 17:00:00+0200](Schedule-HL7ATSchedulingScheduleExample01.md)

**status**: Free

**start**: 2025-09-15 08:00:00+0000

**end**: 2025-09-15 09:00:00+0000



## Resource Content

```json
{
  "resourceType" : "Slot",
  "id" : "HL7ATSchedulingSlotExample04-external-booking-URL",
  "meta" : {
    "profile" : [
      "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-slot"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/slot-encounter-class",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
            "code" : "AMB",
            "display" : "ambulatory"
          }
        ]
      }
    },
    {
      "url" : "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/appointment-booking-url",
      "valueUri" : "https://booking.example.com/slot/297c0007-f8d1-4e47-bddb-a47978607f65"
    }
  ],
  "serviceType" : [
    {
      "concept" : {
        "coding" : [
          {
            "system" : "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/ValueSet/AtSchedulingServiceType",
            "code" : "65",
            "display" : "Physiotherapy"
          }
        ]
      }
    }
  ],
  "schedule" : {
    "reference" : "Schedule/HL7ATSchedulingScheduleExample01"
  },
  "status" : "free",
  "start" : "2025-09-15T08:00:00Z",
  "end" : "2025-09-15T09:00:00Z"
}

```
