# ELGA.MOPED\PJ2Encounter - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PJ2Encounter**

## Example Encounter: PJ2Encounter

Profile: [AT MOPED Encounter Aufenthalt/Besuch generisches Profil](StructureDefinition-at-moped-encounter-aufenthaltbesuch-generisch.md)

**identifier**: Visit number/324200063, Anonymous identifier/VABCDTESTTBD

**status**: Discharged

**class**: Stationär, akute stationäre Aufnahme/akuter ambulanter Besuch (ohne vorhergehende Terminvereinbarung)

**type**: Moped Encounter

**subject**: [Santiago Schnabeltier Test Male, DoB: 1985-03-19](Patient-PJ2Patient.md)

**serviceProvider**: [Organization Krankenhaus der Barmherzigen Schwestern vom Hl. Vinzenz von Paul Ried](Organization-OrganizationKrankenhausRied.md)

**actualPeriod**: 2024-08-08 08:21:00+0200 --> 2024-08-12 19:22:00+0200

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
| * | Fraktur der Patella |


### Admissions

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Extension** | **Origin** | **DischargeDisposition** |
| * |  | [Organization: identifier = urn:oid:1.2.40.0.10.1.4.3.2#233853](Organization-OrganizationUeberweisendeOrganization1.md) | Entlassung aus dem Krankenhaus |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "PJ2Encounter",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-encounter-aufenthaltbesuch-generisch"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "VN"
      }]
    },
    "system" : "urn:oid:1.3.6.1.4.1.36124.5.427",
    "value" : "324200063",
    "assigner" : {
      "reference" : "Organization/OrganizationKrankenhausRied"
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "ANON"
      }]
    },
    "system" : "urn:oid:1.3.6.1.4.1.36124.5.427",
    "value" : "VABCDTESTTBD"
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
      "code" : "A"
    }]
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://elga.moped.at/CodeSystem/MopedEncounterTypesCS",
      "code" : "ENC"
    }]
  }],
  "subject" : {
    "reference" : "Patient/PJ2Patient"
  },
  "serviceProvider" : {
    "reference" : "Organization/OrganizationKrankenhausRied"
  },
  "actualPeriod" : {
    "start" : "2024-08-08T08:21:00+02:00",
    "end" : "2024-08-12T19:22:00+02:00"
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
          "code" : "S82.0",
          "display" : "Fraktur der Patella"
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
      "reference" : "Organization/OrganizationUeberweisendeOrganization1"
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
