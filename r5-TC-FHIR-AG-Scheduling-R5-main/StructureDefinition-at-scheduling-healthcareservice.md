# HL7.AT.FHIR.TC.WG.SCHEDULING.R5\HL7® AT Scheduling HealthcareService Profile - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7® AT Scheduling HealthcareService Profile**

## Resource Profile: HL7® AT Scheduling HealthcareService Profile 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-healthcareservice | *Version*:0.2.0 | |
| Draft as of 2026-06-09 | *Responsible:*HL7® Austria, TC FHIR® | *Computable Name*:HL7ATSchedulingHealthcareService |

 
HL7® Austria FHIR® Scheduling Profile for healthcareservice data in Austria. 

This Profile is used in the [Find available HealthcareServices Interaction](interactions.md#find-available-healthcareservices).

**Usages:**

* Refer to this Profile: [HL7® AT Scheduling Appointment Profile](StructureDefinition-at-scheduling-appointment.md), [HL7® AT Scheduling HealthcareService Profile](StructureDefinition-at-scheduling-healthcareservice.md), [HL7® AT Scheduling Schedule Profile](StructureDefinition-at-scheduling-schedule.md) and [HL7® AT Scheduling Slot Profile](StructureDefinition-at-scheduling-slot.md)
* Examples for this Profile: [Allgemeinmedizinische Versorgung](HealthcareService-HL7ATSchedulingHealthcareServiceExample01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.tc.wg.scheduling.r5|current/StructureDefinition/StructureDefinition-at-scheduling-healthcareservice.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-scheduling-healthcareservice.csv), [Excel](StructureDefinition-at-scheduling-healthcareservice.xlsx), [Schematron](StructureDefinition-at-scheduling-healthcareservice.sch) 

### Notes:

#### Search parameters

##### Required Parameters

At least one of the following search parameters is required:

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [location](https://www.hl7.org/fhir/healthcareservice-search.html#HealthcareService-location) | [reference](https://www.hl7.org/fhir/search.html#reference) | The location of the Healthcare Service | HealthcareService.location (Location) |  |
| [organization](https://www.hl7.org/fhir/healthcareservice-search.html#HealthcareService-organization) | [reference](https://www.hl7.org/fhir/search.html#reference) | The organization that provides this Healthcare Service | HealthcareService.providedBy (Organization) |  |
| [service-category](https://www.hl7.org/fhir/healthcareservice-search.html#HealthcareService-service-category) | [token](https://www.hl7.org/fhir/search.html#token) | Service Category of the Healthcare Service | HealthcareService.category |  |
| [service-type](https://www.hl7.org/fhir/healthcareservice-search.html#HealthcareService-service-type) | [token](https://www.hl7.org/fhir/search.html#token) | The type of service provided by this healthcare service | HealthcareService.type |  |
| [specialty](https://www.hl7.org/fhir/healthcareservice-search.html#HealthcareService-specialty) | [token](https://www.hl7.org/fhir/search.html#token) | The specialty of the service provided by this healthcare service | HealthcareService.specialty |  |

##### Optional Parameters

The following search parameters SHOULD be supported by scheduling servers:

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [characteristic](https://hl7.org/fhir/healthcareservice-search.html#HealthcareService-characteristic) | [token](https://www.hl7.org/fhir/search.html#token) | One of the HealthcareService's characteristics | HealthcareService.characteristic |  |
| [communication](https://build.fhir.org/healthcareservice-search.html#HealthcareService-communication) | [token](https://www.hl7.org/fhir/search.html#token) | Languages that are available at this service | HealthcareService.communication |  |
| [coverage-area](https://build.fhir.org/healthcareservice-search.html#HealthcareService-coverage-area) | [reference](https://www.hl7.org/fhir/search.html#reference) | Location(s) service is intended for/available to | HealthcareService.coverageArea (Location) |  |



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-scheduling-healthcareservice",
  "url" : "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-healthcareservice",
  "version" : "0.2.0",
  "name" : "HL7ATSchedulingHealthcareService",
  "title" : "HL7® AT Scheduling HealthcareService Profile",
  "status" : "draft",
  "date" : "2026-06-09T13:05:25+00:00",
  "publisher" : "HL7® Austria, TC FHIR®",
  "description" : "HL7® Austria FHIR® Scheduling Profile for healthcareservice data in Austria.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "interface",
    "uri" : "http://hl7.org/fhir/interface",
    "name" : "Interface Pattern"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "HealthcareService",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/HealthcareService",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "HealthcareService",
      "path" : "HealthcareService"
    },
    {
      "id" : "HealthcareService.extension",
      "path" : "HealthcareService.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "HealthcareService.extension:cancellationPolicy",
      "path" : "HealthcareService.extension",
      "sliceName" : "cancellationPolicy",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-ext-cancellationPolicy"]
      }]
    },
    {
      "id" : "HealthcareService.providedBy",
      "path" : "HealthcareService.providedBy",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-organization"]
      }]
    },
    {
      "id" : "HealthcareService.offeredIn",
      "path" : "HealthcareService.offeredIn",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-healthcareservice"]
      }]
    },
    {
      "id" : "HealthcareService.type",
      "path" : "HealthcareService.type",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/ValueSet/AtSchedulingServiceType"
      }
    }]
  }
}

```
