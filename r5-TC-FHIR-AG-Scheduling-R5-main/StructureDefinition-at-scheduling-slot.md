# HL7.AT.FHIR.TC.WG.SCHEDULING.R5\HL7® AT Scheduling Slot Profile - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7® AT Scheduling Slot Profile**

## Resource Profile: HL7® AT Scheduling Slot Profile 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-slot | *Version*:0.2.0 | |
| Draft as of 2026-02-24 | *Responsible:*HL7® Austria, TC FHIR® | *Computable Name*:HL7ATSchedulingSlot |

 
HL7® Austria FHIR® Scheduling Profile for slot data in Austria. 

A Slot represents the smallest bookable time unit for an appointment for a specific service. E.g. if an examination XY usually takes 30 minutes, 30-minute units will be communicated as Slots. Additionally it contains information about the booking mode and mode of operation.

This Profile is used in the [Find available Slots for potential Appointments](interactions.md#find-available-slots-for-potential-appointments).

**Usages:**

* Refer to this Profile: [HL7® AT Scheduling Appointment Profile](StructureDefinition-at-scheduling-appointment.md)
* Examples for this Profile: [Slot/HL7ATSchedulingSlotExample01-free](Slot-HL7ATSchedulingSlotExample01-free.md), [Slot/HL7ATSchedulingSlotExample02-VirtualVisit](Slot-HL7ATSchedulingSlotExample02-VirtualVisit.md), [Slot/HL7ATSchedulingSlotExample03-selectable-encounterClass](Slot-HL7ATSchedulingSlotExample03-selectable-encounterClass.md) and [Slot/HL7ATSchedulingSlotExample04-external-booking-URL](Slot-HL7ATSchedulingSlotExample04-external-booking-URL.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.tc.wg.scheduling.r5|current/StructureDefinition/at-scheduling-slot)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-scheduling-slot.csv), [Excel](StructureDefinition-at-scheduling-slot.xlsx), [Schematron](StructureDefinition-at-scheduling-slot.sch) 

### Notes:

#### Search parameters

##### Required parameters

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [schedule](https://hl7.org/fhir/slot-search.html#Slot-schedule) | [reference](https://hl7.org/fhir/R5/search.html#reference) | The Schedule Resource that we are seeking a slot within | Slot.schedule[(Schedule)](StructureDefinition-at-scheduling-schedule.md) |  |
| [service-type](https://hl7.org/fhir/slot-search.html#Slot-service-type) | [token](https://hl7.org/fhir/R5/search.html#token) | The type (by coding) of appointments that can be booked into the slot | Slot.serviceType.concept |  |

##### Optional parameters

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [start](https://hl7.org/fhir/R5/slot-search.html#Slot-start) | [date](https://hl7.org/fhir/R5/search.html#date) | Appointment date/time. | Slot.start |  |
| [status](https://hl7.org/fhir/R5/slot-search.html#Slot-status) | [token](https://hl7.org/fhir/R5/search.html#token) | The free/busy status of the appointment. Shall always be "free" | Slot.status |  |



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-scheduling-slot",
  "url" : "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-slot",
  "version" : "0.2.0",
  "name" : "HL7ATSchedulingSlot",
  "title" : "HL7® AT Scheduling Slot Profile",
  "status" : "draft",
  "date" : "2026-02-24T18:21:42+00:00",
  "publisher" : "HL7® Austria, TC FHIR®",
  "description" : "HL7® Austria FHIR® Scheduling Profile for slot data in Austria.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "ical",
    "uri" : "http://ietf.org/rfc/2445",
    "name" : "iCalendar"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Slot",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Slot",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Slot",
      "path" : "Slot"
    },
    {
      "id" : "Slot.extension",
      "path" : "Slot.extension",
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
      "id" : "Slot.extension:SlotEncounterClass",
      "path" : "Slot.extension",
      "sliceName" : "SlotEncounterClass",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/slot-encounter-class"]
      }]
    },
    {
      "id" : "Slot.extension:bookingURL",
      "path" : "Slot.extension",
      "sliceName" : "bookingURL",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/appointment-booking-url"]
      }]
    },
    {
      "id" : "Slot.serviceType",
      "path" : "Slot.serviceType",
      "type" : [{
        "code" : "CodeableReference",
        "targetProfile" : ["http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-healthcareservice"]
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/ValueSet/AtSchedulingServiceType"
      }
    },
    {
      "id" : "Slot.schedule",
      "path" : "Slot.schedule",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-schedule"]
      }]
    }]
  }
}

```
