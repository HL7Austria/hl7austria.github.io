# HL7.AT.FHIR.ELGA.EDIAG.R4\Procedure-Summary-Liste (notstarted) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Procedure-Summary-Liste (notstarted)**

## Example List: Procedure-Summary-Liste (notstarted)

Profile: [AT ELGA e-Diagnose List](StructureDefinition-at-elga-ediag-list.md)

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2026-03-03 08:00:00+0000 | Mode: Working List | Status: Current | Code: History of Procedures Document |
| Subject:`PatientExample`Source: | | | |




## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "ProcedureListEmpty",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-list"]
  },
  "status" : "current",
  "mode" : "working",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "47519-4"
    }]
  },
  "subject" : {
    "reference" : "PatientExample"
  },
  "date" : "2026-03-03T08:00:00+00:00",
  "source" : {
    "reference" : "DeviceExample"
  },
  "emptyReason" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/list-empty-reason",
      "code" : "notstarted",
      "display" : "Not Started"
    }]
  }
}

```
