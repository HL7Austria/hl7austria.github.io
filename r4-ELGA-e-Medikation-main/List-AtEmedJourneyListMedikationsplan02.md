# HL7.AT.FHIR.ELGA.EMED.R4\Example List Medikationsplan 02 - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example List Medikationsplan 02**

## Example List: Example List Medikationsplan 02

Profile: [ELGA e-Medikation Medikationsplan](StructureDefinition-at-emed-list-medikationsplan.md)

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2013-11-20 23:10:23+1100 | Mode: Working List | Status: Current | Code: Medikationsplan |
| Subject:[Max Mustermann Male, DoB: 1900-01-01 ( Social Security number: 1234010100)](Patient-AtEmedExamplePatient01.md)Source: Order: user | | | |




## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "AtEmedJourneyListMedikationsplan02",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-list-medikationsplan"
    ]
  },
  "status" : "current",
  "mode" : "working",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "736378000",
        "display" : "Medikationsplan"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/AtEmedExamplePatient01"
  },
  "date" : "2013-11-20T23:10:23+11:00",
  "source" : {
    "reference" : "Practitioner/at-emed-example-practitioner-01"
  },
  "orderedBy" : {
    "coding" : [
      {
        "code" : "user"
      }
    ]
  },
  "emptyReason" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/list-empty-reason",
        "code" : "notstarted"
      }
    ]
  }
}

```
