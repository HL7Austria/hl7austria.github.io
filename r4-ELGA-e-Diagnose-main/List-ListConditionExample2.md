# HL7.AT.FHIR.ELGA.EDIAG.R4\Condition Summary-Liste nach erstem Arztbesuch - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condition Summary-Liste nach erstem Arztbesuch**

## Example List: Condition Summary-Liste nach erstem Arztbesuch

Profile: [AT ELGA e-Diagnose List](StructureDefinition-at-elga-ediag-list.md)

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2026-03-03 00:00:00+0000 | Mode: Working List | Status: Current | Code: Problem list - Reported |
| Subject:[Max Mustermann Male, DoB: 1970-01-01 ( Social Security number: 1234010100)](Patient-PatientExample.md)Source: | | | |

* **Items**: [Condition Hypertensive disorder, systemic arterial](Condition-ConditionSummaryExample1.md)
* **Items**: [Condition Crohn's disease](Condition-ConditionSummaryExample2.md)
* **Items**: [Condition Hyperthyroidism](Condition-ConditionSummaryExample3.md)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "ListConditionExample2",
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
  "date" : "2026-03-03T00:00:00+00:00",
  "source" : {
    "reference" : "Practitioner/PractitionerExample"
  },
  "entry" : [{
    "item" : {
      "reference" : "Condition/ConditionSummaryExample1"
    }
  },
  {
    "item" : {
      "reference" : "Condition/ConditionSummaryExample2"
    }
  },
  {
    "item" : {
      "reference" : "Condition/ConditionSummaryExample3"
    }
  }]
}

```
