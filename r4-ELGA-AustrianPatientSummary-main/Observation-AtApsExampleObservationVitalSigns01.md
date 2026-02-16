# AtApsObservationVitalSigns-Beispiel - Austrian Patient Summary (R4) v1.0.0



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "AtApsExampleObservationVitalSigns01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationvitalsigns"
    ]
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "8867-4",
        "display" : "Heart rate"
      }
    ],
    "text" : "Vitalzeichen"
  },
  "subject" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "effectiveDateTime" : "2025-10-17T08:15:00+02:00",
  "performer" : [
    {
      "reference" : "Practitioner/at-aps-example-practitioner-01",
      "display" : "Hanna Hausärztin"
    }
  ],
  "valueQuantity" : {
    "value" : 72,
    "unit" : "beats/min",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  }
}

```
