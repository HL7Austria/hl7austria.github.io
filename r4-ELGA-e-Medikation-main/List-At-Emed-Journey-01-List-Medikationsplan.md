# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Journey 01: Leerer Medikationsplan - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Journey 01: Leerer Medikationsplan**

## Example List: Beispiel Journey 01: Leerer Medikationsplan

Profile: [ELGA e-Med Medikationsplan](StructureDefinition-at-emed-list-medikationsplan.md)

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2026-01-28 08:00:00+1100 | Mode: Working List | Status: Current | Code: Medikationsplan |
| Subject:[Max Mustermann Male, DoB: 1900-01-01 ( Social Security number: 1234010100)](Patient-At-Emed-Journey-01-Patient-01.md)Source: Order: Sorted by User | | | |




## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "At-Emed-Journey-01-List-Medikationsplan",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-list-medikationsplan"]
  },
  "status" : "current",
  "mode" : "working",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "736378000",
      "display" : "Medikationsplan"
    }]
  },
  "subject" : {
    "reference" : "Patient/At-Emed-Journey-01-Patient-01"
  },
  "date" : "2026-01-28T08:00:00+11:00",
  "source" : {
    "reference" : "Device/At-Emed-Journey-01-Device"
  },
  "orderedBy" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/list-order",
      "code" : "user"
    }]
  },
  "emptyReason" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/list-empty-reason",
      "code" : "notstarted"
    }]
  }
}

```
