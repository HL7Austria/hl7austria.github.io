# ELGA.MOPED\PJ1EncounterAufnahme - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PJ1EncounterAufnahme**

## Example Encounter: PJ1EncounterAufnahme

Profile: [MOPED Encounter](StructureDefinition-MopedEncounter.md)

**identifier**: Visit number/1024000028, Anonymous identifier/V8321382402233647600

**status**: In Progress

**class**: Stationär, geplante stationäre Aufnahme/geplanter ambulanter Besuch (mit vorhergehender Terminvereinbarung, Richtwert: mindestens 24 Stunden)

**type**: Moped Encounter

**subject**: [Sonnenschein Susi (official) Female, DoB: 1969-04-21 ( Social Security Number: 9994210469)](Patient-PJ1Patient.md)

**serviceProvider**: [Organization Herz Jesu-Krankenhaus](Organization-OrganizationHerzJesuKrankenhaus.md)

**actualPeriod**: 2024-02-22 19:33:00+0200 --> (ongoing)

> **reason****use**: Reason for Visit

### Values

| | |
| :--- | :--- |
| - | **Concept** |
| * | Überweisung |


> **diagnosis**

### Conditions

| | |
| :--- | :--- |
| - | **Concept** |
| * | Sleep Apnea |


### Admissions

| | | |
| :--- | :--- | :--- |
| - | **Extension** | **Origin** |
| * |  | [Organization HJK Interne Ambulanz](Organization-OrganizationUeberweisendeOrganization2.md) |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "PJ1EncounterAufnahme",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedEncounter"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "VN"
      }]
    },
    "system" : "urn:oid:1.3.6.1.4.1.36124.5.914",
    "value" : "1024000028",
    "assigner" : {
      "reference" : "Organization/OrganizationHerzJesuKrankenhaus"
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "ANON"
      }]
    },
    "system" : "urn:oid:1.3.6.1.4.1.36124.5.914",
    "value" : "V8321382402233647600"
  }],
  "status" : "in-progress",
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
    "start" : "2024-02-22T19:33:00+02:00"
  },
  "reason" : [{
    "use" : [{
      "coding" : [{
        "system" : "http://hl7.org/fhir/encounter-reason-use",
        "code" : "RV"
      }]
    }],
    "value" : [{
      "concept" : {
        "coding" : [{
          "system" : "https://elga.moped.at/CodeSystem/UrsacheCS",
          "code" : "00"
        }]
      }
    }]
  }],
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
    }
  }
}

```
