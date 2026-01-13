# HL7.AT.FHIR.ELGA.EMED.R4\AtEmedMedicationRequest-Beispiel - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtEmedMedicationRequest-Beispiel**

## Example MedicationRequest: AtEmedMedicationRequest-Beispiel

Profile: [ELGA e-Medikation MedicationRequest](StructureDefinition-at-emed-medicationrequest.md)

**status**: Active

**intent**: Order

**medication**: [Ramipril 5mg Kapseln](Medication/AtApsExampleMedication01)

**subject**: [Max Mustermann](http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/2.0.0/Patient-HL7ATCorePatientExample01.html)

**authoredOn**: 2024-10-14 10:00:00+0100

**requester**: [Dr. Melanie Musterärztin](http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/2.0.0/Practitioner-HL7ATCorePractitionerExample01.html)

**reasonCode**: Hypertonie

> **dosageInstruction****text**: 1 Kapsel täglich morgens**timing**: Once per 1 day**route**:Oral use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 5 mg(Details: UCUM codemg = 'mg') |


> **dispenseRequest****quantity**: 30 Kapseln

### ExpectedSupplyDurations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Value** | **Unit** | **System** | **Code** |
| * | 30 | Tage | [http://unitsofmeasure.org](http://terminology.hl7.org/6.5.0/CodeSystem-v3-ucum.html) | d |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "AtEmedExampleMedicationRequest01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medicationrequest"
    ]
  },
  "status" : "active",
  "intent" : "order",
  "medicationReference" : {
    "reference" : "Medication/AtApsExampleMedication01",
    "display" : "Ramipril 5mg Kapseln"
  },
  "subject" : {
    "reference" : "Patient/HL7ATCorePatientExample01",
    "display" : "Max Mustermann"
  },
  "authoredOn" : "2024-10-14T10:00:00+01:00",
  "requester" : {
    "reference" : "Practitioner/HL7ATCorePractitionerExample01",
    "display" : "Dr. Melanie Musterärztin"
  },
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
      },
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 5,
            "unit" : "mg",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          }
        }
      ]
    }
  ],
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
