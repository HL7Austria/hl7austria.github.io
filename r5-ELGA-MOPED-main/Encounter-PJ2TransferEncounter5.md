# ELGA.MOPED\PJ2TransferEncounter5 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PJ2TransferEncounter5**

## Example Encounter: PJ2TransferEncounter5

Profile: [MOPED TransferEncounter](StructureDefinition-MopedTransferEncounter.md)

**status**: Completed

**type**: Moped Transfer Encounter

### ServiceTypes

| | |
| :--- | :--- |
| - | **Reference** |
| * | [HealthcareService: identifier = http://example.org/lkf-system/funktionscode#111111,http://example.org/lkf-system/funktionssubcode#00; category = Hospital; type = Hospital Services](HealthcareService-AbteilungKHRied3.md) |

**subject**: [Santiago Schnabeltier Test (official) Male, DoB: 1985-03-19 ( Social Security Number: 2873111374)](Patient-PJ2Patient.md)

**subjectStatus**: physisch anwesend

**partOf**: [Encounter: identifier = Visit number,Anonymous identifier; status = discharged; class = Stationär,akute stationäre Aufnahme/akuter ambulanter Besuch (ohne vorhergehende Terminvereinbarung); type = Moped Encounter; actualPeriod = 2024-08-08 08:21:00+0200 --> 2024-08-12 19:22:00+0200](Encounter-PJ2Encounter.md)

**actualPeriod**: 2024-08-10 17:00:00+0200 --> 2024-08-12 19:22:00+0200

### Admissions

| | | |
| :--- | :--- | :--- |
| - | **Extension** | **DischargeDisposition** |
| * |  | Lebend |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "PJ2TransferEncounter5",
  "meta" : {
    "profile" : [
      "https://elga.moped.at/StructureDefinition/MopedTransferEncounter"
    ]
  },
  "status" : "completed",
  "type" : [
    {
      "coding" : [
        {
          "system" : "https://elga.moped.at/CodeSystem/MopedEncounterTypesCS",
          "code" : "TENC"
        }
      ]
    }
  ],
  "serviceType" : [
    {
      "reference" : {
        "reference" : "HealthcareService/AbteilungKHRied3"
      }
    }
  ],
  "subject" : {
    "reference" : "Patient/PJ2Patient"
  },
  "subjectStatus" : {
    "coding" : [
      {
        "system" : "https://elga.moped.at/CodeSystem/AnwesenheitsartCS",
        "code" : "ANW"
      }
    ]
  },
  "partOf" : {
    "reference" : "Encounter/PJ2Encounter"
  },
  "actualPeriod" : {
    "start" : "2024-08-10T17:00:00+02:00",
    "end" : "2024-08-12T19:22:00+02:00"
  },
  "admission" : {
    "extension" : [
      {
        "extension" : [
          {
            "url" : "beiZugang",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "https://elga.moped.at/CodeSystem/AltersgruppeCS",
                  "code" : "35"
                }
              ]
            }
          },
          {
            "url" : "beiEntlassung",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "https://elga.moped.at/CodeSystem/AltersgruppeCS",
                  "code" : "35"
                }
              ]
            }
          },
          {
            "url" : "neugeborenes",
            "valueBoolean" : false
          }
        ],
        "url" : "https://elga.moped.at/StructureDefinition/moped-ext-altersgruppe"
      }
    ],
    "dischargeDisposition" : {
      "coding" : [
        {
          "system" : "https://elga.moped.at/CodeSystem/AbgangsartCS",
          "code" : "1"
        }
      ]
    }
  }
}

```
