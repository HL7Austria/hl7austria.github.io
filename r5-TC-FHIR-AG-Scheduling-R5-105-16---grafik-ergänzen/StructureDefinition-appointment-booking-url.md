# HL7.AT.FHIR.TC.WG.SCHEDULING.R5\Appointment Booking URL - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Appointment Booking URL**

## Extension: Appointment Booking URL 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/appointment-booking-url | *Version*:0.2.0 | |
| Draft as of 2026-06-09 | *Responsible:*HL7® Austria, TC FHIR® | *Computable Name*:AppointmentBookingUrlExt |

An optional URL that can be used for redirects to a webpage for booking an Appointment. It should contain identifying information about the Slot so that it can be preselected on the target booking page.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [HL7® AT Scheduling Slot Profile](StructureDefinition-at-scheduling-slot.md)
* Examples for this Extension: [Slot/HL7ATSchedulingSlotExample04-external-booking-URL](Slot-HL7ATSchedulingSlotExample04-external-booking-URL.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.tc.wg.scheduling.r5|current/StructureDefinition/StructureDefinition-appointment-booking-url.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-appointment-booking-url.csv), [Excel](StructureDefinition-appointment-booking-url.xlsx), [Schematron](StructureDefinition-appointment-booking-url.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "appointment-booking-url",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/appointment-booking-url",
  "version" : "0.2.0",
  "name" : "AppointmentBookingUrlExt",
  "title" : "Appointment Booking URL",
  "status" : "draft",
  "date" : "2026-06-09T12:42:01+00:00",
  "publisher" : "HL7® Austria, TC FHIR®",
  "description" : "An optional URL that can be used for redirects to a webpage for booking an Appointment. It should contain identifying information about the Slot so that it can be preselected on the target booking page.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Slot"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Appointment Booking URL",
      "definition" : "An optional URL that can be used for redirects to a webpage for booking an Appointment. It should contain identifying information about the Slot so that it can be preselected on the target booking page."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/appointment-booking-url"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "uri"
      }]
    }]
  }
}

```
