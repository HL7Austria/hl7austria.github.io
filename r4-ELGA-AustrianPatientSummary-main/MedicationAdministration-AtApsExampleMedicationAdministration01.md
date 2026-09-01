# AtApsMedicationAdministration-Beispiel - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtApsMedicationAdministration-Beispiel**

## Example MedicationAdministration: AtApsMedicationAdministration-Beispiel

Profile: [AT APS MedicationAdministration](StructureDefinition-at-aps-medicationadministration.md)

**status**: Completed

**medication**: [Ramipril 5mg Kapseln](Medication-AtApsExampleMedication01.md)

**subject**: [Maria Musterfrau](Patient-at-aps-example-patient-01.md)

**effective**: 2024-10-15 08:00:00+0100

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Hanna Hausärztin](Practitioner-at-aps-example-practitioner-01.md) |

**reasonCode**: Hypertonie

### Dosages

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Text** | **Route** | **Dose** |
| * | 1 Kapsel täglich morgens | Oral use | 5 mg (Details: UCUM codemg = 'mg') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "AtApsExampleMedicationAdministration01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationadministration"]
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
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/at-aps-example-practitioner-01",
      "display" : "Hanna Hausärztin"
    }
  }],
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "59621000",
      "display" : "Hypertonie"
    }],
    "text" : "Hypertonie"
  }],
  "dosage" : {
    "text" : "1 Kapsel täglich morgens",
    "route" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "26643006",
        "display" : "Oral use"
      }]
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
