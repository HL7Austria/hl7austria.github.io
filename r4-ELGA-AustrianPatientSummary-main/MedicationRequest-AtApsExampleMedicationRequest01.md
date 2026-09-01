# AtApsMedicationRequest-Beispiel - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtApsMedicationRequest-Beispiel**

## Example MedicationRequest: AtApsMedicationRequest-Beispiel

Profile: [AT APS MedicationRequest](StructureDefinition-at-aps-medicationrequest.md)

**status**: Active

**intent**: Order

**medication**: [Ramipril 5mg Kapseln](Medication-AtApsExampleMedication01.md)

**subject**: [Maria Musterfrau](Patient-at-aps-example-patient-01.md)

**authoredOn**: 2024-10-14 10:00:00+0100

**requester**: [Hanna Hausärztin](Practitioner-at-aps-example-practitioner-01.md)

**reasonCode**: Hypertonie

> **dosageInstruction****text**: 1 Kapsel täglich morgens**timing**: Once per 1 day**route**: Oral use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 5 mg (Details: UCUM codemg = 'mg') |


> **dispenseRequest****quantity**: 30 Kapseln

### ExpectedSupplyDurations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Value** | **Unit** | **System** | **Code** |
| * | 30 | Tage | [http://unitsofmeasure.org](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/CodeSystem-v3-ucum.html) | d |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "AtApsExampleMedicationRequest01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationrequest"]
  },
  "status" : "active",
  "intent" : "order",
  "medicationReference" : {
    "reference" : "Medication/AtApsExampleMedication01",
    "display" : "Ramipril 5mg Kapseln"
  },
  "subject" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "authoredOn" : "2024-10-14T10:00:00+01:00",
  "requester" : {
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
  "dosageInstruction" : [{
    "text" : "1 Kapsel täglich morgens",
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 1,
        "periodUnit" : "d"
      }
    },
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
  }],
  "dispenseRequest" : {
    "quantity" : {
      "value" : 30,
      "unit" : "Kapseln"
    },
    "expectedSupplyDuration" : {
      "value" : 30,
      "unit" : "Tage",
      "system" : "http://unitsofmeasure.org",
      "code" : "d"
    }
  }
}

```
