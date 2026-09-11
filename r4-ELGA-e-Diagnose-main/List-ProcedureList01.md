# HL7.AT.FHIR.ELGA.EDIAG.R4\Procedure Summary-Liste mit einem Summary-Eintrag - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Procedure Summary-Liste mit einem Summary-Eintrag**

## Example List: Procedure Summary-Liste mit einem Summary-Eintrag

Profile: [AT ELGA e-Diagnose List](StructureDefinition-at-elga-ediag-list.md)

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2026-03-01 00:00:00+0000 | Mode: Working List | Status: Current | Code: Problem list - Reported |
| Subject:[Max Mustermann Male, DoB: 1970-01-01 ( Social Security number: 1234010100)](Patient-PatientExample.md)Source: | | | |

* **Items**: [Procedure Colonoscopy](Procedure-ProcedureEntry01.md)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "ProcedureList01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-list"]
  },
  "status" : "current",
  "mode" : "working",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "11450-4"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "date" : "2026-03-01T00:00:00+00:00",
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
