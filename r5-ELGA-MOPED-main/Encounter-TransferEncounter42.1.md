# ELGA.MOPED\TransferEncounter42.1 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TransferEncounter42.1**

## Example Encounter: TransferEncounter42.1

Profile: [MOPED TransferEncounter](StructureDefinition-MopedTransferEncounter.md)

**status**: Completed

**type**: Moped Transfer Encounter

### ServiceTypes

| | |
| :--- | :--- |
| - | **Reference** |
| * | [HealthcareService: extension = ; identifier = http://example.org/lkf-system/funktionscode#111111,http://example.org/lkf-system/funktionssubcode#00; type = Hospital Services](HealthcareService-KAK999ABT11111100.md) |

**subject**: [Patient42 Patient42FamilienName Male, DoB: 1937-12-31 ( Social Security Number: 123456)](Patient-Patient42.md)

**partOf**: [Encounter: extension = ; identifier = Visit number,Anonymous identifier; status = completed; class = Stationär,geplante stationäre Aufnahme/geplanter ambulanter Besuch (mit vorhergehender Terminvereinbarung, Richtwert: mindestens 24 Stunden); type = Moped Encounter; actualPeriod = 2025-01-01 12:00:00+0200 --> 2025-01-04 12:00:00+0200](Encounter-Encounter42.md)

**actualPeriod**: 2025-01-01 --> (ongoing)

### Admissions

| | |
| :--- | :--- |
| - | **Extension** |
| * |  |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "TransferEncounter42.1",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedTransferEncounter"]
  },
  "status" : "completed",
  "type" : [{
    "coding" : [{
      "system" : "https://elga.moped.at/CodeSystem/MopedEncounterTypesCS",
      "code" : "TENC"
    }]
  }],
  "serviceType" : [{
    "reference" : {
      "reference" : "HealthcareService/KAK999ABT11111100"
    }
  }],
  "subject" : {
    "reference" : "Patient/Patient42"
  },
  "partOf" : {
    "reference" : "Encounter/Encounter42"
  },
  "actualPeriod" : {
    "start" : "2025-01-01"
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
    }]
  }
}

```
