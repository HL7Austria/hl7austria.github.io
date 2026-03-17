# HL7.AT.FHIR.TC.WG.SCHEDULING.R5\The policy for a cancellation - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **The policy for a cancellation**

## Extension: The policy for a cancellation 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-ext-cancellationPolicy | *Version*:0.2.0 | |
| Draft as of 2026-03-17 | *Responsible:*HL7® Austria, TC FHIR® | *Computable Name*:CancellationPolicy |

This Extension provides the information about the policy of a cancellation of an appointment. It can contain a time frame until when a cancellation is possible or what the fee for a cancellation will be.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [HL7® AT Scheduling Appointment Profile](StructureDefinition-at-scheduling-appointment.md), [HL7® AT Scheduling HealthcareService Profile](StructureDefinition-at-scheduling-healthcareservice.md) and [HL7® AT Scheduling Slot Profile](StructureDefinition-at-scheduling-slot.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.tc.wg.scheduling.r5|current/StructureDefinition/at-scheduling-ext-cancellationPolicy)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-scheduling-ext-cancellationPolicy.csv), [Excel](StructureDefinition-at-scheduling-ext-cancellationPolicy.xlsx), [Schematron](StructureDefinition-at-scheduling-ext-cancellationPolicy.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-scheduling-ext-cancellationPolicy",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-ext-cancellationPolicy",
  "version" : "0.2.0",
  "name" : "CancellationPolicy",
  "title" : "The policy for a cancellation",
  "status" : "draft",
  "date" : "2026-03-17T14:41:49+00:00",
  "publisher" : "HL7® Austria, TC FHIR®",
  "description" : "This Extension provides the information about the policy of a cancellation of an appointment. It can contain a time frame until when a cancellation is possible or what the fee for a cancellation will be.",
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
    "expression" : "Appointment.cancellationReason"
  },
  {
    "type" : "element",
    "expression" : "HealthcareService"
  },
  {
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
      "short" : "The policy for a cancellation",
      "definition" : "This Extension provides the information about the policy of a cancellation of an appointment. It can contain a time frame until when a cancellation is possible or what the fee for a cancellation will be."
    },
    {
      "id" : "Extension.extension:cancelUntil",
      "path" : "Extension.extension",
      "sliceName" : "cancelUntil",
      "short" : "Information on how long before the planned start of an appointment a cancellation will be possible",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:cancelUntil.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:cancelUntil.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "cancelUntil"
    },
    {
      "id" : "Extension.extension:cancelUntil.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Duration"
      }]
    },
    {
      "id" : "Extension.extension:cancellationFee",
      "path" : "Extension.extension",
      "sliceName" : "cancellationFee",
      "short" : "Information about the costs in case of a cancellation",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:cancellationFee.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:cancellationFee.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "cancellationFee"
    },
    {
      "id" : "Extension.extension:cancellationFee.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Money"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-ext-cancellationPolicy"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
