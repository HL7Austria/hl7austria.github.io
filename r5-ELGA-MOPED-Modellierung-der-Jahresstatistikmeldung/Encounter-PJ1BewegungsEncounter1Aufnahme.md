# ELGA.MOPED\PJ1BewegungsEncounter1Aufnahme - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PJ1BewegungsEncounter1Aufnahme**

## Example Encounter: PJ1BewegungsEncounter1Aufnahme

Profiles: [AT MOPED Encounter Bewegung Stationär Basis Profil](StructureDefinition-at-moped-encounter-bewegung-stationaer-basis.md), `https://elga.moped.at/StructureDefinition/MopedBewegungsEncounter`

**status**: In Progress

**type**: Moped Bewegungsencounter

### ServiceTypes

| | |
| :--- | :--- |
| - | **Reference** |
| * | [HealthcareService: extension = ; identifier = http://example.org/lkf-system/funktionscode#13118000; category = Hospital; type = Hospital Services](HealthcareService-AbteilungHerzJesu1.md) |

**subject**: [Sonnenschein Susi Female, DoB: 1969-04-21](Patient-PJ1Patient.md)

**subjectStatus**: physisch anwesend

**partOf**: [Encounter: identifier = Visit number,Anonymous identifier; status = in-progress; class = Stationär,geplante stationäre Aufnahme/geplanter ambulanter Besuch (mit vorhergehender Terminvereinbarung, Richtwert: mindestens 24 Stunden); type = Moped Encounter; actualPeriod = 2024-02-22 19:33:00+0200 --> (ongoing)](Encounter-PJ1EncounterAufnahme.md)

**actualPeriod**: 2024-02-22 19:33:00+0200 --> (ongoing)

### Admissions

| | |
| :--- | :--- |
| - | **Extension** |
| * |  |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "PJ1BewegungsEncounter1Aufnahme",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-encounter-bewegung-stationaer-basis",
    "https://elga.moped.at/StructureDefinition/MopedBewegungsEncounter"]
  },
  "status" : "in-progress",
  "type" : [{
    "coding" : [{
      "system" : "https://elga.moped.at/CodeSystem/MopedEncounterTypesCS",
      "code" : "BENC"
    }]
  }],
  "serviceType" : [{
    "reference" : {
      "reference" : "HealthcareService/AbteilungHerzJesu1"
    }
  }],
  "subject" : {
    "reference" : "Patient/PJ1Patient"
  },
  "subjectStatus" : {
    "coding" : [{
      "system" : "https://elga.moped.at/CodeSystem/AnwesenheitsartCS",
      "code" : "ANW"
    }]
  },
  "partOf" : {
    "reference" : "Encounter/PJ1EncounterAufnahme"
  },
  "actualPeriod" : {
    "start" : "2024-02-22T19:33:00+02:00"
  },
  "admission" : {
    "extension" : [{
      "extension" : [{
        "url" : "beiZugang",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://elga.moped.at/CodeSystem/AltersgruppeCS",
            "code" : "55"
          }]
        }
      },
      {
        "url" : "neugeborenes",
        "valueBoolean" : false
      }],
      "url" : "https://elga.moped.at/StructureDefinition/moped-ext-altersgruppe"
    }]
  }
}

```
