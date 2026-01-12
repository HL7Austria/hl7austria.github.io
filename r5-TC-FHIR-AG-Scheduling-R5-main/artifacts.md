# HL7.AT.FHIR.TC.WG.SCHEDULING.R5\Artifacts Summary - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Requirements: Actor Definitions 

The following artifacts define the types of individuals and/or systems that will interact as part of the use cases covered by this implementation guide.

| | |
| :--- | :--- |
| [HL7® AT Scheduling Client ActorDefinition](ActorDefinition-at-scheduling-actor-scheduling-client.md) | A system consuming the FHIR API provided by a Scheduling Server |
| [HL7® AT Scheduling Server ActorDefinition](ActorDefinition-at-scheduling-actor-scheduling-server.md) | A system providing the FHIR API for appointment booking and related data |

### Behavior: Operation Definitions 

These are custom operations that can be supported by and/or invoked by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [appointment-book](OperationDefinition-appointment-book.md) | Request to book a selected Appointment. This operation follows the appointment availability and optional hold interactions. This operation completes the booking of an appointment. The server determines if the nominated appointment is still available (i.e., all the required actors and physical assets needed for the appointment are still available) and either accepts or rejects the book request and updates the resource status accordingly. |
| [healthcareService-provider-find](OperationDefinition-healthcareService-provider-find.md) | A query operation that allows to search for healthcare service providers that offer a specific healthcare service. The general information about the HealthcareService identification itself is already available in advance, either as resource or via codes. |
| [slot-hold](OperationDefinition-slot-hold.md) | Request for a hold on a selected Slot in order for the user to complete entering data for booking an appointment. This operation precedes the booking and follows the appointment availability interaction. The server determines if the nominated slot is still available (i.e., all the required actors and physical assets needed for the appointment are still available) and either accepts or rejects the hold request and updates the resource status accordingly. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [HL7® AT Scheduling Appointment Profile](StructureDefinition-at-scheduling-appointment.md) | HL7® Austria FHIR® Scheduling Profile for appointment data in Austria. |
| [HL7® AT Scheduling HealthcareService Profile](StructureDefinition-at-scheduling-healthcareservice.md) | HL7® Austria FHIR® Scheduling Profile for healthcareservice data in Austria. |
| [HL7® AT Scheduling Schedule Profile](StructureDefinition-at-scheduling-schedule.md) | HL7® Austria FHIR® Scheduling Profile for schedule data in Austria. |
| [HL7® AT Scheduling Slot Profile](StructureDefinition-at-scheduling-slot.md) | HL7® Austria FHIR® Scheduling Profile for slot data in Austria. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Appointment Booking URL](StructureDefinition-appointment-booking-url.md) | An optional URL that can be used for redirects to a webpage for booking an Appointment. It should contain identifying information about the Slot so that it can be preselected on the target booking page. |
| [Appointment Postponement Reason](StructureDefinition-appointment-postponementReason.md) | The reason why an appointment was postoponed. This is often used in reporting/billing/further processing to determine if further actions are required, or specific fees apply. |
| [Slot Encounter Class](StructureDefinition-slot-encounter-class.md) | An encounter class similar to (Appointment.class)[https://www.hl7.org/fhir/appointment-definitions.html#Appointment.class] for classification of possible mode of encounter |
| [VirtualServiceDetail](StructureDefinition-virtual-service-detail.md) | Represents personalized details for a virtual service. This extension is meant to be used on appointment.participant if personalized Details (e.g. individual links or secrets) per participant exist. If the details are the same for all participants, Appointment.virtualService should be used instead.**Warning! Due to a bug, this extension contains a workaround. Instead of the custom complex data structure defined here, VirtualServiceDetail will be used as an extension on Appointment.participant in the future** |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AT Scheduling Service Type](ValueSet-AtSchedulingServiceType.md) | This is a placeholder for a ValueSet of bookable service types. The contained value just serves as an example and is not guaranteed to |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [HL7ATSchedulingAppointmentExample01](Appointment-HL7ATSchedulingAppointmentExample01.md) | Physiotherapie - Einzelbehandlung 30 Minuten |
| [HL7ATSchedulingHealthcareServiceExample01](HealthcareService-HL7ATSchedulingHealthcareServiceExample01.md) |  |
| [HL7ATSchedulingScheduleExample01](Schedule-HL7ATSchedulingScheduleExample01.md) | Schedule with Practitioner |
| [HL7ATSchedulingScheduleExample02](Schedule-HL7ATSchedulingScheduleExample02.md) | Schedule with PractitionerRole |
| [HL7ATSchedulingScheduleExample03](Schedule-HL7ATSchedulingScheduleExample03.md) | Schedule with HealthcareService |
| [HL7ATSchedulingSlotExample01-free](Slot-HL7ATSchedulingSlotExample01-free.md) | A simple Slot that is available for Booking |
| [HL7ATSchedulingSlotExample02-VirtualVisit](Slot-HL7ATSchedulingSlotExample02-VirtualVisit.md) | A free Slot for booking an Appointment that can only be conducted as a virtual visit (e.g. video call) |
| [HL7ATSchedulingSlotExample03-selectable-encounterClass](Slot-HL7ATSchedulingSlotExample03-selectable-encounterClass.md) | A free Slot for booking an Appointment that offers a choice for the encounterClass. It can either be conducted as a virtual visit (e.g. video call) or ambulatory (physically present). |
| [HL7ATSchedulingSlotExample04-external-booking-URL](Slot-HL7ATSchedulingSlotExample04-external-booking-URL.md) | A simple Slot that is available for booking and has an external booking URL |

