# Condition Summary-Liste (Zweiter Arztbesuch - nach Stornierung) - ELGA e-Diagnose R4 v0.1.0

## Example List: Condition Summary-Liste (Zweiter Arztbesuch - nach Stornierung)

version: 4

Profile: [AT ELGA e-Diagnose List](StructureDefinition-at-elga-ediag-list.md)

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2026-03-09 10:30:00+0000 | Mode: Working List | Status: Current | Code: Problem list - Reported |
| Subject:[Max Mustermann Male, DoB: 1970-01-01 ( Social Security number: 1234010100)](Patient-PatientExample.md) | Source:[Device: type = Gerät](Device-DeviceExample.md) | | |

* **Items**: [Condition Hypertensive disorder, systemic arterial](Condition-ConditionEntry01.md)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "ConditionList03",
  "meta" : {
    "versionId" : "4",
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
  "date" : "2026-03-09T10:30:00+00:00",
  "source" : {
    "reference" : "Device/DeviceExample"
  },
  "entry" : [{
    "item" : {
      "reference" : "Condition/ConditionEntry01"
    }
  }]
}

```
