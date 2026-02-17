# Social History-Beispiel 2 - Austrian Patient Summary (R4) v1.1.0



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "at-aps-example-observationtobaccouse-01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationtobaccouse"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "72166-2",
        "display" : "Raucherstatus"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "effectiveDateTime" : "2019-07-15",
  "performer" : [
    {
      "reference" : "Patient/at-aps-example-patient-01",
      "display" : "Maria Musterfrau"
    }
  ],
  "valueCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "8517006",
        "display" : "Ehemalig rauchende Person"
      }
    ]
  }
}

```
