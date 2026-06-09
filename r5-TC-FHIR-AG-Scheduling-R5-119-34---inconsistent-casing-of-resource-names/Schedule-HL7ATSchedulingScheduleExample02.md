# HL7.AT.FHIR.TC.WG.SCHEDULING.R5\HL7ATSchedulingScheduleExample02 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7ATSchedulingScheduleExample02**

## Example Schedule: HL7ATSchedulingScheduleExample02

Profile: [HL7® AT Scheduling Schedule Profile](StructureDefinition-at-scheduling-schedule.md)

**active**: true

### ServiceTypes

| | |
| :--- | :--- |
| - | **Concept** |
| * | Physiotherapy |

**actor**: [PractitionerRole HL7ATCorePractitionerRoleExample01](http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/2.0.0/PractitionerRole-HL7ATCorePractitionerRoleExample01.html)

**planningHorizon**: 2025-05-13 08:00:00+0200 --> 2025-09-23 17:00:00+0200



## Resource Content

```json
{
  "resourceType" : "Schedule",
  "id" : "HL7ATSchedulingScheduleExample02",
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
    "reference" : "PractitionerRole/HL7ATCorePractitionerRoleExample01",
    "display" : "PractitionerRole HL7ATCorePractitionerRoleExample01"
  }],
  "planningHorizon" : {
    "start" : "2025-05-13T08:00:00+02:00",
    "end" : "2025-09-23T17:00:00+02:00"
  }
}

```
