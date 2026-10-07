# Parameters für $write der Allergy-Summary-Liste (Version 2) - ELGA e-Diagnose R4 (Draft) v0.1.0

## Example Parameters: Parameters für $write der Allergy-Summary-Liste (Version 2)



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "AllergyListWrite01",
  "parameter" : [{
    "name" : "code",
    "valueCode" : "48765-2"
  },
  {
    "name" : "list",
    "resource" : {
      "resourceType" : "List",
      "id" : "AllergyList01",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-list"]
      },
      "status" : "current",
      "mode" : "working",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "48765-2"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientExample"
      },
      "date" : "2026-03-03T08:10:00+00:00",
      "source" : {
        "reference" : "Practitioner/PractitionerExample"
      },
      "entry" : [{
        "item" : {
          "reference" : "AllergyIntolerance/AllergyEntry01"
        }
      }]
    }
  }]
}

```
