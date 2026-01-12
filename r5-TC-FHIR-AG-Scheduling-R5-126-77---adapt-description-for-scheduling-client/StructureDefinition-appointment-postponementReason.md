# HL7.AT.FHIR.TC.WG.SCHEDULING.R5\Appointment Postponement Reason - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Appointment Postponement Reason**

## Extension: Appointment Postponement Reason 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/appointment-postponementReason | *Version*:0.2.0 | |
| Draft as of 2026-01-12 | *Responsible:*HL7® Austria, TC FHIR® | *Computable Name*:AppointmentPostponementReasonExt |

The reason why an appointment was postoponed. This is often used in reporting/billing/further processing to determine if further actions are required, or specific fees apply.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [HL7® AT Scheduling Appointment Profile](StructureDefinition-at-scheduling-appointment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.tc.wg.scheduling.r5|current/StructureDefinition/appointment-postponementReason)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-appointment-postponementReason.csv), [Excel](StructureDefinition-appointment-postponementReason.xlsx), [Schematron](StructureDefinition-appointment-postponementReason.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "appointment-postponementReason",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/appointment-postponementReason",
  "version" : "0.2.0",
  "name" : "AppointmentPostponementReasonExt",
  "title" : "Appointment Postponement Reason",
  "status" : "draft",
  "date" : "2026-01-12T10:38:50+00:00",
  "publisher" : "HL7® Austria, TC FHIR®",
  "description" : "The reason why an appointment was postoponed. This is often used in reporting/billing/further processing to determine if further actions are required, or specific fees apply.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Appointment"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Appointment Postponement Reason",
        "definition" : "The reason why an appointment was postoponed. This is often used in reporting/billing/further processing to determine if further actions are required, or specific fees apply."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/appointment-postponementReason"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.org/fhir/ValueSet/appointment-cancellation-reason"
        }
      }
    ]
  }
}

```
