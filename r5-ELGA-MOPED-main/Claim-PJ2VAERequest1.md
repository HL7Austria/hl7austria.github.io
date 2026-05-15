# ELGA.MOPED\PJ2VAERequest1 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PJ2VAERequest1**

## Example Claim: PJ2VAERequest1

Profile: [MOPED VAERequest](StructureDefinition-MopedVAERequest.md)

**status**: Active

**type**: VAE Request

**subType**: initiale VAE

**use**: Preauthorization

**patient**: [Santiago Schnabeltier Test Male, DoB: 1985-03-19](Patient-PJ2Patient.md)

**created**: 2025-02-17

**insurer**: [Organization Österreichische Gesundheitskasse Oberösterreich](Organization-SV14.md)

**provider**: [Organization Krankenhaus der Barmherzigen Schwestern vom Hl. Vinzenz von Paul Ried](Organization-OrganizationKrankenhausRied.md)

**encounter**: 

* [Encounter: identifier = Visit number,Anonymous identifier; status = discharged; class = Stationär,akute stationäre Aufnahme/akuter ambulanter Besuch (ohne vorhergehende Terminvereinbarung); type = Moped Encounter; actualPeriod = 2024-08-08 08:21:00+0200 --> 2024-08-12 19:22:00+0200](Encounter-PJ2Encounter.md)
* [Encounter: status = completed; type = Moped Transfer Encounter; subjectStatus = physisch anwesend; actualPeriod = 2024-08-08 08:21:00+0200 --> 2024-08-08 11:22:00+0200](Encounter-PJ2TransferEncounter1.md)

> **supportingInfo****sequence**: 1**category**: Fremdversschluden**value**: false

> **supportingInfo****sequence**: 2**category**: Allgemeine Gebührenklasse/Sonderklasse**code**: Allgemeine Gebührenklasse**timing**: 2024-08-08 08:21:00+0200 --> (ongoing)

> **supportingInfo****sequence**: 3**category**: Verlängerungstage**value**: 0 day (Details: UCUM coded = 'd')

### Insurances

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Sequence** | **Focal** | **Coverage** |
| * | 1 | true | [Coverage: identifier = urn:oid:1.2.40.0.10.1.4.3.9.1#FJK5MCDPMRCY; status = active; kind = insurance](Coverage-PJ2Coverage.md) |

### Accidents

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Extension** | **Date** | **Type** |
| * |  | 0001 | Nein/Unbekannt |



## Resource Content

```json
{
  "resourceType" : "Claim",
  "id" : "PJ2VAERequest1",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedVAERequest"]
  },
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "https://elga.moped.at/CodeSystem/MopedClaimTypeCS",
      "code" : "VAEREQ"
    }]
  },
  "subType" : {
    "coding" : [{
      "system" : "https://elga.moped.at/CodeSystem/MopedClaimSubTypeCS",
      "code" : "VAEREQI"
    }]
  },
  "use" : "preauthorization",
  "patient" : {
    "reference" : "Patient/PJ2Patient"
  },
  "created" : "2025-02-17",
  "insurer" : {
    "reference" : "Organization/SV14"
  },
  "provider" : {
    "reference" : "Organization/OrganizationKrankenhausRied"
  },
  "encounter" : [{
    "reference" : "Encounter/PJ2Encounter"
  },
  {
    "reference" : "Encounter/PJ2TransferEncounter1"
  }],
  "supportingInfo" : [{
    "sequence" : 1,
    "category" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS",
        "code" : "FREVER"
      }]
    },
    "valueBoolean" : false
  },
  {
    "sequence" : 2,
    "category" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS",
        "code" : "KLAS"
      }]
    },
    "code" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/SonderklasseCS",
        "code" : "A"
      }]
    },
    "timingPeriod" : {
      "start" : "2024-08-08T08:21:00+02:00"
    }
  },
  {
    "sequence" : 3,
    "category" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS",
        "code" : "VERLAENG"
      }]
    },
    "valueQuantity" : {
      "value" : 0,
      "unit" : "day",
      "system" : "http://unitsofmeasure.org",
      "code" : "d"
    }
  }],
  "insurance" : [{
    "sequence" : 1,
    "focal" : true,
    "coverage" : {
      "reference" : "Coverage/PJ2Coverage"
    }
  }],
  "accident" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
      "valueCode" : "not-applicable"
    }],
    "date" : "0001",
    "type" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/VerdachtArbeitsSchuelerunfallCS",
        "code" : "0",
        "display" : "Nein/Unbekannt"
      }]
    }
  }
}

```
