# ELGA.MOPED\PJ1VAERequest1 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PJ1VAERequest1**

## Example Claim: PJ1VAERequest1

Profile: [MOPED VAERequest](StructureDefinition-MopedVAERequest.md)

**status**: Active

**type**: VAE Request

**subType**: initiale VAE

**use**: Preauthorization

**patient**: [Sonnenschein Susi (official) Female, DoB: 1969-04-21 ( Social Security Number: 9994210469)](Patient-PJ1Patient.md)

**created**: 2025-02-17

**insurer**: [Organization Österreichische Gesundheitskasse Wien](Organization-SV11.md)

**provider**: [Organization Herz Jesu-Krankenhaus](Organization-OrganizationHerzJesuKrankenhaus.md)

**encounter**: 

* [Encounter: identifier = Visit number,Anonymous identifier; status = discharged; class = Stationär,geplante stationäre Aufnahme/geplanter ambulanter Besuch (mit vorhergehender Terminvereinbarung, Richtwert: mindestens 24 Stunden); type = Moped Encounter; actualPeriod = 2024-02-22 19:33:00+0200 --> 2024-02-23 07:38:00+0200](Encounter-PJ1Encounter.md)
* [Encounter: status = completed; type = Moped Transfer Encounter; subjectStatus = physisch anwesend; actualPeriod = 2024-02-22 19:33:00+0200 --> 2024-02-23 07:38:00+0200](Encounter-PJ1TransferEncounter1.md)

> **supportingInfo****sequence**: 1**category**:Fremdversschluden**value**: false

> **supportingInfo****sequence**: 2**category**:Allgemeine Gebührenklasse/Sonderklasse**code**:Allgemeine Gebührenklasse**timing**: 2024-02-22 19:33:00+0200 --> (ongoing)

> **supportingInfo****sequence**: 3**category**:Verlängerungstage**value**: 0 day(Details: UCUM codeday = 'day')

### Insurances

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Sequence** | **Focal** | **Coverage** |
| * | 1 | true | [Coverage: identifier = urn:oid:1.2.40.0.10.1.4.3.9.1#XB4G37PFN9FJ; status = active; kind = insurance](Coverage-PJ1Coverage.md) |

### Accidents

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Extension** | **Date** | **Type** |
| * |  | 0001 | Nein/Unbekannt |



## Resource Content

```json
{
  "resourceType" : "Claim",
  "id" : "PJ1VAERequest1",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedVAERequest"]
  },
  "status" : "active",
  "type" : {
    "coding" : [
      {
        "system" : "https://elga.moped.at/CodeSystem/MopedClaimTypeCS",
        "code" : "VAEREQ"
      }
    ]
  },
  "subType" : {
    "coding" : [
      {
        "system" : "https://elga.moped.at/CodeSystem/MopedClaimSubTypeCS",
        "code" : "VAEREQI"
      }
    ]
  },
  "use" : "preauthorization",
  "patient" : {
    "reference" : "Patient/PJ1Patient"
  },
  "created" : "2025-02-17",
  "insurer" : {
    "reference" : "Organization/SV11"
  },
  "provider" : {
    "reference" : "Organization/OrganizationHerzJesuKrankenhaus"
  },
  "encounter" : [
    {
      "reference" : "Encounter/PJ1Encounter"
    },
    {
      "reference" : "Encounter/PJ1TransferEncounter1"
    }
  ],
  "supportingInfo" : [
    {
      "sequence" : 1,
      "category" : {
        "coding" : [
          {
            "system" : "https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS",
            "code" : "FREVER"
          }
        ]
      },
      "valueBoolean" : false
    },
    {
      "sequence" : 2,
      "category" : {
        "coding" : [
          {
            "system" : "https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS",
            "code" : "KLAS"
          }
        ]
      },
      "code" : {
        "coding" : [
          {
            "system" : "https://elga.moped.at/CodeSystem/SonderklasseCS",
            "code" : "A"
          }
        ]
      },
      "timingPeriod" : {
        "start" : "2024-02-22T19:33:00+02:00"
      }
    },
    {
      "sequence" : 3,
      "category" : {
        "coding" : [
          {
            "system" : "https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS",
            "code" : "VERLAENG"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 0,
        "unit" : "day",
        "system" : "http://unitsofmeasure.org",
        "code" : "day"
      }
    }
  ],
  "insurance" : [
    {
      "sequence" : 1,
      "focal" : true,
      "coverage" : {
        "reference" : "Coverage/PJ1Coverage"
      }
    }
  ],
  "accident" : {
    "extension" : [
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
        "valueCode" : "not-applicable"
      }
    ],
    "date" : "0001",
    "type" : {
      "coding" : [
        {
          "system" : "https://elga.moped.at/CodeSystem/VerdachtArbeitsSchuelerunfallCS",
          "code" : "0",
          "display" : "Nein/Unbekannt"
        }
      ]
    }
  }
}

```
