# Procedure-Summary-Liste (notstarted) - ELGA e-Diagnose R4 v0.1.0

## Example List: Procedure-Summary-Liste (notstarted)

version: 1

Profile: [AT ELGA e-Diagnose List](StructureDefinition-at-elga-ediag-list.md)

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2026-03-03 08:00:00+0000 | Mode: Working List | Status: Current | Code: History of Procedures Document |
| Subject:[Max Mustermann Male, DoB: 1970-01-01 ( Social Security number: 1234010100)](Patient-PatientExample.md) | Source:[Device: type = Gerät](Device-DeviceExample.md) | | |




## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "ProcedureListEmpty",
  "meta" : {
    "versionId" : "1",
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
    "reference" : "Patient/PatientExample"
  },
  "date" : "2026-03-03T08:00:00+00:00",
  "source" : {
    "reference" : "Device/DeviceExample"
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
