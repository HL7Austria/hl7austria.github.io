# AtApsDiagnosticReport-Beispiel - Austrian Patient Summary (R4) v1.1.0



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "AtApsExampleDiagnosticReport01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-diagnosticreport"
    ]
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "LAB",
          "display" : "Labor"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "58410-2",
        "display" : "Laboratory report"
      }
    ],
    "text" : "Laborbefund"
  },
  "subject" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "effectiveDateTime" : "2024-09-15T10:30:00+01:00",
  "issued" : "2024-09-15T11:00:00+01:00",
  "performer" : [
    {
      "reference" : "Practitioner/at-aps-example-practitioner-01",
      "display" : "Hanna Hausärztin"
    }
  ],
  "specimen" : [
    {
      "reference" : "Specimen/AtApsExampleSpecimen01",
      "display" : "Blutprobe"
    }
  ],
  "result" : [
    {
      "reference" : "Observation/AtApsExampleObservation01",
      "display" : "Hämoglobin"
    }
  ]
}

```
