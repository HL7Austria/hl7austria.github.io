# HL7.AT.FHIR.TC.WG.SCHEDULING.R5\Scenarios - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Scenarios**

## Scenarios

### Actors

This IG defines two types of actors relevant to the scheduling process: Scheduling Client and Scheduling Server.

#### Scheduling Client

The [Scheduling Client](ActorDefinition-at-scheduling-actor-scheduling-client.md) requests data relevant to appointment scheduling (Healthcare Service Providers, Healthcare Services, available time slots, etc.) using parameters from a Scheduling Server and books/edits/cancels appointments for a specific patient.

#### Scheduling Server

A [Scheduling Server](ActorDefinition-at-scheduling-actor-scheduling-server.md) serves data relevant to appointment scheduling (Healthcare Service Providers, Healthcare Services, available time slots, etc.) and provides services such as: creating patients, booking/editing/cancelling appointments.

### Simple appointment booking

In this scenario a Scheduling Client directly interacts with a Scheduling Server. The Scheduling Server is typically a GP's information system or an HIS offering an appointment booking API according to this implementation guide.

### Central scheduling platform

In this scenario one Central Booking Platform acts as a central Scheduling Server aggregating data from other Scheduling Servers and/or health information systems. Requests to the Central Booking Platform are relayed to known other Scheduling Servers. The other Scheduling Servers can either be health information systems or booking platforms which in turn access the APIs of other Scheduling Servers (either via FHIR or other APIs) in a cascading fashion. The Central Booking Platform aggregates search results from multiple sources for the Scheduling Client and relays requests related to appointment booking from the Scheduling Client to the target Scheduling Server. The Central Booking Platform is not required to persist scheduling related data, but can do so (e.g. for performance reasons).

#### Booking with external provider

In some cases, a provider of a Scheduling Server might want a user to directly book with his scheduling client instead of via the central platform. In this case, the initial Scheduling Client redirects the user to the Scheduling Client of the provider of the corresponding Scheduling Server.

