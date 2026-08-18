# HL7.AT.FHIR.TC.WG.SCHEDULING.R5\Home - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

### Introduction

This FHIR Implementation Guide (IG) provides a structured framework for software vendors that aim to offer online appointment booking solutions in Austria. It supports multiple booking scenarios, including the [central scheduling platform](scenarios.md#central-scheduling-platform) model and [simple appointment booking](scenarios.md#simple-appointment-booking).

It is inspired by the [ISiK Modul "Terminplanung"](https://simplifier.net/isik-terminplanung-v4/~introduction) and [IHE Scheduling](https://build.fhir.org/ig/IHE/ITI.Scheduling/index.html) implementation guides and leverages the FHIR Resources [Schedule](https://www.hl7.org/fhir/schedule.html) and [Slot](https://www.hl7.org/fhir/slot.html) for appointment booking. Additionally, it introduces operations for searching for healthcare service providers and for temporarily reserving bookable slots. Furthermore, this guide extends support to virtual appointments, including video consultations, enabling healthcare providers to seamlessly integrate them into the booking process.

This version, 0.1.0 - Informative, is still in its early stage and serves as a reference point for software vendors. The goal is to help vendors verify whether their use cases are sufficiently supported within this framework, fostering interoperability and streamlined appointment scheduling processes across healthcare systems.

**Download**: You can download this implementation guide in [NPM format](https://confluence.hl7.org/display/FHIR/NPM+Package+Specification) from [here](package.tgz).

### Relationship to ISiK and IHE Scheduling

This guide draws on two existing scheduling specifications — the German [ISiK Modul "Terminplanung"](https://simplifier.net/guide/isik-terminplanung-stufe-5) (gematik) and [IHE Scheduling](https://profiles.ihe.net/ITI/Scheduling) (IHE ITI) — but adapts them to the Austrian context and to a cross-organizational, online booking setting. The most important differences concern how the FHIR Resources `Slot` and `Appointment` are used to discover availability, and which use cases are in scope.

#### Usage of Resources: Appointment vs. Slot

The central conceptual difference between the three guides is **which Resource a Scheduling Client browses when looking for availability**.

* **This IG (Slot-centric discovery).** Availability is exposed as `Slot` Resources. A client first locates [Schedules](StructureDefinition-at-scheduling-schedule.md) and then retrieves [Slots](StructureDefinition-at-scheduling-slot.md) with `Slot.status = free` (see [Find available Slots](interactions.md#find-available-slots-for-potential-appointments)). A specific Slot can be reserved with the [$hold](OperationDefinition-slot-hold.md) operation (setting `Slot.status` to `busy-tentative`), and only at the final step is an [Appointment](StructureDefinition-at-scheduling-appointment.md) created via [$book](OperationDefinition-appointment-book.md), referencing the chosen Slot. `Slot` is therefore a first-class, client-facing Resource; the `Appointment` represents the resulting booking, and the Scheduling Server keeps the Slot status in sync with it.
* **IHE Scheduling (Appointment-centric discovery).** Availability is exposed as **proposed** `Appointment` Resources. The **Find Potential Appointments** transaction ([ITI-115](https://profiles.ihe.net/ITI/Scheduling/ITI-115.html)) returns a `searchset` Bundle of `Appointment` Resources, and the subsequent **Hold** ([ITI-116](https://profiles.ihe.net/ITI/Scheduling/ITI-116.html)) and **Book** ([ITI-117](https://profiles.ihe.net/ITI/Scheduling/ITI-117.html)) transactions operate on that same `Appointment`. `Schedule` and `Slot` exist conceptually but remain largely server-internal — the client never browses Slots directly. The entire workflow is Appointment-centric.
* **ISiK Terminplanung (Slot-based, single-system).** ISiK defines explicit profiles for `Schedule` (**ISiKKalender**), `Slot` (**ISiKTerminblock**) and `Appointment` (**ISiKTermin**). As in this IG, free Slots are queried first and an Appointment is then booked (`$book`). The model is close to this guide's Slot-based approach, but it is scoped to a single confirming system (a hospital information system) rather than to discovery across many independent servers.

This guide deliberately follows the Slot-based model (like ISiK, and unlike IHE) because exposing concrete bookable Slots fits the Austrian online-booking use cases — including the cascading aggregation of availability across many Scheduling Servers — better than exchanging fully-formed candidate Appointments.

#### Covered use cases

* **This IG.** Cross-organizational **online** appointment booking in Austria. It defines two scenarios: [simple appointment booking](scenarios.md#simple-appointment-booking) (a client talking directly to one server, e.g. a GP system or HIS) and the [central scheduling platform](scenarios.md#central-scheduling-platform), where one platform aggregates and cascades requests across multiple Scheduling Servers (a broker/marketplace model). On top of the booking flow it adds **healthcare service provider discovery** via the [$findHSP](OperationDefinition-healthcareService-provider-find.md) operation (find a provider by service type, specialty, region/ZIP, or availability) and explicit support for **virtual appointments** such as video consultations.
* **IHE Scheduling.** A vendor-neutral, international API for **accessing and booking** a patient's appointments against a single scheduling source. It defines the transactions **Find Potential Appointments** (ITI-115), **Hold** (ITI-116), **Book** (ITI-117) and **Find Existing Appointments** (ITI-118). It does not specify cross-server aggregation/cascading and has no dedicated provider-search transaction.
* **ISiK Terminplanung.** Part of the German **Informationstechnische Systeme in Krankenhäusern** program (legally anchored in the Krankenhauszukunftsgesetz, KHZG). It targets patient portals and digital intake connecting to a hospital information system, covering retrieval of treatment services, querying of availability, booking, change notifications and patient registration. It explicitly does **not** aim to be a complete model for internal hospital resource planning, and it is intramural (single institution) in scope.

#### Summary

| | | | |
| :--- | :--- | :--- | :--- |
| FHIR version | R5 | R4 (4.0.1) | R4 (German base profiles) |
| Availability browsed as | `Slot`(`status = free`) | proposed`Appointment`(Bundle) | `Slot`(**ISiKTerminblock**) |
| Reservation / hold | `$hold`on`Slot` | ITI-116**Hold**on`Appointment` | — |
| Booking | `$book`on`Appointment` | ITI-117**Book**on`Appointment` | `$book`on`Appointment` |
| Provider discovery | `$findHSP`operation | not covered | not covered |
| Cross-server aggregation | yes (central platform, cascading) | no | no (single system) |
| Virtual / video appointments | explicitly supported | not specified | not in focus |
| Primary scope | Austrian, cross-organizational online booking | international, generic access API | German hospitals (KHZG), patient portals |

### Dependencies

This guide is based on the [FHIR® R5](http://hl7.org/fhir/R5/) specification. In addition, this guide also relies on a number of parent implementation guides:

### Known Issues

In this implementation guide a ValueSet [AT Scheduling Service Type](ValueSet-AtSchedulingServiceType.md) is used in several Profiles. In the future, the ValueSet will contain an extendable set of suggested codes, but creating a single harmonized List with codes from all vendors is out of scope. This ValueSet currently only serves as a placeholder and contains a single entry in order to provide useful examples for the profiles that make use of it.

Furthermore, the transmission of notifications or reminders to Patients is out of scope for this implementation guide. While notifications are mentioned in the context of cancellation workflows, the IG does not define mechanisms or channels for directly delivering messages to Patients.

In this implementation guide, no rules for cancellation of appointments (see Interaction [Cancellation by Scheduling Server](interactions.md#cancellation-by-scheduling-server)) by Scheduling Server are defined. Those rules are subject to the Scheduling Server's business logic and therefor out of scope.

### Governance

HL7® Austria is an official Affiliate of HL7® International. Within HL7® Austria the technical committee for FHIR® (TC FHIR®) is responsible to promote and disseminate the new upcoming standard HL7® FHIR®. The TC FHIR® deals with the standard-compliant and coordinated usage of HL7® FHIR® based communication solutions. It coordinates and describes necessary localizations and offers concrete help for FHIR®-compliant interfaces.

### License and Legal Terms

HL7®, HEALTH LEVEL SEVEN® and FHIR® are trademarks owned by Health Level Seven International, registered with the United States Patent and Trademark Office.

This Implementation Guide contains and references intellectual property owned by third parties (“Third Party IP”). Acceptance of these License Terms does not grant any rights with respect to Third Party IP. The licensee alone is responsible for identifying and obtaining any necessary licenses or authorizations to utilize Third Party IP in connection with the specification or otherwise.



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.at.fhir.tc.wg.scheduling.r5",
  "url" : "https://fhir.hl7.at/tc/wg/scheduling/r5/ImplementationGuide/hl7.at.fhir.tc.wg.scheduling.r5",
  "version" : "0.2.0",
  "name" : "TCFHIRAGSchedulingR5",
  "title" : "Austrian Appointment Scheduling (R5)",
  "status" : "draft",
  "date" : "2026-08-18T09:10:41+00:00",
  "publisher" : "HL7® Austria, TC FHIR®",
  "packageId" : "hl7.at.fhir.tc.wg.scheduling.r5",
  "license" : "CC0-1.0",
  "fhirVersion" : ["5.0.0"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r5",
    "version" : "7.3.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r5",
    "version" : "5.3.0"
  },
  {
    "id" : "hl7_at_fhir_core_r5",
    "uri" : "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/ImplementationGuide/hl7.at.fhir.core.r5",
    "packageId" : "hl7.at.fhir.core.r5",
    "version" : "2.0.0"
  }],
  "definition" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r5#1.1.2"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-appointment-booking-url.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/appointment-booking-url"
      },
      "name" : "Appointment Booking URL",
      "description" : "An optional URL that can be used for redirects to a webpage for booking an Appointment. It should contain identifying information about the Slot so that it can be preselected on the target booking page.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-appointment-postponementReason.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/appointment-postponementReason"
      },
      "name" : "Appointment Postponement Reason",
      "description" : "The reason why an appointment was postoponed. This is often used in reporting/billing/further processing to determine if further actions are required, or specific fees apply.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "OperationDefinition-appointment-book.html"
      }],
      "reference" : {
        "reference" : "OperationDefinition/appointment-book"
      },
      "name" : "appointment-book",
      "description" : "Request to book a selected Appointment. This operation follows the appointment availability and optional hold interactions. This operation completes the booking of an appointment. The server determines if the nominated appointment is still available (i.e., all the required actors and physical assets needed for the appointment are still available) and either accepts or rejects the book request and updates the resource status accordingly.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-AtSchedulingServiceType.html"
      }],
      "reference" : {
        "reference" : "ValueSet/AtSchedulingServiceType"
      },
      "name" : "AT Scheduling Service Type",
      "description" : "This is a placeholder for a ValueSet of bookable service types. The contained value just serves as an example and is not guaranteed to",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "OperationDefinition-healthcareService-provider-find.html"
      }],
      "reference" : {
        "reference" : "OperationDefinition/healthcareService-provider-find"
      },
      "name" : "healthcareService-provider-find",
      "description" : "A query operation that allows to search for healthcare service providers that offer a specific healthcare service. The general information about the HealthcareService identification itself is already available in advance, either as resource or via codes.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-HL7ATCorePatientExample01.html"
      }],
      "reference" : {
        "reference" : "Patient/HL7ATCorePatientExample01"
      },
      "name" : "HL7ATCorePatientExample01",
      "description" : "Example for the usage of the HL7 AT Core Patient Profile",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Appointment"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Appointment-HL7ATSchedulingAppointmentExample01.html"
      }],
      "reference" : {
        "reference" : "Appointment/HL7ATSchedulingAppointmentExample01"
      },
      "name" : "HL7ATSchedulingAppointmentExample01",
      "description" : "Physiotherapie - Einzelbehandlung 30 Minuten",
      "isExample" : true,
      "profile" : ["https://fhir.hl7.at/tc/wg/scheduling/r5/StructureDefinition/at-scheduling-appointment"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "HealthcareService"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "HealthcareService-HL7ATSchedulingHealthcareServiceExample01.html"
      }],
      "reference" : {
        "reference" : "HealthcareService/HL7ATSchedulingHealthcareServiceExample01"
      },
      "name" : "HL7ATSchedulingHealthcareServiceExample01",
      "isExample" : true,
      "profile" : ["https://fhir.hl7.at/tc/wg/scheduling/r5/StructureDefinition/at-scheduling-healthcareservice"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Schedule"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Schedule-HL7ATSchedulingScheduleExample01.html"
      }],
      "reference" : {
        "reference" : "Schedule/HL7ATSchedulingScheduleExample01"
      },
      "name" : "HL7ATSchedulingScheduleExample01",
      "description" : "Schedule with Practitioner",
      "isExample" : true,
      "profile" : ["https://fhir.hl7.at/tc/wg/scheduling/r5/StructureDefinition/at-scheduling-schedule"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Schedule"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Schedule-HL7ATSchedulingScheduleExample02.html"
      }],
      "reference" : {
        "reference" : "Schedule/HL7ATSchedulingScheduleExample02"
      },
      "name" : "HL7ATSchedulingScheduleExample02",
      "description" : "Schedule with PractitionerRole",
      "isExample" : true,
      "profile" : ["https://fhir.hl7.at/tc/wg/scheduling/r5/StructureDefinition/at-scheduling-schedule"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Schedule"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Schedule-HL7ATSchedulingScheduleExample03.html"
      }],
      "reference" : {
        "reference" : "Schedule/HL7ATSchedulingScheduleExample03"
      },
      "name" : "HL7ATSchedulingScheduleExample03",
      "description" : "Schedule with HealthcareService",
      "isExample" : true,
      "profile" : ["https://fhir.hl7.at/tc/wg/scheduling/r5/StructureDefinition/at-scheduling-schedule"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Slot"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Slot-HL7ATSchedulingSlotExample01-free.html"
      }],
      "reference" : {
        "reference" : "Slot/HL7ATSchedulingSlotExample01-free"
      },
      "name" : "HL7ATSchedulingSlotExample01-free",
      "description" : "A simple Slot that is available for Booking",
      "isExample" : true,
      "profile" : ["https://fhir.hl7.at/tc/wg/scheduling/r5/StructureDefinition/at-scheduling-slot"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Slot"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Slot-HL7ATSchedulingSlotExample02-VirtualVisit.html"
      }],
      "reference" : {
        "reference" : "Slot/HL7ATSchedulingSlotExample02-VirtualVisit"
      },
      "name" : "HL7ATSchedulingSlotExample02-VirtualVisit",
      "description" : "A free Slot for booking an Appointment that can only be conducted as a virtual visit (e.g. video call)",
      "isExample" : true,
      "profile" : ["https://fhir.hl7.at/tc/wg/scheduling/r5/StructureDefinition/at-scheduling-slot"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Slot"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Slot-HL7ATSchedulingSlotExample03-selectable-encounterClass.html"
      }],
      "reference" : {
        "reference" : "Slot/HL7ATSchedulingSlotExample03-selectable-encounterClass"
      },
      "name" : "HL7ATSchedulingSlotExample03-selectable-encounterClass",
      "description" : "A free Slot for booking an Appointment that offers a choice for the encounterClass. It can either be conducted as a virtual visit (e.g. video call) or ambulatory (physically present).",
      "isExample" : true,
      "profile" : ["https://fhir.hl7.at/tc/wg/scheduling/r5/StructureDefinition/at-scheduling-slot"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Slot"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Slot-HL7ATSchedulingSlotExample04-external-booking-URL.html"
      }],
      "reference" : {
        "reference" : "Slot/HL7ATSchedulingSlotExample04-external-booking-URL"
      },
      "name" : "HL7ATSchedulingSlotExample04-external-booking-URL",
      "description" : "A simple Slot that is available for booking and has an external booking URL",
      "isExample" : true,
      "profile" : ["https://fhir.hl7.at/tc/wg/scheduling/r5/StructureDefinition/at-scheduling-slot"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-scheduling-appointment.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-scheduling-appointment"
      },
      "name" : "HL7® AT Scheduling Appointment Profile",
      "description" : "HL7® Austria FHIR® Scheduling Profile for appointment data in Austria.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-scheduling-healthcareservice.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-scheduling-healthcareservice"
      },
      "name" : "HL7® AT Scheduling HealthcareService Profile",
      "description" : "HL7® Austria FHIR® Scheduling Profile for healthcareservice data in Austria.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-scheduling-schedule.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-scheduling-schedule"
      },
      "name" : "HL7® AT Scheduling Schedule Profile",
      "description" : "HL7® Austria FHIR® Scheduling Profile for schedule data in Austria.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-scheduling-slot.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-scheduling-slot"
      },
      "name" : "HL7® AT Scheduling Slot Profile",
      "description" : "HL7® Austria FHIR® Scheduling Profile for slot data in Austria.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-slot-encounter-class.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/slot-encounter-class"
      },
      "name" : "Slot Encounter Class",
      "description" : "An encounter class similar to (Appointment.class)[https://www.hl7.org/fhir/appointment-definitions.html#Appointment.class] for classification of possible mode of encounter",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "OperationDefinition-slot-hold.html"
      }],
      "reference" : {
        "reference" : "OperationDefinition/slot-hold"
      },
      "name" : "slot-hold",
      "description" : "Request for a hold on a selected Slot in order for the user to complete entering data for booking an appointment.  This operation follows the appointment availability interaction and precedes the booking.  The server determines if the nominated slot is still available (i.e., all the required actors and physical assets needed for the appointment are still available) and either accepts or rejects the hold request and updates the resource status accordingly.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-scheduling-ext-cancellationPolicy.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-scheduling-ext-cancellationPolicy"
      },
      "name" : "The policy for a cancellation",
      "description" : "This Extension provides the information about the policy of a cancellation of an appointment. It can contain a time frame until when a cancellation is possible or what the fee for a cancellation will be.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-virtual-service-detail.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/virtual-service-detail"
      },
      "name" : "VirtualServiceDetail",
      "description" : "Represents personalized details for a virtual service. This extension is meant to be used on appointment.participant if personalized Details (e.g. individual links or secrets) per participant exist. If the details are the same for all participants, Appointment.virtualService should be used instead. **Warning! Due to a bug, this extension contains a workaround. Instead of the custom complex data structure defined here, VirtualServiceDetail will be used as an extension on Appointment.participant in the future**",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActorDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ActorDefinition-at-scheduling-actor-scheduling-client.html"
      }],
      "reference" : {
        "reference" : "ActorDefinition/at-scheduling-actor-scheduling-client"
      },
      "name" : "HL7® AT Scheduling Client ActorDefinition",
      "description" : "A system consuming the FHIR API provided by a Scheduling Server"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActorDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ActorDefinition-at-scheduling-actor-scheduling-server.html"
      }],
      "reference" : {
        "reference" : "ActorDefinition/at-scheduling-actor-scheduling-server"
      },
      "name" : "HL7® AT Scheduling Server ActorDefinition",
      "description" : "A system providing the FHIR API for appointment booking and related data"
    }],
    "page" : {
      "sourceUrl" : "toc.html",
      "name" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "sourceUrl" : "index.html",
        "name" : "index.html",
        "title" : "Home",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "actors.html",
        "name" : "actors.html",
        "title" : "Actors",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "scenarios.html",
        "name" : "scenarios.html",
        "title" : "Scenarios",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "interactions.html",
        "name" : "interactions.html",
        "title" : "Interactions",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "copyrightyear"
      },
      "value" : "2024+"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "releaselabel"
      },
      "value" : "Informative"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "autoload-resources"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/capabilities"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/examples"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/extensions"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/models"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/operations"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/profiles"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/resources"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/vocabulary"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/maps"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/testing"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/history"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "fsh-generated/resources"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-pages"
      },
      "value" : "template/config"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-pages"
      },
      "value" : "input/images"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-liquid"
      },
      "value" : "template/liquid"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-liquid"
      },
      "value" : "input/liquid"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-qa"
      },
      "value" : "temp/qa"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-temp"
      },
      "value" : "temp/pages"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-output"
      },
      "value" : "output"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-tx-cache"
      },
      "value" : "input-cache/txcache"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-suppressed-warnings"
      },
      "value" : "input/ignoreWarnings.txt"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-history"
      },
      "value" : "https://fhir.hl7.at/tc/wg/scheduling/r5/history.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "template-html"
      },
      "value" : "template-page.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "template-md"
      },
      "value" : "template-page-md.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-contact"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-context"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-copyright"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-jurisdiction"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-license"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-publisher"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-version"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-wg"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "active-tables"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "fmm-definition"
      },
      "value" : "http://hl7.org/fhir/versions.html#maturity"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "propagate-status"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "excludelogbinaryformat"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "tabbed-snapshots"
      },
      "value" : "true"
    }]
  }
}

```
