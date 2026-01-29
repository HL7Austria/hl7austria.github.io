# Social History-Beispiel 1 - Austrian Patient Summary (R4) v0.2.0



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "at-aps-example-observationalcoholuse-01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationalcoholuse"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "74013-4",
        "display" : "Alkoholische Getränke pro Tag"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "effectiveDateTime" : "2024-09-20",
  "performer" : [
    {
      "reference" : "Patient/at-aps-example-patient-01",
      "display" : "Maria Musterfrau"
    }
  ],
  "valueQuantity" : {
    "value" : 2,
    "unit" : "Weingläser pro Tag",
    "system" : "http://unitsofmeasure.org",
    "code" : "/d"
  }
}

```
