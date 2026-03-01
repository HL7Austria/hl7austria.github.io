# ELGA.MOPED\PJ1EncounterSV - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PJ1EncounterSV**

## Example Encounter: PJ1EncounterSV

Profiles: [MOPED Encounter SV](StructureDefinition-MopedEncounterSV.md), [MOPED Encounter](StructureDefinition-MopedEncounter.md)

**identifier**: Visit number/1024000028

**status**: Discharged

**class**: Stationär

**type**: Moped Encounter

**subject**: [Sonnenschein Susi (official) Female, DoB: 1969-04-21 ( Social Security Number: 9994210469)](Patient-PJ1Patient.md)

**serviceProvider**: [Organization Herz Jesu-Krankenhaus](Organization-OrganizationHerzJesuKrankenhaus.md)

**actualPeriod**: 2024-02-22 19:33:00+0200 --> 2024-02-23 07:38:00+0200

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

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Extension** | **Origin** | **DischargeDisposition** |
| * |  | [Organization HJK Interne Ambulanz](Organization-OrganizationUeberweisendeOrganization2.md) | Entlassung aus dem Krankenhaus |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "PJ1EncounterSV",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedEncounterSV",
    "https://elga.moped.at/StructureDefinition/MopedEncounter"]
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
  }],
  "status" : "discharged",
  "class" : [{
    "coding" : [{
      "system" : "https://elga.moped.at/CodeSystem/BehandlungsartCS",
      "code" : "S"
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
