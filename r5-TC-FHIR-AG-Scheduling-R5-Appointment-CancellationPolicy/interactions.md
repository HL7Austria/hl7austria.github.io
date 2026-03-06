# HL7.AT.FHIR.TC.WG.SCHEDULING.R5\Interactions - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Interactions**

## Interactions

### General Information

#### Paging

Due to the potentially large amount of data, paging SHALL be used for all interactions with HTTP method `GET`. For the correct usage of paging see [official documentation](https://hl7.org/fhir/R5/http.html#paging).

#### Messages

In typical appointment booking systems appointment-related messages are sent via various channels (e.g. email, text message). Because this implementation guide allows chaining multiple Scheduling Servers cascadingly, the necessity arises to coordinate which Scheduling Server is responsible for sending those messages. By default the Scheduling Server, that also persists Appointments, SHOULD be the one that also sends the Appointment-related messages. However, service providers of Scheduling Servers MAY also have different bilateral arrangements, which are managed outside of the scope of this implementation guide.

Note: The actual transmission of notifications or reminders to Patients (e.g., sending SMS or emails) is out of scope of this implementation guide.

#### Usage of logical IDs vs. Identifiers

When referencing resources across systems, implementers should prefer identifiers over logical IDs. Logical IDs (the `Resource.id` element) are unique only within a single FHIR server and may change if the resource is copied or migrated. In contrast, identifiers (`Resource.identifier`) are stable values designed for use across different systems and contexts (e.g. social insurance number). Using identifiers promotes interoperability, ensuring consistent and reliable linkage of data between independent FHIR implementations.

#### HTTP return preference

Scheduling Clients SHALL use the following HTTP return preference for requests of standard `POST` and `PUT` interactions:

`Prefer: return=representation`

Scheduling Servers SHALL respond to `POST` and `PUT` requests of standard interactions with the full resource in the response body as described [here](https://www.hl7.org/fhir/http.html#ops).

This implementation guide supports the following interactions for a scheduling process.

### Create Patient

A Scheduling Client can create a Patient on a Scheduling Server. This is a prerequisite for booking an Appointment in which this Patient participates. The [HL7® AT Core Patient Profile](https://fhir.hl7.at/HL7-AT-FHIR-Core-R5/StructureDefinition-at-core-patient.html) SHALL be used by both the Scheduling Client for the request as well as the Scheduling Server in the response.

### Find available HealthcareServices

A Scheduling Client can fetch bookable HealthcareServices from a Scheduling Server. [Search parameters](StructureDefinition-at-scheduling-healthcareservice.md#search-parameters) of the [HL7® AT Scheduling HealthcareService Profile](StructureDefinition-at-scheduling-healthcareservice.md) can be used to filter the results. If no search filter for the `active` attribute is provided, the Scheduling Server SHALL respond with resources where the value of the `active` attribute is `true` or not present.

### Find available HealthcareService-Providers ($findHSP)

Depending on the scheduling scenario that is implementented ("peer-to-peer" appointment booking, availability of a central platform for scheduling, …), it might not only be necessary to find offered healthcare services, but also to find the medical institution offering the respective service. Additionally, finding healthcare service providers that offer a service close to a location or within a certain zip-code area might be useful as well.

For such a purpose, this IG provides a new operation called [$findHSP](OperationDefinition-healthcareService-provider-find.md) (find Healthcare Service Provider).

This operation uses either a full HealthCareService resource as input parameter or dedicated codes for it like `HealthcareService.category`, `HealthcareService.type` or `HealthcareService.specialty`.

In addition to that a Scheduling Client can provide further filter criteria in its search like:

* a region where a healthcare service should ideally be offered with either a Location reference or a zip code
* the desired availablity time of a healthcare service

The response will be a Bundle consisting of the HealthcareService resource and a list of healthcare service providers (Organization, Practitioner, PractitionerRole) that offer the requested service.

### Find available Schedules

After (optional) selection of a HealthcareService a Scheduling Client can fetch available Schedules. The schedule resource provides a container for (time)-slots that can be booked using an appointment. One schedule applies to one service or resource that can be booked and contains multiple slots indicating the availability of this service/resource. A real-world analogue of a schedule is a calendar column (for a single resource or service). For a more detailed description, refer to [Schedule](https://www.hl7.org/fhir/schedule.html). [Search parameters](StructureDefinition-at-scheduling-schedule.md#search-parameters) of the [HL7® AT Scheduling Schedule Profile](StructureDefinition-at-scheduling-schedule.md) can be used to filter the results. If no search filter for the `active` attribute is provided, the Scheduling Server SHALL respond with resources where the value of the `active` attribute is `true` or not present.

### Find available Slots for potential Appointments

After selecting one or more Schedules, available Slots for this/those Schedules can be fetched. The slot is one unit of time on a schedule and represents the smallest unit of time that the service or resource can be booked for. A real-world analogue of a slot would be the rows in a calendar column. For a more detailed description, refer to [Slot](https://www.hl7.org/fhir/slot.html). [Search parameters](StructureDefinition-at-scheduling-slot.md#search-parameters) of the [HL7® AT Scheduling Slot Profile](StructureDefinition-at-scheduling-slot.md) can be used to filter the results.

### Reserve Slot ($hold)

In this optional step, a [Slot](StructureDefinition-at-scheduling-slot.md) can be requested to be put on hold (i.e. reserved) by a Scheduling Client until the Appointment is booked. [$hold](OperationDefinition-slot-hold.md) is the corresponding operation definition. The Slot is identified either by a Reference or one or more Identifiers, which have to identify a single slot instance. For creating a hold on a Slot, the parameter `slot-status` SHALL have the value `busy-tentative`. For releasing the hold on a previously reserved Slot, `slot-status` SHALL have the value `free`. The response contains the Slot resource and an OperationOutcome. In case of successful creation of the hold, the `status` of the Slot is set to "busy-tentative" and the response SHALL contain a parameter `held-until` with type dateTime, signaling, when the hold expires automatically. The Scheduling Server decides how long a Slot is held. If the Slot was successfully released, the `status` is set to `free`. If the hold operation is rejected, due to another Scheduling Client consuming the Slot by booking an Appointment or creating a hold on the Slot, the `status` of the Slot is set to "busy-unavailable".

### Book Appointment ($book)

The scheduling client books an appointment by sending an [HL7® AT Scheduling Appointment Profile](StructureDefinition-at-scheduling-appointment.md) resource with `status` `proposed` to the Scheduling Server. The Scheduling Server returns a [Parameters](https://www.hl7.org/fhir/parameters.html) response containing the requested Appointment and an [OperationOutcome](https://www.hl7.org/fhir/operationoutcome.html). The Appointment resource will have an updated `status` of `booked` if the request is approved, `pending` if it needs to be manually confirmed or `cancelled` if it is rejected. The corresponding operation definition is the [$book](OperationDefinition-appointment-book.md) operation.

### Cancel Appointment

#### Cancellation by Scheduling Client

To cancel an Appointment, the Scheduling Client sends an [HL7® AT Scheduling Appointment Profile](StructureDefinition-at-scheduling-appointment.md) with its `status` set to `cancelled` or `entered-in-error`. The Scheduling Server responds with the Appointment resource or an OperationOutcome in case of error. If the Appointment was cancelled successfully, the status of the Slot to which the Appointment refers should be set to "free" again, `Slot.status=free`.

#### Cancellation by Scheduling Server

When an Appointment is cancelled on the Scheduling Server it's status is set to `cancelled`. The Scheduling Server is responsible for notifying participants of the Appointment (e.g. via email, text message or push notification) about the cancellation. Scheduling Clients then can fetch the updated Appointment (see [Find existing Appointments](interactions.md#find-existing-appointments)). If the Appointment was cancelled successfully, the status of the Slot to which the Appointment refers should be set to "free" again, `Slot.status=free`.

### Postpone Appointment

#### Postponement by Scheduling Client

To postpone an Appointment, the Scheduling Client sends an [HL7® AT Scheduling Appointment](StructureDefinition-at-scheduling-appointment.md) with updated values for `start`, `end` and optionally `minutesDuration`. The Scheduling Server then returns the updated Appointment or an OperationOutcome in case of error. The Scheduling Server responds with the Appointment resource or an OperationOutcome in case of error.

#### Postponement by Scheduling Server

When an Appointment is postponed on the Scheduling Server, the values for `start`, `end` and optionally `minutesDuration` are updated. The Scheduling Server is responsible for notifying participants of the Appointment (e.g. via email, text message or push notification) about the postponement. Scheduling Clients then can fetch the updated Appointment (see [Find existing Appointments](interactions.md#find-existing-appointments)).

### Update Appointment information

**ToDo: Define restrictions on which fields can be updated.**

#### Update by Scheduling Client

To update an Appointment, a Scheduling Client sends a [HL7® AT Scheduling Appointment Profile](StructureDefinition-at-scheduling-appointment.md) resource with updated attributes. The Scheduling Client SHALL NOT change the participant Patient of the Appointment. The Scheduling Server then returns the updated Appointment or an OperationOutcome in case of error. The Scheduling Server responds with the Appointment resource or an OperationOutcome in case of error.

#### Update by Scheduling Server

When an Appointment's information is updated on the Scheduling Server, the values **ToDo list allowed attributes** are updated. The Scheduling Server is responsible for notifying participants of the Appointment (e.g. via email, text message or push notification) about the update, if the changed information requires informing them. Scheduling Clients then can fetch the updated Appointment (see [Find existing Appointments](interactions.md#find-existing-appointments)).

### Find existing Appointments

Scheduling Clients can fetch existing Appointments from Scheduling Servers. [Search parameters](StructureDefinition-at-scheduling-appointment.md#search-parameters) of the [HL7® AT Scheduling Appointment Profile](StructureDefinition-at-scheduling-appointment.md) can be used to filter the results.

ToDo: Example Search URL

