# HL7.AT.FHIR.TC.WG.SCHEDULING.R5\HL7ATSchedulingScheduleExample03 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7ATSchedulingScheduleExample03**

## Example Schedule: HL7ATSchedulingScheduleExample03

Profile: [HL7® AT Scheduling Schedule Profile](StructureDefinition-at-scheduling-schedule.md)

**active**: true

### ServiceTypes

| | |
| :--- | :--- |
| - | **Concept** |
| * | Physiotherapy |

**actor**: [Example of healthcareservice](HealthcareService-HL7ATSchedulingHealthcareServiceExample01.md)

**planningHorizon**: 2025-05-13 08:00:00+0200 --> 2025-09-23 17:00:00+0200



## Resource Content

```json
{
  "resourceType" : "Schedule",
  "id" : "HL7ATSchedulingScheduleExample03",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/tc/wg/scheduling/r5/StructureDefinition/at-scheduling-schedule"]
  },
  "active" : true,
  "serviceType" : [{
    "concept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/service-type",
        "code" : "65",
        "display" : "Physiotherapy"
      }]
    }
  }],
  "actor" : [{
    "reference" : "HealthcareService/HL7ATSchedulingHealthcareServiceExample01",
    "display" : "Example of healthcareservice"
  }],
  "planningHorizon" : {
    "start" : "2025-05-13T08:00:00+02:00",
    "end" : "2025-09-23T17:00:00+02:00"
  }
}

```
