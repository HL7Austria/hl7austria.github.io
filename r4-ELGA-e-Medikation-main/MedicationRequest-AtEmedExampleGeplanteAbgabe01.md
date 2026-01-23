# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Geplante Abgabe 1 - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Geplante Abgabe 1**

## Example MedicationRequest: Beispiel Geplante Abgabe 1

Profile: [ELGA e-Medikation Geplante Abgabe](StructureDefinition-at-emed-medicationrequest-geplanteAbgabe.md)

**identifier**: WYE82A2G8EEW-4711

**status**: Active

**intent**: Order

**category**: Geplante Abgabe

**medication**: EBETREXAT TBL 10MG

**subject**: [Max Mustermann Male, DoB: 1900-01-01 ( Social Security number: 1234010100)](Patient-AtEmedExamplePatient01.md)

**authoredOn**: 2024-10-03

**requester**: [Practitioner/AtEmedExamplePractitioner01](Practitioner/AtEmedExamplePractitioner01)

**reasonCode**: Hypertonie

**basedOn**: [Planeintrag](Medication/AtEmedExampleMedicationRequestPlaneintrag01)

**groupIdentifier**: WYE82A2G8EE1

**note**: 

> 

Freitext Informationen zur geplanten Abgabe.


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
| * | 30 | Tage | [http://unitsofmeasure.org](http://terminology.hl7.org/6.5.0/CodeSystem-v3-ucum.html) | d |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "AtEmedExampleGeplanteAbgabe01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medicationrequest-geplanteAbgabe"
    ]
  },
  "identifier" : [
    {
      "value" : "WYE82A2G8EEW-4711"
    }
  ],
  "status" : "active",
  "intent" : "order",
  "category" : [
    {
      "coding" : [
        {
          "code" : "2",
          "display" : "Geplante Abgabe"
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
          "display" : "Hypertonie"
        }
      ],
      "text" : "Hypertonie"
    }
  ],
  "basedOn" : [
    {
      "reference" : "Medication/AtEmedExampleMedicationRequestPlaneintrag01",
      "display" : "Planeintrag"
    }
  ],
  "groupIdentifier" : {
    "value" : "WYE82A2G8EE1"
  },
  "note" : [
    {
      "text" : "Freitext Informationen zur geplanten Abgabe."
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
