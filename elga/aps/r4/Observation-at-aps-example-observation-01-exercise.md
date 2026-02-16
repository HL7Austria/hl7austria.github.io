# Patient Story-Beispiel - Austrian Patient Summary (R4) v1.0.0



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "at-aps-example-observation-01-exercise",
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "89555-7",
        "display" : "An wie vielen Tagen pro Woche haben Sie in den letzten 30 Tagen mäßige bis anstrengende körperliche Aktivitäten ausgeübt?"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "effectiveDateTime" : "2024-12-02",
  "performer" : [
    {
      "reference" : "Patient/at-aps-example-patient-01",
      "display" : "Maria Musterfrau"
    }
  ],
  "valueQuantity" : {
    "value" : 3,
    "unit" : "Tage pro Woche",
    "system" : "http://unitsofmeasure.org",
    "code" : "d/wk"
  }
}

```
