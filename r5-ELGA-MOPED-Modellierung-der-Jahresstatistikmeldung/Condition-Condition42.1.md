# ELGA.MOPED\Condition42.1 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condition42.1**

## Example Condition: Condition42.1

Profile: `https://elga.moped.at/StructureDefinition/AtMopedConditionBasis`

**Diagnosetyp**: H

**clinicalStatus**: 

**code**: G40.0

**subject**: [Patient42 Patient42FamilienName Male, DoB: 1937-12-31 ( Social Security Number: 123456)](Patient-Patient42.md)

**encounter**: [Encounter: extension = ; identifier = Visit number,Anonymous identifier; status = completed; class = Stationär,geplante stationäre Aufnahme/geplanter ambulanter Besuch (mit vorhergehender Terminvereinbarung, Richtwert: mindestens 24 Stunden); type = Moped Encounter; actualPeriod = 2025-01-01 12:00:00+0200 --> 2025-01-04 12:00:00+0200](Encounter-Encounter42.md)



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "Condition42.1",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/AtMopedConditionBasis"]
  },
  "extension" : [{
    "url" : "https://elga.moped.at/StructureDefinition/moped-ext-Diagnosetyp",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://termgit.elga.gv.at/CodeSystem/lkf-diagnose-typ",
        "code" : "H"
      }]
    }
  }],
  "clinicalStatus" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
      "valueCode" : "not-asked"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/icd-10-bmsgpk-2025",
      "code" : "G40.0"
    }]
  },
  "subject" : {
    "reference" : "Patient/Patient42"
  },
  "encounter" : {
    "reference" : "Encounter/Encounter42"
  }
}

```
