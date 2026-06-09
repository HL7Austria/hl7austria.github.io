# ELGA.MOPED\PJ1EncounterBund - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PJ1EncounterBund**

## Example Encounter: PJ1EncounterBund

Profile: [AT MOPED Encounter Aufenthalt/Besuch Stationär Bund Profil](StructureDefinition-at-moped-encounter-aufenthalt-stationaer-Bund.md)

**identifier**: Anonymous identifier/V8321382402233647600

**status**: Discharged

**class**: Stationär, geplante stationäre Aufnahme/geplanter ambulanter Besuch (mit vorhergehender Terminvereinbarung, Richtwert: mindestens 24 Stunden)

**type**: Moped Encounter

**subject**: [Sonnenschein Susi Female, DoB: 1969-04-21](Patient-PJ1Patient.md)

**serviceProvider**: [Organization Herz Jesu-Krankenhaus](Organization-OrganizationHerzJesuKrankenhaus.md)

**actualPeriod**: 2024-02-22 19:33:00+0200 --> 2024-02-23 07:38:00+0200

> **diagnosis**

### Conditions

| | |
| :--- | :--- |
| - | **Concept** |
| * | Sleep Apnea |


### Admissions

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Extension** | **Origin** | **DischargeDisposition** |
| * |  | [Organization HJK Interne Ambulanz](Organization-OrganizationUeberweisendeOrganization2.md) | Entlassung aus dem Krankenhaus |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "PJ1EncounterBund",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-encounter-aufenthalt-stationaer-Bund"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "ANON"
      }]
    },
    "system" : "urn:oid:1.3.6.1.4.1.36124.5.914",
    "value" : "V8321382402233647600"
  }],
  "status" : "discharged",
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
    "reference" : "Patient/PJ1Patient"
  },
  "serviceProvider" : {
    "reference" : "Organization/OrganizationHerzJesuKrankenhaus"
  },
  "actualPeriod" : {
    "start" : "2024-02-22T19:33:00+02:00",
    "end" : "2024-02-23T07:38:00+02:00"
  },
  "diagnosis" : [{
    "condition" : [{
      "concept" : {
        "coding" : [{
          "system" : "https://termgit.elga.gv.at/CodeSystem/icd-10-bmsgpk-2025",
          "code" : "G47.3",
          "display" : "Sleep Apnea"
        }]
      }
    }]
  }],
  "admission" : {
    "extension" : [{
      "url" : "https://elga.moped.at/StructureDefinition/moped-ext-aufnahmeart",
      "valueCoding" : {
        "system" : "https://elga.moped.at/CodeSystem/AufnahmeartCS",
        "code" : "A"
      }
    }],
    "origin" : {
      "reference" : "Organization/OrganizationUeberweisendeOrganization2"
    },
    "dischargeDisposition" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/EntlassungsartCS",
        "code" : "E"
      }]
    }
  }
}

```
