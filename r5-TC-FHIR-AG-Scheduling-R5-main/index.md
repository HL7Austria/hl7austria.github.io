# HL7.AT.FHIR.TC.WG.SCHEDULING.R5\Home - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

### Management Summary

The Austrian Appointment Scheduling Implementation Guide (IG) defines a standardized, FHIR®-based approach for online appointment booking across the Austrian healthcare system. It enables software vendors and healthcare providers to implement interoperable scheduling solutions — ranging from a single practice that offers direct online booking to a [central scheduling platform](use-case-central-scheduling-platform.md) that aggregates availability from many systems.

Building on the FHIR R5 [Schedule](https://www.hl7.org/fhir/schedule.html) and [Slot](https://www.hl7.org/fhir/slot.html) resources and adding operations for discovering healthcare service providers and for temporarily reserving bookable slots, the guide covers the full scheduling lifecycle: finding healthcare services and providers, locating available slots, holding and booking appointments, and managing cancellations, postponements and updates. It also supports virtual appointments such as video consultations.

By providing a common reference for these interactions, the guide fosters interoperability and a consistent patient experience across Austrian healthcare systems. Software vendors can use it to verify whether their use cases are sufficiently supported and to align their implementations with a shared, nationally coordinated framework.

### Workgroup

HL7® Austria is an official Affiliate of HL7® International. Within HL7® Austria the technical committee for FHIR® (TC FHIR®) is responsible to promote and disseminate the new upcoming standard HL7® FHIR®. The TC FHIR® deals with the standard-compliant and coordinated usage of HL7® FHIR® based communication solutions. It coordinates and describes necessary localizations and offers concrete help for FHIR®-compliant interfaces.

This implementation guide is developed and maintained on [GitHub](https://github.com/HL7Austria/TC-FHIR-AG-Scheduling-R5).

### Contact

For questions and feedback regarding this implementation guide, please contact [tc-fhir@hl7.at](mailto:tc-fhir@hl7.at).



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
  "date" : "2026-08-18T13:20:27+00:00",
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
        "sourceUrl" : "introduction.html",
        "name" : "introduction.html",
        "title" : "Introduction",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "functional-transactions.html",
        "name" : "functional-transactions.html",
        "title" : "Transactions",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "functional-system-actors.html",
        "name" : "functional-system-actors.html",
        "title" : "System Actors",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "functional-design-choices.html",
        "name" : "functional-design-choices.html",
        "title" : "Design Choices",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "use-case-simple-appointment-booking.html",
        "name" : "use-case-simple-appointment-booking.html",
        "title" : "Simple Appointment Booking",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "use-case-central-scheduling-platform.html",
        "name" : "use-case-central-scheduling-platform.html",
        "title" : "Central Scheduling Platform",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "about.html",
        "name" : "about.html",
        "title" : "About",
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
