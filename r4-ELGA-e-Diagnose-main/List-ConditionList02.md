# HL7.AT.FHIR.ELGA.EDIAG.R4\Condition Summary-Liste (Zweiter Arztbesuch - fehlerhafter Eintrag) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condition Summary-Liste (Zweiter Arztbesuch - fehlerhafter Eintrag)**

## Example List: Condition Summary-Liste (Zweiter Arztbesuch - fehlerhafter Eintrag)

Profile: [AT ELGA e-Diagnose List](StructureDefinition-at-elga-ediag-list.md)

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2026-03-09 08:00:00+0000 | Mode: Working List | Status: Current | Code: Problem list - Reported |
| Subject:`PatientExample`Source: | | | |

* **Items**: `ConditionSummaryExample1`
* **Items**: `ConditionSummaryExample2`
* **Items**: `ConditionSummaryExample3`



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "ConditionList02",
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
  "date" : "2026-03-09T08:00:00+00:00",
  "source" : {
    "reference" : "PractitionerExample"
  },
  "entry" : [{
    "item" : {
      "reference" : "ConditionSummaryExample1"
    }
  },
  {
    "item" : {
      "reference" : "ConditionSummaryExample2"
    }
  },
  {
    "item" : {
      "reference" : "ConditionSummaryExample3"
    }
  }]
}

```
