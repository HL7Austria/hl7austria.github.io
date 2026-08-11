# HL7.AT.FHIR.CORE.R5\HL7® AT Core HealthcareService Profile - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7® AT Core HealthcareService Profile**

## Resource Profile: HL7® AT Core HealthcareService Profile 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/core/r5/StructureDefinition/at-core-HealthcareService | *Version*:2.1.0 | |
| Active as of 2026-08-11 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Computable Name*:HL7ATCoreHealthcareService |

 
HL7® Austria FHIR® Core Profile for healthcare service data in Austria. 

**Usages:**

* Refer to this Profile: [HL7® AT Core HealthcareService Profile](StructureDefinition-at-core-HealthcareService.md)
* Examples for this Profile: [Rheumatology Service](HealthcareService-ExampleHealthcareService.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.core.r5|current/StructureDefinition/StructureDefinition-at-core-HealthcareService.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-core-HealthcareService.csv), [Excel](StructureDefinition-at-core-HealthcareService.xlsx), [Schematron](StructureDefinition-at-core-HealthcareService.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-core-HealthcareService",
  "url" : "https://fhir.hl7.at/core/r5/StructureDefinition/at-core-HealthcareService",
  "version" : "2.1.0",
  "name" : "HL7ATCoreHealthcareService",
  "title" : "HL7® AT Core HealthcareService Profile",
  "status" : "active",
  "date" : "2026-08-11T20:51:56+00:00",
  "publisher" : "HL7® Austria, TC FHIR®",
  "contact" : [{
    "name" : "HL7® Austria, TC FHIR®",
    "telecom" : [{
      "system" : "url",
      "value" : "https://hl7.at/technische-komitees/tc-fhir/"
    }]
  },
  {
    "name" : "Technical Committee for FHIR® at HL7® Austria",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:tc-fhir@hl7.at"
    }]
  }],
  "description" : "HL7® Austria FHIR® Core Profile for healthcare service data in Austria.",
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
      "id" : "HealthcareService.providedBy",
      "path" : "HealthcareService.providedBy",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-organization"]
      }]
    },
    {
      "id" : "HealthcareService.offeredIn",
      "path" : "HealthcareService.offeredIn",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-HealthcareService"]
      }]
    },
    {
      "id" : "HealthcareService.specialty",
      "path" : "HealthcareService.specialty",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhir.hl7.at/core/r5/ValueSet/at-funktionscode-vs"
      }
    },
    {
      "id" : "HealthcareService.location",
      "path" : "HealthcareService.location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-location"]
      }]
    },
    {
      "id" : "HealthcareService.contact",
      "path" : "HealthcareService.contact",
      "type" : [{
        "code" : "ExtendedContactDetail",
        "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-extendedContactDetail"]
      }]
    },
    {
      "id" : "HealthcareService.coverageArea",
      "path" : "HealthcareService.coverageArea",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-location"]
      }]
    }]
  }
}

```
