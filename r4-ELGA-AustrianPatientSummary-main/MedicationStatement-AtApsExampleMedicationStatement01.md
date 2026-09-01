# AtApsMedicationStatement-Beispiel - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtApsMedicationStatement-Beispiel**

## Example MedicationStatement: AtApsMedicationStatement-Beispiel

Profile: [AT APS MedicationStatement](StructureDefinition-at-aps-medicationstatement.md)

**status**: Active

**medication**: [Ramipril 5mg Kapseln](Medication-AtApsExampleMedication01.md)

**subject**: [Maria Musterfrau](Patient-at-aps-example-patient-01.md)

**effective**: 2024-10-01 --> 2025-03-31

**informationSource**: [Hanna Hausärztin](Practitioner-at-aps-example-practitioner-01.md)

**reasonCode**: Hypertonie

> **dosage****text**: 1 Kapsel täglich morgens**route**: Oral use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 5 mg (Details: UCUM codemg = 'mg') |




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "AtApsExampleMedicationStatement01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationstatement"]
  },
  "status" : "active",
  "medicationReference" : {
    "reference" : "Medication/AtApsExampleMedication01",
    "display" : "Ramipril 5mg Kapseln"
  },
  "subject" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "effectivePeriod" : {
    "start" : "2024-10-01",
    "end" : "2025-03-31"
  },
  "informationSource" : {
    "reference" : "Practitioner/at-aps-example-practitioner-01",
    "display" : "Hanna Hausärztin"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "59621000",
      "display" : "Hypertonie"
    }],
    "text" : "Hypertonie"
  }],
  "dosage" : [{
    "text" : "1 Kapsel täglich morgens",
    "route" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "26643006",
        "display" : "Oral use"
      }]
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 5,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      }
    }]
  }]
}

```
