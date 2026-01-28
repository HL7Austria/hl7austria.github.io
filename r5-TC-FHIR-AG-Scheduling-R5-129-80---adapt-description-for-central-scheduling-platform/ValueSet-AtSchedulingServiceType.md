# HL7.AT.FHIR.TC.WG.SCHEDULING.R5\AT Scheduling Service Type - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT Scheduling Service Type**

## ValueSet: AT Scheduling Service Type (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/ValueSet/AtSchedulingServiceType | *Version*:0.2.0 | |
| Draft as of 2026-01-28 | *Responsible:*HL7® Austria, TC FHIR® | *Computable Name*:AtSchedulingServiceType |

 
This is a placeholder for a ValueSet of bookable service types. The contained value just serves as an example and is not guaranteed to 

 **References** 

* [HL7® AT Scheduling Appointment Profile](StructureDefinition-at-scheduling-appointment.md)
* [HL7® AT Scheduling HealthcareService Profile](StructureDefinition-at-scheduling-healthcareservice.md)
* [HL7® AT Scheduling Schedule Profile](StructureDefinition-at-scheduling-schedule.md)
* [HL7® AT Scheduling Slot Profile](StructureDefinition-at-scheduling-slot.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R5/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "AtSchedulingServiceType",
  "url" : "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/ValueSet/AtSchedulingServiceType",
  "version" : "0.2.0",
  "name" : "AtSchedulingServiceType",
  "title" : "AT Scheduling Service Type",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-01-28T07:47:12+00:00",
  "publisher" : "HL7® Austria, TC FHIR®",
  "description" : "This is a placeholder for a ValueSet of bookable service types. The contained value just serves as an example and is not guaranteed to ",
  "compose" : {
    "include" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/service-type",
        "concept" : [
          {
            "code" : "65",
            "display" : "Physiotherapy"
          }
        ]
      }
    ]
  }
}

```
