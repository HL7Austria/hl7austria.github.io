# HL7.AT.FHIR.TC.WG.SCHEDULING.R5\Interactions - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Interactions**

## Interactions

### General Information

#### Overview of relevant Ressources and Profiles

The following diagram shows how the Ressources and Profiles relevant to this Implementation Guide are related to each other.

```


flowchart LR
  %% Core scheduling backbone
  Schedule["ScheduleHL7 AT Scheduling Schedule Profile"]:::sched
  Slot["SlotHL7 AT Scheduling Slot Profile"]:::slot
  Appointment["AppointmentHL7 AT Scheduling Appointment Profile"]:::appt

  %% Service + participants
  HealthcareService["HealthcareServiceHL7 AT Scheduling HealthcareService Profile"]:::svc

  Patient["PatientHL7 AT Core Patient Profile"]:::core
  RelatedPerson["RelatedPersonFHIR R5 RelatedPerson"]:::core
  Practitioner["PractitionerHL7 AT Core Practitioner Profile"]:::core
  PractitionerRole["PractitionerRoleHL7 AT Core PractitionerRole Profile"]:::core
  Organization["OrganizationHL7 AT Core Organization Profile"]:::core
  Location["LocationHL7 AT Core Location Profile"]:::core

  %% Relationships Schedule/Slot/Appointment
  Schedule -->|"defines availability for"| Slot
  Slot -->|"is booked by"| Appointment
  Schedule -. "serviceTypeCodeableReference(HealthcareService)" .-> HealthcareService
  Schedule -. "actorReference(Patient)" .-> Patient
  Schedule -. "actorReference(Practitioner)" .-> Practitioner
  Schedule -. "actorReference(PractitionerRole)" .-> PractitionerRole
  Schedule -. "actorReference(RelatedPerson)" .-> RelatedPerson
  Schedule -. "actorReference(HealthcareService)" .-> HealthcareService
  Schedule -. "actorReference(Location)" .-> Location

  %% Relationships Appointment -> participants
  Appointment -->|"subjectReference(Patient|Group)"| Patient
  Appointment -. "participant.actorReference(Patient)" .-> Patient
  Appointment -. "participant.actorReference(RelatedPerson)" .-> RelatedPerson
  Appointment -. "participant.actorReference(Practitioner)" .-> Practitioner
  Appointment -. "participant.actorReference(PractitionerRole)" .-> PractitionerRole
  Appointment -. "participant.actorReference(HealthcareService)" .-> HealthcareService
  Appointment -. "participant.actorReference(Location)" .-> Location

  Appointment -. "serviceTypeCodeableReference(HealthcareService)" .-> HealthcareService
  Appointment -. "slotReference(Slot)" .-> Slot

  %% PractitionerRole context
  PractitionerRole -->|"practitioner"| Practitioner
  PractitionerRole -->|"organization"| Organization
  PractitionerRole -. "healthcareService" .-> HealthcareService

  %% Location context
  Location -->|"managingOrganization"| Organization

  %% Clickable links
  click Schedule href "/StructureDefinition-at-scheduling-schedule.html" "Open Schedule profile" _self
  click Slot href "/StructureDefinition-at-scheduling-slot.html" "Open Slot profile" _self
  click Appointment href "/StructureDefinition-at-scheduling-appointment.html" "Open Appointment profile" _self
  click HealthcareService href "/StructureDefinition-at-scheduling-healthcareService.html" "Open HealthcareService profile" _self

  click Patient href "https://fhir.hl7.at/HL7-AT-FHIR-Core-R5/StructureDefinition-at-core-patient.html" "Open Patient profile" _blank
  click RelatedPerson href "https://hl7.org/fhir/relatedperson.html" "Open RelatedPerson resource" _blank
  click Practitioner href "https://fhir.hl7.at/HL7-AT-FHIR-Core-R5/StructureDefinition-at-core-practitioner.html" "Open Practitioner profile" _blank
  click PractitionerRole href "https://fhir.hl7.at/HL7-AT-FHIR-Core-R5/StructureDefinition-at-core-practitionerRole.html" "Open PractitionerRole profile" _blank
  click Organization href "https://fhir.hl7.at/HL7-AT-FHIR-Core-R5/StructureDefinition-at-core-organization.html" "Open Organization profile" _blank
  click Location href "https://fhir.hl7.at/r5-core-main/StructureDefinition-at-core-location.html" "Open Location profile" _blank

  %% Styles
  classDef sched fill:#e1f5fe
  classDef slot fill:#f3e5f5
  classDef appt fill:#e8f5e8
  classDef svc fill:#fff3e0
  classDef core fill:#f5f5f5

```

| | |
| :--- | :--- |
| Schedule | A container for slots of time that may be available for booking appointments. |
| Slot | A slot of time on a schedule that may be available for booking appointments. |
| Appointment | A booking of a healthcare event among patient(s), practitioner(s) and/or related person(s) for a specific date/time. |
| HealthcareService | Details of services available, referenced by schedules and appointments. |
| Patient | Subject of care receiving the appointment. |
| RelatedPerson | Person involved in patient's care (e.g., guardian). |
| Practitioner | Healthcare professional participating in scheduling. |
| PractitionerRole | Role of practitioner within an organization for services. |
| Organization | Entity managing practitioners, locations, or services. |
| Location | Physical site for services and appointments. |

#### Paging

Due to the potentially large amount of data, paging SHALL be used for all interactions with HTTP method `GET`. For the correct usage of paging see [official documentation](https://hl7.org/fhir/R5/http.html#paging).

#### Messages

In typical appointment booking systems appointment-related messages are sent via various channels (e.g. email, text message). Because this implementation guide allows chaining multiple Scheduling Servers cascadingly, the necessity arises to coordinate which Scheduling Server is responsible for sending those messages. By default the Scheduling Server, that also persists Appointments, SHOULD be the one that also sends the Appointment-related messages. However, service providers of Scheduling Servers MAY also have different bilateral arrangements, which are managed outside of the scope of this implementation guide.

Note: The actual transmission of notifications or reminders to Patients (e.g., sending SMS or emails) is out of scope of this implementation guide.

#### Usage of logical IDs vs. Identifiers

When referencing resources across systems, implementers should prefer identifiers over logical IDs. Logical IDs (the `Resource.id` element) are unique only within a single FHIR server and may change if the resource is copied or migrated. In contrast, identifiers (`Resource.identifier`) are stable values designed for use across different systems and contexts (e.g. social insurance number). Using identifiers promotes interoperability, ensuring consistent and reliable linkage of data between independent FHIR implementations.

#### HTTP return preference

Scheduling Clients SHALL use the following HTTP request [Prefer Header](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Prefer) for requests of standard `POST` and `PUT` interactions:

`Prefer: return=representation`

Scheduling Servers SHALL respond to `POST` and `PUT` requests of standard interactions with the full resource in the response body as described [here](https://www.hl7.org/fhir/http.html#ops).

This implementation guide supports the following interactions for a scheduling process.

### Create Patient

A Scheduling Client can create a Patient on a Scheduling Server. This is a prerequisite for booking an Appointment in which this Patient participates. The [HL7® AT Core Patient Profile](https://fhir.hl7.at/HL7-AT-FHIR-Core-R5/StructureDefinition-at-core-patient.html) SHALL be used by both the Scheduling Client for the request as well as the Scheduling Server in the response.

### Find available HealthcareServices

A Scheduling Client can fetch bookable HealthcareServices from a Scheduling Server. [Search parameters](StructureDefinition-at-scheduling-healthcareservice.md#search-parameters) of the [HL7® AT Scheduling HealthcareService Profile](StructureDefinition-at-scheduling-healthcareservice.md) can be used to filter the results. If no search filter for the `active` attribute is provided, the Scheduling Server SHALL respond with resources where the value of the `active` attribute is `true` or not present.

### Find available HealthcareService-Providers ($findHSP)

Depending on the scheduling scenario that is implementented ("peer-to-peer" appointment booking, availability of a central platform for scheduling, …), it might not only be necessary to find offered Healthcare Services, but also to find the medical institution offering the respective service. Additionally, finding Healthcare Service Providers that offer a service close to a location or within a certain zip-code area might be useful as well.

For such a purpose, this IG provides a new operation called [$findHSP](OperationDefinition-healthcareService-provider-find.md) (find Healthcare Service Provider).

This operation uses either a full HealthCareService resource as input parameter or dedicated codes for it like `HealthcareService.category`, `HealthcareService.type` or `HealthcareService.specialty`.

In addition to that a Scheduling Client can provide further filter criteria in its search like:

* a region where a Healthcare Service should ideally be offered with either a Location reference or a zip code
* the desired availablity time of a Healthcare Service

The response will be a Bundle consisting of the HealthcareService resource and a list of Healthcare Service Providers (Organization, Practitioner, PractitionerRole) that offer the requested service.

### Find available Schedules

After (optional) selection of a HealthcareService a Scheduling Client can fetch available Schedules. The Schedule resource provides a container for (time)-Slots that can be booked using an Appointment. One Schedule applies to one service or resource that can be booked and contains multiple Slots indicating the availability of this service/resource. A real-world analogue of a Schedule is a calendar column (for a single resource or service). For a more detailed description, refer to [Schedule](https://www.hl7.org/fhir/schedule.html). [Search parameters](StructureDefinition-at-scheduling-schedule.md#search-parameters) of the [HL7® AT Scheduling Schedule Profile](StructureDefinition-at-scheduling-schedule.md) can be used to filter the results. If no search filter for the `active` attribute is provided, the Scheduling Server SHALL respond with resources where the value of the `active` attribute is `true` or not present.

### Find available Slots for potential Appointments

After selecting one or more Schedules, available Slots for this/those Schedules can be fetched. The Slot is one unit of time on a Schedule and represents the smallest unit of time that the service or resource can be booked for. A real-world analogue of a Slot would be the rows in a calendar column. For a more detailed description, refer to [Slot](https://www.hl7.org/fhir/slot.html). [Search parameters](StructureDefinition-at-scheduling-slot.md#search-parameters) of the [HL7® AT Scheduling Slot Profile](StructureDefinition-at-scheduling-slot.md) can be used to filter the results.

### Reserve Slot ($hold)

In this optional step, a [Slot](StructureDefinition-at-scheduling-slot.md) can be requested to be put on hold (i.e. reserved) by a Scheduling Client until the Appointment is booked. [$hold](OperationDefinition-slot-hold.md) is the corresponding operation definition. The Slot is identified either by a Reference or one or more Identifiers, which have to identify a single Slot instance. For creating a hold on a Slot, the parameter `slot-status` SHALL have the value `busy-tentative`. For releasing the hold on a previously reserved Slot, `slot-status` SHALL have the value `free`. The response contains the Slot resource and an OperationOutcome. In case of successful creation of the hold, the `status` of the Slot is set to `busy-tentative` and the response SHALL contain a parameter `held-until` with type dateTime, signaling, when the hold expires automatically. The Scheduling Server decides how long a Slot is held. If the Slot was successfully released, the `status` is set to `free`. If the hold operation is rejected, due to another Scheduling Client consuming the Slot by booking an Appointment or creating a hold on the Slot, the `status` of the Slot is set to `busy-unavailable`.

### Book Appointment ($book)

The Scheduling Client books an Appointment by sending an [HL7® AT Scheduling Appointment Profile](StructureDefinition-at-scheduling-appointment.md) resource with `status` `proposed` to the Scheduling Server. The Scheduling Server returns a [Parameters](https://www.hl7.org/fhir/parameters.html) response containing the requested Appointment and an [OperationOutcome](https://www.hl7.org/fhir/operationoutcome.html). The Appointment resource will have an updated `status` of `booked` if the request is approved, `pending` if it needs to be manually confirmed or `cancelled` if it is rejected. The corresponding operation definition is the [$book](OperationDefinition-appointment-book.md) operation.

### Cancel Appointment

#### Cancellation by Scheduling Client

To cancel an Appointment, the Scheduling Client sends an [HL7® AT Scheduling Appointment Profile](StructureDefinition-at-scheduling-appointment.md) with its `status` set to `cancelled` or `entered-in-error`. The Scheduling Server responds with the Appointment resource or an OperationOutcome in case of error. If the Appointment was cancelled successfully, the status of the Slot to which the Appointment refers should be set to `free` again, `Slot.status=free`.

#### Cancellation by Scheduling Server

When an Appointment is cancelled on the Scheduling Server it's status is set to `cancelled`. The Scheduling Server is responsible for notifying participants of the Appointment (e.g. via email, text message or push notification) about the cancellation. Scheduling Clients then can fetch the updated Appointment (see [Find existing Appointments](interactions.md#find-existing-appointments)). If the Appointment was cancelled successfully, the status of the Slot to which the Appointment refers should be set to `free` again, `Slot.status=free`.

### Postpone Appointment

#### Postponement by Scheduling Client

To postpone an Appointment, the Scheduling Client sends an [HL7® AT Scheduling Appointment](StructureDefinition-at-scheduling-appointment.md) with updated values for `start`, `end` and optionally `minutesDuration`. The Scheduling Server then returns the updated Appointment or an OperationOutcome in case of error. The Scheduling Server responds with the Appointment resource or an OperationOutcome in case of error.

Because postponing an Appointment changes the time it occupies, the Slots referenced by the Appointment are affected as well. If the postponement is successful, the status of the Slot to which the Appointment previously referred should be set to free again, `Slot.status=free`, while the Slot covering the new time should be marked as occupied, `Slot.status=busy`. Keeping the Slot statuses in sync with the Appointment is the responsibility of the Scheduling Server.

#### Postponement by Scheduling Server

When an Appointment is postponed on the Scheduling Server, the values for `start`, `end` and optionally `minutesDuration` are updated. The Scheduling Server is responsible for notifying participants of the Appointment (e.g. via email, text message or push notification) about the postponement. Scheduling Clients then can fetch the updated Appointment (see [Find existing Appointments](interactions.md#find-existing-appointments)). As with postponement by the Scheduling Client, the affected Slots are updated accordingly: the Slot to which the Appointment previously referred should be set to free again, `Slot.status=free`, while the Slot covering the new time should be marked as occupied, `Slot.status=busy`.

### Update Appointment information

**ToDo: Define restrictions on which fields can be updated.**

#### Update by Scheduling Client

To update an Appointment, a Scheduling Client sends a [HL7® AT Scheduling Appointment Profile](StructureDefinition-at-scheduling-appointment.md) resource with updated attributes. The Scheduling Client SHALL NOT change the participant Patient of the Appointment. The Scheduling Server then returns the updated Appointment or an OperationOutcome in case of error. The Scheduling Server responds with the Appointment resource or an OperationOutcome in case of error.

#### Update by Scheduling Server

When an Appointment's information is updated on the Scheduling Server, the values **ToDo list allowed attributes** are updated. The Scheduling Server is responsible for notifying participants of the Appointment (e.g. via email, text message or push notification) about the update, if the changed information requires informing them. Scheduling Clients then can fetch the updated Appointment (see [Find existing Appointments](interactions.md#find-existing-appointments)).

### Find existing Appointments

Scheduling Clients can fetch existing Appointments from Scheduling Servers. [Search parameters](StructureDefinition-at-scheduling-appointment.md#search-parameters) of the [HL7® AT Scheduling Appointment Profile](StructureDefinition-at-scheduling-appointment.md) can be used to filter the results.

ToDo: Example Search URL

