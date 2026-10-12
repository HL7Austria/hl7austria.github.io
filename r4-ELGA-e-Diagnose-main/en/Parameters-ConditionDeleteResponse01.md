# Parameters der Antwort auf $delete einer Diagnose - ELGA e-Diagnose R4 (Draft) v0.1.0

## Example Parameters: Parameters der Antwort auf $delete einer Diagnose



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "ConditionDeleteResponse01",
  "parameter" : [{
    "name" : "diagnose",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "ConditionEntry05",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"]
      },
      "extension" : [{
        "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported",
        "valueBoolean" : false
      }],
      "identifier" : [{
        "system" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-codesystem-business-identifier",
        "value" : "1238"
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
          "code" : "52643007",
          "display" : "Candidal balanitis"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientExample"
      },
      "onsetDateTime" : "2026-03-09",
      "recordedDate" : "2026-03-09T00:00:00+00:00",
      "recorder" : {
        "reference" : "Practitioner/PractitionerExample"
      },
      "asserter" : {
        "reference" : "Practitioner/PractitionerExample"
      },
      "note" : [{
        "text" : "Juckreiz im Genitalbereich bei bestehender AB-Therapie"
      }]
    }
  }]
}

```
