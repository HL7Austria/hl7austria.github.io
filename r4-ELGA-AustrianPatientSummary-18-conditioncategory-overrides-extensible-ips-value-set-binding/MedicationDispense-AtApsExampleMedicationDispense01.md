# AtApsMedicationDispense-Beispiel - Austrian Patient Summary (R4) v0.2.0



## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "AtApsExampleMedicationDispense01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationdispense"
    ]
  },
  "status" : "completed",
  "medicationReference" : {
    "reference" : "Medication/AtApsExampleMedication01",
    "display" : "Ramipril 5mg Kapseln"
  },
  "subject" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "performer" : [
    {
      "actor" : {
        "reference" : "Organization/AtApsExampleOrganization01",
        "display" : "Amadeus Spital"
      }
    }
  ],
  "authorizingPrescription" : [
    {
      "reference" : "MedicationRequest/AtApsExampleMedicationRequest01",
      "display" : "Verordnung Ramipril"
    }
  ],
  "quantity" : {
    "value" : 30,
    "unit" : "Kapseln"
  },
  "daysSupply" : {
    "value" : 30,
    "unit" : "Tage",
    "system" : "http://unitsofmeasure.org",
    "code" : "d"
  },
  "whenHandedOver" : "2024-10-15T09:30:00+01:00",
  "dosageInstruction" : [
    {
      "text" : "1 Kapsel täglich morgens",
      "timing" : {
        "repeat" : {
          "frequency" : 1,
          "period" : 1,
          "periodUnit" : "d"
        }
      },
      "route" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "26643006",
            "display" : "Oral use"
          }
        ]
      }
    }
  ]
}

```
