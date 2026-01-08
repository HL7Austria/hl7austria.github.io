# ELGA.MOPED\PJ2Condition1 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PJ2Condition1**

## Example Condition: PJ2Condition1

Profile: [MOPED Condition](StructureDefinition-MopedCondition.md)

**Diagnosetyp**: H

**clinicalStatus**: Unknown

**verificationStatus**: Confirmed

**code**: Fraktur der Patella

**subject**: [Santiago Schnabeltier Test (official) Male, DoB: 1985-03-19 ( Social Security Number: 2873111374)](Patient-PJ2Patient.md)

**encounter**: [Encounter: identifier = Visit number,Anonymous identifier; status = discharged; class = Stationär,akute stationäre Aufnahme/akuter ambulanter Besuch (ohne vorhergehende Terminvereinbarung); type = Moped Encounter; actualPeriod = 2024-08-08 08:21:00+0200 --> 2024-08-12 19:22:00+0200](Encounter-PJ2Encounter.md)



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "PJ2Condition1",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedCondition"]
  },
  "extension" : [
    {
      "url" : "https://elga.moped.at/StructureDefinition/moped-ext-Diagnosetyp",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://termgit.elga.gv.at/ValueSet/lkf-diagnose-typ",
            "code" : "H"
          }
        ]
      }
    }
  ],
  "clinicalStatus" : {
    "extension" : [
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
        "valueCode" : "not-asked"
      }
    ],
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code" : "unknown"
      }
    ]
  },
  "verificationStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
        "code" : "confirmed"
      }
    ]
  },
  "code" : {
    "coding" : [
      {
        "system" : "https://termgit.elga.gv.at/CodeSystem/icd-10-bmsgpk-2025",
        "code" : "S82.0",
        "display" : "Fraktur der Patella"
      },
      {
        "system" : "https://elga.moped.at/CodeSystem/LKFHauptdiagnosegruppenCS",
        "code" : "HDG15.03",
        "display" : "Frakturen der unteren Extremität/Becken, außer Vorfuß"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/PJ2Patient"
  },
  "encounter" : {
    "reference" : "Encounter/PJ2Encounter"
  }
}

```
