# AtApsObservation-Beispiel - Austrian Patient Summary (R4) v1.1.0



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "AtApsExampleObservation01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observation"
    ]
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory",
          "display" : "Laboratory"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "718-7",
        "display" : "Hemoglobin"
      }
    ],
    "text" : "Hämoglobin"
  },
  "subject" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "effectiveDateTime" : "2024-10-10T09:30:00+01:00",
  "performer" : [
    {
      "reference" : "Organization/AtApsExampleOrganization01",
      "display" : "Amadeus Spital"
    }
  ],
  "valueQuantity" : {
    "value" : 13.6,
    "unit" : "g/dL",
    "system" : "http://unitsofmeasure.org",
    "code" : "g/dL"
  },
  "referenceRange" : [
    {
      "low" : {
        "value" : 12,
        "unit" : "g/dL",
        "system" : "http://unitsofmeasure.org",
        "code" : "g/dL"
      },
      "high" : {
        "value" : 17.5,
        "unit" : "g/dL",
        "system" : "http://unitsofmeasure.org",
        "code" : "g/dL"
      }
    }
  ]
}

```
