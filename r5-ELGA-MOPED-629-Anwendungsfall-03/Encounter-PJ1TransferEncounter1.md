# ELGA.MOPED\PJ1TransferEncounter1 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PJ1TransferEncounter1**

## Example Encounter: PJ1TransferEncounter1

Profiles: [MOPED TransferEncounter Stationär](StructureDefinition-MopedTransferEncounterS.md), [MOPED TransferEncounter](StructureDefinition-MopedTransferEncounter.md)

**status**: Completed

**type**: Moped Transfer Encounter

**subject**: [Sonnenschein Susi (official) Female, DoB: 1969-04-21 ( Social Security Number: 9994210469)](Patient-PJ1Patient.md)

**subjectStatus**: physisch anwesend

**partOf**: [Encounter: identifier = Visit number,Anonymous identifier; status = discharged; class = Stationär,geplante stationäre Aufnahme/geplanter ambulanter Besuch (mit vorhergehender Terminvereinbarung, Richtwert: mindestens 24 Stunden); type = Moped Encounter; actualPeriod = 2024-02-22 19:33:00+0200 --> 2024-02-23 07:38:00+0200](Encounter-PJ1Encounter.md)

**serviceProvider**: [Organization: extension = ; identifier = http://example.org/lkf-system/funktionscode#131180,http://example.org/lkf-system/funktionssubcode#00; type = Hospital Department](Organization-AbteilungHerzJesu1.md)

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
  "id" : "PJ1TransferEncounter1",
  "meta" : {
    "profile" : [
      "https://elga.moped.at/StructureDefinition/MopedTransferEncounterS",
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
  "subject" : {
    "reference" : "Patient/PJ1Patient"
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
    "reference" : "Encounter/PJ1Encounter"
  },
  "serviceProvider" : {
    "reference" : "Organization/AbteilungHerzJesu1"
  },
  "actualPeriod" : {
    "start" : "2024-02-22T19:33:00+02:00",
    "end" : "2024-02-23T07:38:00+02:00"
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
                  "code" : "55"
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
                  "code" : "55"
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
