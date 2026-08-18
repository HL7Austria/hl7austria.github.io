# HL7.AT.FHIR.TC.WG.SCHEDULING.R5\Actors - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Actors**

## Actors

This IG defines two types of actors relevant to the scheduling process: Scheduling Client and Scheduling Server.

#### Scheduling Client

The [Scheduling Client](ActorDefinition-at-scheduling-actor-scheduling-client.md) issues parameterized requests to the Scheduling Server to retrieve Healthcare Service Providers, Healthcare Services, available time slots and other data relevant for Appointment scheduling. It books, edits and cancels Appointments for a specific patient.

#### Scheduling Server

A [Scheduling Server](ActorDefinition-at-scheduling-actor-scheduling-server.md) provides data relevant to Appointment scheduling, including Healthcare Service Providers, Healthcare Services, available time slots. It offers services such as creating Patients, booking, editing and cancelling Appointments.

