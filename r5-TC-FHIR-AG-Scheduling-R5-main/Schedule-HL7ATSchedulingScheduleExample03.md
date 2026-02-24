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

**planningHorizon**: 2025-05-19 09:00:00+0200 --> 2025-05-23 17:00:00+0200



## Resource Content

```json
{
  "resourceType" : "Schedule",
  "id" : "HL7ATSchedulingScheduleExample03",
  "meta" : {
    "profile" : ["http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-schedule"]
  },
  "active" : true,
  "serviceType" : [{
    "concept" : {
      "coding" : [{
        "system" : "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/ValueSet/AtSchedulingServiceType",
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
    "start" : "2025-05-19T09:00:00+02:00",
    "end" : "2025-05-23T17:00:00+02:00"
  }
}

```
