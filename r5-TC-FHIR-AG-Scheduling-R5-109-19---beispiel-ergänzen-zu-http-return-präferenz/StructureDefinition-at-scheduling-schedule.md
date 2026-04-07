# HL7.AT.FHIR.TC.WG.SCHEDULING.R5\HL7® AT Scheduling Schedule Profile - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7® AT Scheduling Schedule Profile**

## Resource Profile: HL7® AT Scheduling Schedule Profile 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-schedule | *Version*:0.2.0 | |
| Draft as of 2026-04-07 | *Responsible:*HL7® Austria, TC FHIR® | *Computable Name*:HL7ATSchedulingSchedule |

 
HL7® Austria FHIR® Scheduling Profile for schedule data in Austria. 

This Profile is used in the [Find available Schedules Interaction](interactions.md#find-available-schedules).

**Usages:**

* Refer to this Profile: [HL7® AT Scheduling Slot Profile](StructureDefinition-at-scheduling-slot.md)
* Examples for this Profile: [Schedule/HL7ATSchedulingScheduleExample01](Schedule-HL7ATSchedulingScheduleExample01.md), [Schedule/HL7ATSchedulingScheduleExample02](Schedule-HL7ATSchedulingScheduleExample02.md) and [Schedule/HL7ATSchedulingScheduleExample03](Schedule-HL7ATSchedulingScheduleExample03.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.tc.wg.scheduling.r5|current/StructureDefinition/at-scheduling-schedule)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-scheduling-schedule.csv), [Excel](StructureDefinition-at-scheduling-schedule.xlsx), [Schematron](StructureDefinition-at-scheduling-schedule.sch) 

### Notes:

#### Search parameters

##### Required Parameters

At least one of the parameters [actor](https://www.hl7.org/fhir/schedule-search.html#Schedule-actor) or [service-type-reference](https://www.hl7.org/fhir/schedule-search.html#Schedule-service-type-reference) is required. Additionally [date](https://www.hl7.org/fhir/schedule-search.html#Schedule-date) is always required.

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [actor](https://www.hl7.org/fhir/schedule-search.html#Schedule-actor) | [reference](https://www.hl7.org/fhir/search.html#reference) | The individual(HealthcareService, Practitioner, Location, …) to find a Schedule for **AND/OR service-type-reference required | Schedule.actor ([Practitioner](https://www.hl7.org/fhir/practitioner.html),[Practitioner Role]()) |  |
| [date](https://www.hl7.org/fhir/schedule-search.html#Schedule-date) | [date](https://www.hl7.org/fhir/search.html#date) | Search for Schedule resources that have a period that contains this date specified | Schedule.planningHorizon |  |
| [service-type-reference](https://www.hl7.org/fhir/schedule-search.html#Schedule-service-type-reference) | [reference](https://www.hl7.org/fhir/search.html#reference) | The type (by HealthcareService) of appointments that can be booked into associated slot(s)**AND/OR actor required** | Schedule.serviceType.reference |  |



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-scheduling-schedule",
  "url" : "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-schedule",
  "version" : "0.2.0",
  "name" : "HL7ATSchedulingSchedule",
  "title" : "HL7® AT Scheduling Schedule Profile",
  "status" : "draft",
  "date" : "2026-04-07T10:01:57+00:00",
  "publisher" : "HL7® Austria, TC FHIR®",
  "description" : "HL7® Austria FHIR® Scheduling Profile for schedule data in Austria.",
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
  "type" : "Schedule",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Schedule",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Schedule",
      "path" : "Schedule"
    },
    {
      "id" : "Schedule.serviceType",
      "path" : "Schedule.serviceType",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/ValueSet/AtSchedulingServiceType"
      }
    },
    {
      "id" : "Schedule.actor",
      "path" : "Schedule.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-patient",
        "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-practitioner",
        "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-practitionerRole",
        "http://hl7.org/fhir/StructureDefinition/CareTeam",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
        "http://hl7.org/fhir/StructureDefinition/Device",
        "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-healthcareservice",
        "http://hl7.org/fhir/StructureDefinition/Location"]
      }]
    }]
  }
}

```
