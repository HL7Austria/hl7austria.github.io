# Parameters für $write der Condition-Summary-Liste (Version 3) - ELGA e-Diagnose R4 (Draft) v0.1.0

## Example Parameters: Parameters für $write der Condition-Summary-Liste (Version 3)



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "ConditionListWrite02",
  "parameter" : [{
    "name" : "code",
    "valueCode" : "11450-4"
  },
  {
    "name" : "list",
    "resource" : {
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
      }]
    }
  }]
}

```
