# HL7.AT.FHIR.CORE.R4\Example HealthcareService with Specialty - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example HealthcareService with Specialty**

## Example HealthcareService: Example HealthcareService with Specialty

Profile: [HL7® AT Core HealthcareService Profile](StructureDefinition-at-core-HealthcareService.md)

**active**: true

**providedBy**: [Organization Amadeus Spital](Organization-HL7ATCoreOrganizationExample01.md)

**specialty**: Rheumatologie

**location**: [Location Campus Linz](Location-HL7ATCoreLocationLinz.md)

**name**: Rheumatology Service



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "ExampleHealthcareService",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/core/r4/StructureDefinition/at-core-HealthcareService"]
  },
  "active" : true,
  "providedBy" : {
    "reference" : "Organization/HL7ATCoreOrganizationExample01"
  },
  "specialty" : [{
    "coding" : [{
      "system" : "https://fhir.hl7.at/core/r4/CodeSystem/at-funktionscode",
      "code" : "11114",
      "display" : "Rheumatologie"
    }]
  }],
  "location" : [{
    "reference" : "Location/HL7ATCoreLocationLinz"
  }],
  "name" : "Rheumatology Service"
}

```
