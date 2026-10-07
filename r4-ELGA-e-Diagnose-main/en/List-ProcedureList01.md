# Procedure Summary-Liste mit einem Summary-Eintrag - ELGA e-Diagnose R4 (Draft) v0.1.0

## Example List: Procedure Summary-Liste mit einem Summary-Eintrag

version: 2

Profile: [AT ELGA e-Diagnose List](StructureDefinition-at-elga-ediag-list.md)

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2026-03-09 10:00:00+0000 | Mode: Working List | Status: Current | Code: History of Procedures Document |
| Subject:[Max Mustermann Male, DoB: 1970-01-01 ( Social Security number: 1234010100)](Patient-PatientExample.md) | Source:[Melanie Musterärztin (OID:1.2.40.0.34.99.4613.4)](Practitioner-PractitionerExample.md) | | |

* **Items**: [Procedure Colonoscopy](Procedure-ProcedureEntry01.md)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "ProcedureList01",
  "meta" : {
    "versionId" : "2",
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
  "date" : "2026-03-09T10:00:00+00:00",
  "source" : {
    "reference" : "Practitioner/PractitionerExample"
  },
  "entry" : [{
    "item" : {
      "reference" : "Procedure/ProcedureEntry01"
    }
  }]
}

```
