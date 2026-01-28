# HL7.AT.FHIR.ELGA.EMED.R4\Example Medikationsplaneintrag 02 - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Medikationsplaneintrag 02**

## Example MedicationRequest: Example Medikationsplaneintrag 02

Profile: [ELGA e-Medikation Planeintrag](StructureDefinition-at-emed-mr-planeintrag.md)

**Extension Definition for MedicationRequest.effectiveDosePeriod for Version 5.0**: 2024-10-03 --> 2024-11-02

**Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0**: 

1 Kapsel täglich morgens

**identifier**: 4711

**status**: Active

**intent**: Order

**category**: Medikationsplaneintrag

**medication**: EBETREXAT TBL 10MG

**subject**: [Max Mustermann Male, DoB: 1900-01-01 ( Social Security number: 1234010100)](Patient-AtEmedExamplePatient01.md)

**authoredOn**: 2024-10-03

**requester**: [Practitioner Melanie Musterärztin ](Practitioner-at-emed-example-practitioner-01.md)

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
  "id" : "AtEmedJourneyMrPlaneintrag02",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.effectiveDosePeriod",
      "valuePeriod" : {
        "start" : "2024-10-03",
        "end" : "2024-11-02"
      }
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
      "valueMarkdown" : "1 Kapsel täglich morgens"
    }
  ],
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
    "reference" : "Practitioner/at-emed-example-practitioner-01"
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
