# Parameters der Antwort auf $entered-in-error einer Diagnose - ELGA e-Diagnose R4 (Draft) v0.1.0

## Example Parameters: Parameters der Antwort auf $entered-in-error einer Diagnose



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "ConditionEnteredInErrorResponse01",
  "parameter" : [{
    "name" : "diagnose",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "ConditionEntry03EnteredInError",
      "meta" : {
        "versionId" : "2",
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"]
      },
      "extension" : [{
        "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported",
        "valueBoolean" : true
      },
      {
        "extension" : [{
          "url" : "practitioner",
          "valueReference" : {
            "reference" : "Practitioner/PractitionerExample"
          }
        },
        {
          "url" : "datetime",
          "valueDateTime" : "2026-03-09T10:30:00+00:00"
        },
        {
          "url" : "reason",
          "valueString" : "Falscher Code ausgewählt"
        }],
        "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-ext-entered-in-error"
      }],
      "identifier" : [{
        "system" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-codesystem-business-identifier",
        "value" : "1236"
      }],
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "active"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "34486009",
          "display" : "Hyperthyroidism"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientExample"
      },
      "onsetDateTime" : "2010-01-01",
      "recordedDate" : "2026-03-09T00:00:00+00:00",
      "recorder" : {
        "reference" : "Practitioner/PractitionerExample"
      },
      "asserter" : {
        "reference" : "Patient/PatientExample"
      },
      "note" : [{
        "text" : "Seit 2010"
      }]
    }
  },
  {
    "name" : "list",
    "resource" : {
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
  }]
}

```
