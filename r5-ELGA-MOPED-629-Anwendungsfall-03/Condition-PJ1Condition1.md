# ELGA.MOPED\PJ1Condition1 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PJ1Condition1**

## Example Condition: PJ1Condition1

Profile: [MOPED Condition](StructureDefinition-MopedCondition.md)

**Diagnosetyp**: A

**clinicalStatus**: Unknown

**verificationStatus**: Confirmed

**code**: Schlafapnoe

**subject**: [Sonnenschein Susi (official) Female, DoB: 1969-04-21 ( Social Security Number: 9994210469)](Patient-PJ1Patient.md)

**encounter**: [Encounter: identifier = Visit number,Anonymous identifier; status = discharged; class = Stationär,geplante stationäre Aufnahme/geplanter ambulanter Besuch (mit vorhergehender Terminvereinbarung, Richtwert: mindestens 24 Stunden); type = Moped Encounter; actualPeriod = 2024-02-22 19:33:00+0200 --> 2024-02-23 07:38:00+0200](Encounter-PJ1Encounter.md)



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "PJ1Condition1",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedCondition"]
  },
  "extension" : [
    {
      "url" : "https://elga.moped.at/StructureDefinition/moped-ext-Diagnosetyp",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://TBD.at/CodeSystem/LKFDiagnoseTypCS",
            "code" : "A"
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
        "code" : "G47.3",
        "display" : "Schlafapnoe"
      },
      {
        "system" : "https://elga.moped.at/CodeSystem/LKFHauptdiagnosegruppenCS",
        "code" : "HDG01.31",
        "display" : "Sonstige Erkrankungen - Nervensystem"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/PJ1Patient"
  },
  "encounter" : {
    "reference" : "Encounter/PJ1Encounter"
  }
}

```
