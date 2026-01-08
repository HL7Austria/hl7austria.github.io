# HL7.AT.FHIR.TC.WG.SCHEDULING.R5\HL7ATSchedulingAppointmentExample01 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7ATSchedulingAppointmentExample01**

## Example Appointment: HL7ATSchedulingAppointmentExample01

Profile: [HL7® AT Scheduling Appointment Profile](StructureDefinition-at-scheduling-appointment.md)

**status**: Booked

### ServiceTypes

| | |
| :--- | :--- |
| - | **Concept** |
| * | Physiotherapy |

**appointmentType**: A routine check-up, such as an annual physical

**description**: Routineuntersuchung beim Hausarzt

**start**: 2025-06-01 09:00:00+0200

**end**: 2025-06-01 09:30:00+0200

**minutesDuration**: 30

**slot**: [Slot: extension = ambulatory; status = free; start = 2025-09-15 08:00:00+0000; end = 2025-09-15 09:00:00+0000](Slot-HL7ATSchedulingSlotExample01-free.md)

**created**: 2025-05-10 14:23:00+0200

**subject**: [Max Mustermann Male, DoB: 1900-01-01 ( Social Security number: 1234010100)](http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/2.0.0/Patient-HL7ATCorePatientExample01.html)

> **participant****actor**:[Max Mustermann](http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/2.0.0/Patient-HL7ATCorePatientExample01.html)**required**: true**status**: Accepted

> **participant****actor**:[Melanie Musterärztin](http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/2.0.0/Practitioner-HL7ATCorePractitionerExample01.html)**required**: true**status**: Accepted



## Resource Content

```json
{
  "resourceType" : "Appointment",
  "id" : "HL7ATSchedulingAppointmentExample01",
  "meta" : {
    "profile" : [
      "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-appointment"
    ]
  },
  "status" : "booked",
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
  "appointmentType" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0276",
        "code" : "CHECKUP",
        "display" : "A routine check-up, such as an annual physical"
      }
    ]
  },
  "description" : "Routineuntersuchung beim Hausarzt",
  "start" : "2025-06-01T09:00:00+02:00",
  "end" : "2025-06-01T09:30:00+02:00",
  "minutesDuration" : 30,
  "slot" : [
    {
      "reference" : "Slot/HL7ATSchedulingSlotExample01-free"
    }
  ],
  "created" : "2025-05-10T14:23:00+02:00",
  "subject" : {
    "reference" : "Patient/HL7ATCorePatientExample01"
  },
  "participant" : [
    {
      "actor" : {
        "reference" : "Patient/HL7ATCorePatientExample01",
        "display" : "Max Mustermann"
      },
      "required" : true,
      "status" : "accepted"
    },
    {
      "actor" : {
        "reference" : "Practitioner/HL7ATCorePractitionerExample01",
        "display" : "Melanie Musterärztin"
      },
      "required" : true,
      "status" : "accepted"
    }
  ]
}

```
