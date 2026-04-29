# ELGA.MOPED\PJ2TransferEncounter1 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PJ2TransferEncounter1**

## Example Encounter: PJ2TransferEncounter1

Profile: [MOPED TransferEncounter](StructureDefinition-MopedTransferEncounter.md)

**status**: Completed

**type**: Moped Transfer Encounter

### ServiceTypes

| | |
| :--- | :--- |
| - | **Reference** |
| * | [HealthcareService: identifier = http://example.org/lkf-system/funktionscode#11211100; category = Hospital; type = Hospital Services](HealthcareService-AbteilungKARied1.md) |

**subject**: [Santiago Schnabeltier Test (official) Male, DoB: 1985-03-19 ( Social Security Number: 2873111374)](Patient-PJ2Patient.md)

**subjectStatus**: physisch anwesend

**partOf**: [Encounter: identifier = Visit number,Anonymous identifier; status = discharged; class = Stationär,akute stationäre Aufnahme/akuter ambulanter Besuch (ohne vorhergehende Terminvereinbarung); type = Moped Encounter; actualPeriod = 2024-08-08 08:21:00+0200 --> 2024-08-12 19:22:00+0200](Encounter-PJ2Encounter.md)

**actualPeriod**: 2024-08-08 08:21:00+0200 --> 2024-08-08 11:22:00+0200

### Admissions

| | |
| :--- | :--- |
| - | **Extension** |
| * |  |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "PJ2TransferEncounter1",
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
      "reference" : "HealthcareService/AbteilungKARied1"
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
    "start" : "2024-08-08T08:21:00+02:00",
    "end" : "2024-08-08T11:22:00+02:00"
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
    }]
  }
}

```
