# ELGA.MOPED\PJ1Procedure1 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PJ1Procedure1**

## Example Procedure: PJ1Procedure1

Profile: [MOPED Procedure](StructureDefinition-MopedProcedure.md)

**Leistung - Anzahl**: 1

**status**: Completed

**code**: Polysomnographie im Schlaflabor (LE=je Behandlungstag)

**subject**: [Sonnenschein Susi Female, DoB: 1969-04-21](Patient-PJ1Patient.md)

**encounter**: [Encounter: identifier = Visit number,Anonymous identifier; status = discharged; class = Stationär,geplante stationäre Aufnahme/geplanter ambulanter Besuch (mit vorhergehender Terminvereinbarung, Richtwert: mindestens 24 Stunden); type = Moped Encounter; actualPeriod = 2024-02-22 19:33:00+0200 --> 2024-02-23 07:38:00+0200](Encounter-PJ1Encounter.md)

**occurrence**: 2024-02-22 19:33:00+0200

### Performers

| | | |
| :--- | :--- | :--- |
| - | **Actor** | **OnBehalfOf** |
| * | [HealthcareService: extension = ; identifier = http://example.org/lkf-system/funktionscode#13118000; category = Hospital; type = Hospital Services](HealthcareService-AbteilungHerzJesu1.md) | [Organization Herz Jesu-Krankenhaus](Organization-OrganizationHerzJesuKrankenhaus.md) |



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "PJ1Procedure1",
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
      "code" : "AN010",
      "display" : "Polysomnographie im Schlaflabor (LE=je Behandlungstag)"
    }]
  },
  "subject" : {
    "reference" : "Patient/PJ1Patient"
  },
  "encounter" : {
    "reference" : "Encounter/PJ1Encounter"
  },
  "occurrenceDateTime" : "2024-02-22T19:33:00+02:00",
  "performer" : [{
    "actor" : {
      "reference" : "HealthcareService/AbteilungHerzJesu1"
    },
    "onBehalfOf" : {
      "reference" : "Organization/OrganizationHerzJesuKrankenhaus"
    }
  }]
}

```
