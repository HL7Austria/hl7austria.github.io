# HL7.AT.FHIR.ELGA.EDIAG.R4\Condition Summary-Liste (Erster Arztbesuch) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condition Summary-Liste (Erster Arztbesuch)**

## Example List: Condition Summary-Liste (Erster Arztbesuch)

Profile: [AT ELGA e-Diagnose List](StructureDefinition-at-elga-ediag-list.md)

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2026-03-03 00:00:00+0000 | Mode: Working List | Status: Current | Code: Problem list - Reported |
| Subject:`PatientExample`Source: | | | |

* **Items**: `ConditionSummaryExample1`



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "ConditionList01",
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
    "reference" : "PatientExample"
  },
  "date" : "2026-03-03T00:00:00+00:00",
  "source" : {
    "reference" : "PractitionerExample"
  },
  "entry" : [{
    "item" : {
      "reference" : "ConditionSummaryExample1"
    }
  }]
}

```
