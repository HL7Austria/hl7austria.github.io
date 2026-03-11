# HL7.AT.FHIR.TC.WG.SCHEDULING.R5\HL7® AT Scheduling Appointment Profile - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7® AT Scheduling Appointment Profile**

## Resource Profile: HL7® AT Scheduling Appointment Profile 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-appointment | *Version*:0.2.0 | |
| Draft as of 2026-03-11 | *Responsible:*HL7® Austria, TC FHIR® | *Computable Name*:HL7ATSchedulingAppointment |

 
HL7® Austria FHIR® Scheduling Profile for appointment data in Austria. 

This Profile is used in the [Find existing Appointments](interactions.md#find-existing-appointments) and the [$book Operation](OperationDefinition-appointment-book.md).

**Usages:**

* Refer to this Profile: [HL7® AT Scheduling Appointment Profile](StructureDefinition-at-scheduling-appointment.md)
* Examples for this Profile: [Appointment/HL7ATSchedulingAppointmentExample01](Appointment-HL7ATSchedulingAppointmentExample01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.tc.wg.scheduling.r5|current/StructureDefinition/at-scheduling-appointment)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-scheduling-appointment.csv), [Excel](StructureDefinition-at-scheduling-appointment.xlsx), [Schematron](StructureDefinition-at-scheduling-appointment.sch) 

### Notes:

#### Search parameters

##### Required parameters

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [actor](https://www.hl7.org/fhir/appointment-search.html#Appointment-actor) | [reference](https://hl7.org/fhir/R5/search.html#reference) | Any one of the individuals participating in the appointment | Appointment.participant.actor([HL7® AT Core Practitioner](https://fhir.hl7.at/HL7-AT-FHIR-Core-R5/StructureDefinition-at-core-practitioner.html),[Group](https://www.hl7.org/fhir/group.html),[CareTeam](https://www.hl7.org/fhir/careteam.html),[Device](https://www.hl7.org/fhir/device.html),[HL7® AT Core Patient](https://fhir.hl7.at/HL7-AT-FHIR-Core-R5/StructureDefinition-at-core-patient.html),[HealthcareService](https://www.hl7.org/fhir/healthcareservice.html),[HL7® AT Core PractitionerRole](https://fhir.hl7.at/HL7-AT-FHIR-Core-R5/StructureDefinition-at-core-practitionerRole.html),[RelatedPerson](https://www.hl7.org/fhir/relatedperson.html),[Location](https://www.hl7.org/fhir/location.html)) |  |
|  [date](https://www.hl7.org/fhir/search.html#clinical-date) | [date](https://www.hl7.org/fhir/search.html#date) | Appointment date/time. | (start | requestedPeriod.start).first() | [27 Resources](https://www.hl7.org/fhir/searchparameter-registry.html#clinical-date) |

##### Optional parameters

The following search parameters SHOULD be supported by scheduling servers:

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
|  [status](https://www.hl7.org/fhir/appointment-search.html#Appointment-status) | [token](https://www.hl7.org/fhir/search.html#token) | The overall status of the appointment | Appointment.status |  |



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-scheduling-appointment",
  "url" : "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-appointment",
  "version" : "0.2.0",
  "name" : "HL7ATSchedulingAppointment",
  "title" : "HL7® AT Scheduling Appointment Profile",
  "status" : "draft",
  "date" : "2026-03-11T10:17:07+00:00",
  "publisher" : "HL7® Austria, TC FHIR®",
  "description" : "HL7® Austria FHIR® Scheduling Profile for appointment data in Austria.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Appointment",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Appointment",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Appointment",
      "path" : "Appointment"
    },
    {
      "id" : "Appointment.extension",
      "path" : "Appointment.extension",
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
      "id" : "Appointment.extension:postponementReason",
      "path" : "Appointment.extension",
      "sliceName" : "postponementReason",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/appointment-postponementReason"]
      }]
    },
    {
      "id" : "Appointment.cancellationReason.extension:cancellationPolicy",
      "path" : "Appointment.cancellationReason.extension",
      "sliceName" : "cancellationPolicy",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-ext-cancellationPolicy"]
      }]
    },
    {
      "id" : "Appointment.serviceType",
      "path" : "Appointment.serviceType",
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
      "id" : "Appointment.specialty",
      "path" : "Appointment.specialty",
      "comment" : "ToDo",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.replaces",
      "path" : "Appointment.replaces",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-appointment"]
      }]
    },
    {
      "id" : "Appointment.previousAppointment",
      "path" : "Appointment.previousAppointment",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-appointment"]
      }]
    },
    {
      "id" : "Appointment.originatingAppointment",
      "path" : "Appointment.originatingAppointment",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-appointment"]
      }]
    },
    {
      "id" : "Appointment.slot",
      "path" : "Appointment.slot",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-slot"]
      }]
    },
    {
      "id" : "Appointment.subject",
      "path" : "Appointment.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-patient",
        "http://hl7.org/fhir/StructureDefinition/Group"]
      }]
    },
    {
      "id" : "Appointment.participant",
      "path" : "Appointment.participant",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "actor.resolve()"
        }],
        "rules" : "open"
      },
      "comment" : "ToDo",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant.extension",
      "path" : "Appointment.participant.extension",
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
      "id" : "Appointment.participant.extension:virtualService",
      "path" : "Appointment.participant.extension",
      "sliceName" : "virtualService",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/virtual-service-detail"]
      }]
    },
    {
      "id" : "Appointment.participant.actor",
      "path" : "Appointment.participant.actor",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant.actor.display",
      "path" : "Appointment.participant.actor.display",
      "comment" : "ToDo",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant.status",
      "path" : "Appointment.participant.status",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant:HL7ATCorePatient",
      "path" : "Appointment.participant",
      "sliceName" : "HL7ATCorePatient",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant:HL7ATCorePatient.actor",
      "path" : "Appointment.participant.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
    },
    {
      "id" : "Appointment.participant:HL7ATCorePatient.actor.reference",
      "path" : "Appointment.participant.actor.reference",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant:HL7ATCorePractitioner",
      "path" : "Appointment.participant",
      "sliceName" : "HL7ATCorePractitioner",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant:HL7ATCorePractitioner.actor",
      "path" : "Appointment.participant.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner"]
      }]
    },
    {
      "id" : "Appointment.participant:HL7ATCorePractitioner.actor.reference",
      "path" : "Appointment.participant.actor.reference",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant:HL7ATCorePractitionerRole",
      "path" : "Appointment.participant",
      "sliceName" : "HL7ATCorePractitionerRole",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant:HL7ATCorePractitionerRole.actor",
      "path" : "Appointment.participant.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
      }]
    },
    {
      "id" : "Appointment.participant:HL7ATCorePractitionerRole.actor.reference",
      "path" : "Appointment.participant.actor.reference",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant:HL7ATSchedulingHealthcareService",
      "path" : "Appointment.participant",
      "sliceName" : "HL7ATSchedulingHealthcareService",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant:HL7ATSchedulingHealthcareService.actor",
      "path" : "Appointment.participant.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/HealthcareService"]
      }]
    },
    {
      "id" : "Appointment.participant:HL7ATSchedulingHealthcareService.actor.reference",
      "path" : "Appointment.participant.actor.reference",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
