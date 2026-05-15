# ELGA.MOPED\PJ2Procedure1 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PJ2Procedure1**

## Example Procedure: PJ2Procedure1

Profile: [MOPED Procedure](StructureDefinition-MopedProcedure.md)

**Leistung - Anzahl**: 1

**status**: Completed

**code**: Physiotherapie im Rahmen eines stationären Aufenthaltes (LE=je Aufenthalt)

**subject**: [Santiago Schnabeltier Test Male, DoB: 1985-03-19](Patient-PJ2Patient.md)

**encounter**: [Encounter: identifier = Visit number,Anonymous identifier; status = discharged; class = Stationär,akute stationäre Aufnahme/akuter ambulanter Besuch (ohne vorhergehende Terminvereinbarung); type = Moped Encounter; actualPeriod = 2024-08-08 08:21:00+0200 --> 2024-08-12 19:22:00+0200](Encounter-PJ2Encounter.md)

**occurrence**: 2024-08-08 08:21:00+0200

### Performers

| | | |
| :--- | :--- | :--- |
| - | **Actor** | **OnBehalfOf** |
| * | [HealthcareService: identifier = http://example.org/lkf-system/funktionscode#11211100; category = Hospital; type = Hospital Services](HealthcareService-AbteilungKARied1.md) | [Organization Krankenhaus der Barmherzigen Schwestern vom Hl. Vinzenz von Paul Ried](Organization-OrganizationKrankenhausRied.md) |



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "PJ2Procedure1",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedProcedure"]
  },
  "extension" : [{
    "url" : "https://elga.moped.at/StructureDefinition/moped-ext-Leistungsanzahl",
    "valueUnsignedInt" : 1
  }],
  "status" : "completed",
  "code" : {
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/lkat-bmsgpk-2025",
      "code" : "PE010",
      "display" : "Physiotherapie im Rahmen eines stationären Aufenthaltes (LE=je Aufenthalt)"
    }]
  },
  "subject" : {
    "reference" : "Patient/PJ2Patient"
  },
  "encounter" : {
    "reference" : "Encounter/PJ2Encounter"
  },
  "occurrenceDateTime" : "2024-08-08T08:21:00+02:00",
  "performer" : [{
    "actor" : {
      "reference" : "HealthcareService/AbteilungKARied1"
    },
    "onBehalfOf" : {
      "reference" : "Organization/OrganizationKrankenhausRied"
    }
  }]
}

```
