# ELGA.MOPED\PJ2BewegungsEncounter3 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PJ2BewegungsEncounter3**

## Example Encounter: PJ2BewegungsEncounter3

Profiles: [AT MOPED Encounter Bewegung Stationär Basis Profil](StructureDefinition-at-moped-encounter-bewegung-stationaer-basis.md), `https://elga.moped.at/StructureDefinition/MopedBewegungsEncounter`

**status**: Completed

**type**: Moped Bewegungsencounter

### ServiceTypes

| | |
| :--- | :--- |
| - | **Reference** |
| * | [HealthcareService: identifier = http://example.org/lkf-system/funktionscode#11111100; category = Hospital; type = Hospital Services](HealthcareService-AbteilungKARied3.md) |

**subject**: [Santiago Schnabeltier Test Male, DoB: 1985-03-19](Patient-PJ2Patient.md)

**subjectStatus**: physisch anwesend

**partOf**: [Encounter: identifier = Visit number,Anonymous identifier; status = discharged; class = Stationär,akute stationäre Aufnahme/akuter ambulanter Besuch (ohne vorhergehende Terminvereinbarung); type = Moped Encounter; actualPeriod = 2024-08-08 08:21:00+0200 --> 2024-08-12 19:22:00+0200](Encounter-PJ2Encounter.md)

**actualPeriod**: 2024-08-08 11:41:00+0200 --> 2024-08-09 11:38:00+0200

### Admissions

| | | |
| :--- | :--- | :--- |
| - | **Extension** | **DischargeDisposition** |
| * |  | Lebend |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "PJ2BewegungsEncounter3",
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
      "reference" : "HealthcareService/AbteilungKARied3"
    }
  }],
  "subject" : {
    "reference" : "Patient/PJ2Patient"
  },
  "subjectStatus" : {
    "coding" : [{
      "system" : "https://elga.moped.at/CodeSystem/AnwesenheitsartCS",
      "code" : "ANW"
    }]
  },
  "partOf" : {
    "reference" : "Encounter/PJ2Encounter"
  },
  "actualPeriod" : {
    "start" : "2024-08-08T11:41:00+02:00",
    "end" : "2024-08-09T11:38:00+02:00"
  },
  "admission" : {
    "extension" : [{
      "extension" : [{
        "url" : "beiZugang",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://elga.moped.at/CodeSystem/AltersgruppeCS",
            "code" : "35"
          }]
        }
      },
      {
        "url" : "beiEntlassung",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://elga.moped.at/CodeSystem/AltersgruppeCS",
            "code" : "35"
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
