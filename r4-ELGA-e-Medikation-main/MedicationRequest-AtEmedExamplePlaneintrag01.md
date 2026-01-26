# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Medikationsplaneintrag 1 - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Medikationsplaneintrag 1**

## Example MedicationRequest: Beispiel Medikationsplaneintrag 1

Profile: [ELGA e-Medikation Planeintrag](StructureDefinition-at-emed-medicationrequest-planeintrag.md)

**identifier**: 4711

**status**: Active

**intent**: Order

**category**: Medikationsplaneintrag

**medication**: EBETREXAT TBL 10MG

**subject**: [Max Mustermann Male, DoB: 1900-01-01 ( Social Security number: 1234010100)](Patient-AtEmedExamplePatient01.md)

**authoredOn**: 2024-10-03

**requester**: [Practitioner/AtEmedExamplePractitioner01](Practitioner/AtEmedExamplePractitioner01)

**reasonCode**: Essentielle Hypertonie

**basedOn**: [Planeintrag](MedicationRequest/AtEmedExampleMedicationRequestPlaneintrag01)

**note**: 

> 

Freitext Informationen zum Medikationsplaneintrag.


> **dosageInstruction****text**: 1 Kapsel täglich morgens**patientInstruction**: Nehmen Sie die Kapsel jeden Morgen mit ausreichend Flüssigkeit ein.**timing**: Once per 1 day**route**: Oraler Verabreichungsweg

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
| * | 30 | Tage | [http://unitsofmeasure.org](http://terminology.hl7.org/6.5.0/CodeSystem-v3-ucum.html) | d |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "AtEmedExamplePlaneintrag01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medicationrequest-planeintrag"
    ]
  },
  "identifier" : [
    {
      "value" : "4711"
    }
  ],
  "status" : "active",
  "intent" : "order",
  "category" : [
    {
      "coding" : [
        {
          "code" : "1",
          "display" : "Medikationsplaneintrag"
        }
      ]
    }
  ],
  "medicationCodeableConcept" : {
    "coding" : [
      {
        "system" : "https://termgit.elga.gv.at/CodeSystem/asp-liste",
        "code" : "2443061",
        "display" : "EBETREXAT TBL 10MG"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/AtEmedExamplePatient01"
  },
  "authoredOn" : "2024-10-03",
  "requester" : {
    "reference" : "Practitioner/AtEmedExamplePractitioner01"
  },
  "reasonCode" : [
    {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "59621000",
          "display" : "Essentielle Hypertonie"
        }
      ]
    }
  ],
  "basedOn" : [
    {
      "reference" : "MedicationRequest/AtEmedExampleMedicationRequestPlaneintrag01",
      "display" : "Planeintrag"
    }
  ],
  "note" : [
    {
      "text" : "Freitext Informationen zum Medikationsplaneintrag."
    }
  ],
  "dosageInstruction" : [
    {
      "text" : "1 Kapsel täglich morgens",
      "patientInstruction" : "Nehmen Sie die Kapsel jeden Morgen mit ausreichend Flüssigkeit ein.",
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
            "display" : "Oraler Verabreichungsweg"
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
