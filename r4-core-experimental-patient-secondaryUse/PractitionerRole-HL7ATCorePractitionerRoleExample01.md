# HL7.AT.FHIR.CORE.R4\HL7ATCorePractitionerRoleExample01 - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7ATCorePractitionerRoleExample01**

## Example PractitionerRole: HL7ATCorePractitionerRoleExample01

Profile: [HL7® AT Core PractitionerRole Profile](StructureDefinition-at-core-practitionerRole.md)

**active**: true

**practitioner**: [Practitioner Melanie Musterärztin ](Practitioner-HL7ATCorePractitionerExample01.md)

**code**: Ärztin/Arzt für Allgemeinmedizin

**specialty**: Family practice, Dive medicine

> **availableTime****daysOfWeek**: Monday**availableStartTime**: 07:00:00**availableEndTime**: 12:00:00

> **availableTime****daysOfWeek**: Tuesday**availableStartTime**: 07:30:00**availableEndTime**: 12:30:00

> **availableTime****daysOfWeek**: Thursday**allDay**: true

> **notAvailable****description**: Urlaub**during**: 2024-08-01 --> 2024-08-31

> **notAvailable****description**: Zwischen den Feiertagen geschlossen.**during**: 2024-12-24 --> 2025-01-06



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "HL7ATCorePractitionerRoleExample01",
  "meta" : {
    "profile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitionerRole"]
  },
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/HL7ATCorePractitionerExample01"
  },
  "code" : [{
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/ValueSet/hl7-at-practitionerrole",
      "code" : "100",
      "display" : "Ärztin/Arzt für Allgemeinmedizin"
    }]
  }],
  "specialty" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "419772000",
      "display" : "Family practice"
    }]
  },
  {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "410005002",
      "display" : "Dive medicine"
    }]
  }],
  "availableTime" : [{
    "daysOfWeek" : ["mon"],
    "availableStartTime" : "07:00:00",
    "availableEndTime" : "12:00:00"
  },
  {
    "daysOfWeek" : ["tue"],
    "availableStartTime" : "07:30:00",
    "availableEndTime" : "12:30:00"
  },
  {
    "daysOfWeek" : ["thu"],
    "allDay" : true
  }],
  "notAvailable" : [{
    "description" : "Urlaub",
    "during" : {
      "start" : "2024-08-01",
      "end" : "2024-08-31"
    }
  },
  {
    "description" : "Zwischen den Feiertagen geschlossen.",
    "during" : {
      "start" : "2024-12-24",
      "end" : "2025-01-06"
    }
  }]
}

```
