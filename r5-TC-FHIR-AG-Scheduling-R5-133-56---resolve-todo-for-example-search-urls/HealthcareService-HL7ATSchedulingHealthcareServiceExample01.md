# HL7.AT.FHIR.TC.WG.SCHEDULING.R5\HL7ATSchedulingHealthcareServiceExample01 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7ATSchedulingHealthcareServiceExample01**

## Example HealthcareService: HL7ATSchedulingHealthcareServiceExample01

Profile: [HL7® AT Scheduling HealthcareService Profile](StructureDefinition-at-scheduling-healthcareservice.md)

**active**: true

**providedBy**: [Amadeus Spital](http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/2.0.0/Organization-HL7ATCoreOrganizationExample01.html)

**type**: Allgemeinmedizin

**name**: Allgemeinmedizinische Versorgung



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "HL7ATSchedulingHealthcareServiceExample01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/tc/wg/scheduling/r5/StructureDefinition/at-scheduling-healthcareservice"]
  },
  "active" : true,
  "providedBy" : {
    "reference" : "Organization/HL7ATCoreOrganizationExample01",
    "display" : "Amadeus Spital"
  },
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/service-type",
      "code" : "65",
      "display" : "Physiotherapy"
    }],
    "text" : "Allgemeinmedizin"
  }],
  "name" : "Allgemeinmedizinische Versorgung"
}

```
