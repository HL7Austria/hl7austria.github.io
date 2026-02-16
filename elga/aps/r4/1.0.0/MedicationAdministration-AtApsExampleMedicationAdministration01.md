# AtApsMedicationAdministration-Beispiel - Austrian Patient Summary (R4) v1.0.0



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "AtApsExampleMedicationAdministration01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationadministration"
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
  "effectiveDateTime" : "2024-10-15T08:00:00+01:00",
  "performer" : [
    {
      "actor" : {
        "reference" : "Practitioner/at-aps-example-practitioner-01",
        "display" : "Hanna Hausärztin"
      }
    }
  ],
  "reasonCode" : [
    {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "59621000",
          "display" : "Hypertonie"
        }
      ],
      "text" : "Hypertonie"
    }
  ],
  "dosage" : {
    "text" : "1 Kapsel täglich morgens",
    "route" : {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "26643006",
          "display" : "Oral use"
        }
      ]
    },
    "dose" : {
      "value" : 5,
      "unit" : "mg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg"
    }
  }
}

```
