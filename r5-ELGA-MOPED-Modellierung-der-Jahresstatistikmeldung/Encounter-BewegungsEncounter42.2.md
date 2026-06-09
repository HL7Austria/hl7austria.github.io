# ELGA.MOPED\BewegungsEncounter42.2 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BewegungsEncounter42.2**

## Example Encounter: BewegungsEncounter42.2

Profile: `https://elga.moped.at/StructureDefinition/MopedBewegungsEncounter`

**status**: Completed

**type**: Moped Bewegungsencounter

### ServiceTypes

| | |
| :--- | :--- |
| - | **Reference** |
| * | [HealthcareService: extension = ; identifier = http://example.org/lkf-system/funktionscode#12118102; type = Hospital Services](HealthcareService-KAK999ABT12118102.md) |

**subject**: [Patient42 Patient42FamilienName Male, DoB: 1937-12-31 ( Social Security Number: 123456)](Patient-Patient42.md)

**partOf**: [Encounter: extension = ; identifier = Visit number,Anonymous identifier; status = completed; class = Stationär,geplante stationäre Aufnahme/geplanter ambulanter Besuch (mit vorhergehender Terminvereinbarung, Richtwert: mindestens 24 Stunden); type = Moped Encounter; actualPeriod = 2025-01-01 12:00:00+0200 --> 2025-01-04 12:00:00+0200](Encounter-Encounter42.md)

**actualPeriod**: 2025-01-02 00:00:00+0200 --> 2025-01-04 00:00:00+0200

### Admissions

| | | |
| :--- | :--- | :--- |
| - | **Extension** | **DischargeDisposition** |
| * |  | Lebend |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "BewegungsEncounter42.2",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedBewegungsEncounter"]
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
      "reference" : "HealthcareService/KAK999ABT12118102"
    }
  }],
  "subject" : {
    "reference" : "Patient/Patient42"
  },
  "partOf" : {
    "reference" : "Encounter/Encounter42"
  },
  "actualPeriod" : {
    "start" : "2025-01-02T00:00:00+02:00",
    "end" : "2025-01-04T00:00:00+02:00"
  },
  "admission" : {
    "extension" : [{
      "extension" : [{
        "url" : "beiZugang",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://elga.moped.at/CodeSystem/AltersgruppeCS",
            "code" : "85"
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
