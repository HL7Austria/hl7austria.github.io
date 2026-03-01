# ELGA.MOPED\Encounter42 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Encounter42**

## Example Encounter: Encounter42

Profile: [MOPED Encounter](StructureDefinition-MopedEncounter.md)

> **Altersgruppe**
* beiEntlassung: 85 bis 89 Jahre

**identifier**: Visit number/043, Anonymous identifier/82ad92612238288c30b4590440ecb271690deb8e7c418c1f07b2eda4d87a6fe9

**status**: Completed

**class**: Stationär, geplante stationäre Aufnahme/geplanter ambulanter Besuch (mit vorhergehender Terminvereinbarung, Richtwert: mindestens 24 Stunden)

**type**: Moped Encounter

**subject**: [Patient42 Patient42FamilienName Male, DoB: 1937-12-31 ( Social Security Number: 123456)](Patient-Patient42.md)

**serviceProvider**: [Organization Testkrankenhaus](Organization-KHK999.md)

**actualPeriod**: 2025-01-01 12:00:00+0200 --> 2025-01-04 12:00:00+0200

### Admissions

| | | |
| :--- | :--- | :--- |
| - | **Extension** | **DischargeDisposition** |
| * |  | Entlassung aus dem Krankenhaus |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "Encounter42",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedEncounter"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "beiEntlassung",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://elga.moped.at/CodeSystem/AltersgruppeCS",
          "code" : "85"
        }]
      }
    }],
    "url" : "https://elga.moped.at/StructureDefinition/moped-ext-altersgruppe"
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "VN"
      }]
    },
    "system" : "urn:oid:1.3.6.1.4.1.36124.5.999",
    "value" : "043"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "ANON"
      }]
    },
    "system" : "urn:oid:1.3.6.1.4.1.36124.5.999",
    "value" : "82ad92612238288c30b4590440ecb271690deb8e7c418c1f07b2eda4d87a6fe9"
  }],
  "status" : "completed",
  "class" : [{
    "coding" : [{
      "system" : "https://elga.moped.at/CodeSystem/BehandlungsartCS",
      "code" : "S"
    }]
  },
  {
    "coding" : [{
      "system" : "https://elga.moped.at/CodeSystem/Aufnahmeart2CS",
      "code" : "P"
    }]
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://elga.moped.at/CodeSystem/MopedEncounterTypesCS",
      "code" : "ENC"
    }]
  }],
  "subject" : {
    "reference" : "Patient/Patient42"
  },
  "serviceProvider" : {
    "reference" : "Organization/KHK999"
  },
  "actualPeriod" : {
    "start" : "2025-01-01T12:00:00+02:00",
    "end" : "2025-01-04T12:00:00+02:00"
  },
  "admission" : {
    "extension" : [{
      "url" : "https://elga.moped.at/StructureDefinition/moped-ext-aufnahmeart",
      "valueCoding" : {
        "system" : "https://elga.moped.at/CodeSystem/AufnahmeartCS",
        "code" : "A"
      }
    }],
    "dischargeDisposition" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/EntlassungsartCS",
        "code" : "E"
      }]
    }
  }
}

```
