# Condition Summary-Liste (Zweiter Arztbesuch - fehlerhafter Eintrag) - ELGA e-Diagnose R4 (Draft) v0.1.0

## Example List: Condition Summary-Liste (Zweiter Arztbesuch - fehlerhafter Eintrag)

Profile: [AT ELGA e-Diagnose List](StructureDefinition-at-elga-ediag-list.md)

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2026-03-09 08:00:00+0000 | Mode: Working List | Status: Current | Code: Problem list - Reported |
| Subject:[Max Mustermann Male, DoB: 1970-01-01 ( Social Security number: 1234010100)](Patient-PatientExample.md)Source: | | | |

* **Items**: [Condition Hypertensive disorder, systemic arterial](Condition-ConditionEntry01.md)
* **Items**: [Condition Crohn's disease](Condition-ConditionEntry03.md)
* **Items**: [Condition Hyperthyroidism](Condition-ConditionEnteredInError.md)



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
    "reference" : "Patient/PatientExample"
  },
  "date" : "2026-03-09T08:00:00+00:00",
  "source" : {
    "reference" : "Practitioner/PractitionerExample"
  },
  "entry" : [{
    "item" : {
      "reference" : "Condition/ConditionEntry01"
    }
  },
  {
    "item" : {
      "reference" : "Condition/ConditionEntry03"
    }
  },
  {
    "item" : {
      "reference" : "Condition/ConditionEnteredInError"
    }
  }]
}

```
