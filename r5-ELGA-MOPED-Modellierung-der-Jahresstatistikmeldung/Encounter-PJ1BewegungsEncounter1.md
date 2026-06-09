# ELGA.MOPED\PJ1BewegungsEncounter1 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PJ1BewegungsEncounter1**

## Example Encounter: PJ1BewegungsEncounter1

Profiles: [AT MOPED Encounter Bewegung Stationär Basis Profil](StructureDefinition-at-moped-encounter-bewegung-stationaer-basis.md), `https://elga.moped.at/StructureDefinition/MopedBewegungsEncounter`

**status**: Completed

**type**: Moped Bewegungsencounter

### ServiceTypes

| | |
| :--- | :--- |
| - | **Reference** |
| * | [HealthcareService: extension = ; identifier = http://example.org/lkf-system/funktionscode#13118000; category = Hospital; type = Hospital Services](HealthcareService-AbteilungHerzJesu1.md) |

**subject**: [Sonnenschein Susi Female, DoB: 1969-04-21](Patient-PJ1Patient.md)

**subjectStatus**: physisch anwesend

**partOf**: [Encounter: identifier = Visit number,Anonymous identifier; status = discharged; class = Stationär,geplante stationäre Aufnahme/geplanter ambulanter Besuch (mit vorhergehender Terminvereinbarung, Richtwert: mindestens 24 Stunden); type = Moped Encounter; actualPeriod = 2024-02-22 19:33:00+0200 --> 2024-02-23 07:38:00+0200](Encounter-PJ1Encounter.md)

**actualPeriod**: 2024-02-22 19:33:00+0200 --> 2024-02-23 07:38:00+0200

### Admissions

| | | |
| :--- | :--- | :--- |
| - | **Extension** | **DischargeDisposition** |
| * |  | Lebend |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "PJ1BewegungsEncounter1",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-encounter-bewegung-stationaer-basis",
    "https://elga.moped.at/StructureDefinition/MopedBewegungsEncounter"]
  },
  "status" : "completed",
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
    "reference" : "Encounter/PJ1Encounter"
  },
  "actualPeriod" : {
    "start" : "2024-02-22T19:33:00+02:00",
    "end" : "2024-02-23T07:38:00+02:00"
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
        "url" : "beiEntlassung",
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
    }],
    "dischargeDisposition" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/AbgangsartCS",
        "code" : "1"
      }]
    }
  }
}

```
