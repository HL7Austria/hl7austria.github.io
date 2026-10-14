# HL7ATCorePractitionerRoleExample01 - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Example PractitionerRole: HL7ATCorePractitionerRoleExample01

Profile: [HL7® AT Core PractitionerRole Profile](StructureDefinition-at-core-practitionerRole.md)

Melanie Musterärztin (OID:1.2.40.0.34.99.4613.4): Ärztin/Arzt für Allgemeinmedizin

-------

| | |
| :--- | :--- |
| Active: | true |
| Practitioner: | [Melanie Musterärztin (OID:1.2.40.0.34.99.4613.4)](Practitioner-HL7ATCorePractitionerExample01.md) |
| Role: | Ärztin/Arzt für Allgemeinmedizin |
| Specialty: | * Family practice
* Dive medicine
 |
| Availability: | * Monday: 07:00:00 - 12:00:00
* Tuesday: 07:30:00 - 12:30:00
* Thursday: all day
* Not available: Urlaub (2024-08-01 --> 2024-08-31)
* Not available: Zwischen den Feiertagen geschlossen. (2024-12-24 --> 2025-01-06)
 |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "HL7ATCorePractitionerRoleExample01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/core/r4/StructureDefinition/at-core-practitionerRole"]
  },
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/HL7ATCorePractitionerExample01"
  },
  "code" : [{
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen",
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
