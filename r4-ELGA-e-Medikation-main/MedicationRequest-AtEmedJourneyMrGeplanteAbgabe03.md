# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Journey 03: Geplante Abgabe - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Journey 03: Geplante Abgabe**

## Example MedicationRequest: Beispiel Journey 03: Geplante Abgabe

Profile: [ELGA e-Med Geplante Abgabe](StructureDefinition-at-emed-mr-geplante-abgabe.md)

**Extension Definition for MedicationRequest.effectiveDosePeriod for Version 5.0**: 2026-01-28 --> 2026-02-28

**Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0**: 

1 Kapsel täglich morgens

**identifier**: WYE82A2G8EEW-4711

**status**: Active

**intent**: Order

**category**: Geplante Abgabe

**medication**: EBETREXAT TBL 10MG

**subject**: [Max Mustermann Male, DoB: 1900-01-01 ( Social Security number: 1234010100)](Patient-AtEmedExamplePatient01.md)

**authoredOn**: 2026-01-29 08:00:00+0000

**requester**: [Practitioner Melanie Musterärztin ](Practitioner-AtEmedExamplePractitioner01.md)

**reasonCode**: Essentielle Hypertonie

**basedOn**: [Planeintrag](MedicationRequest-AtEmedJourneyMrPlaneintrag0201.md)

**groupIdentifier**: WYE82A2G8EE1

**note**: 

> 

Freitext Informationen zur geplanten Abgabe.


> **dosageInstruction****text**: 1 Kapsel täglich morgens**patientInstruction**: Nehmen Sie die Kapsel jeden Morgen mit ausreichend Flüssigkeit ein.**timing**: Once per 1 day**route**: zum Einnehmen

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 5 mg (Details: UCUM codemg = 'mg') |


> **dispenseRequest****numberOfRepeatsAllowed**: 1**quantity**: 30 Kapseln

### ExpectedSupplyDurations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Value** | **Unit** | **System** | **Code** |
| * | 30 | Tage | [http://unitsofmeasure.org](http://terminology.hl7.org/6.5.0/CodeSystem-v3-ucum.html) | d |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "AtEmedJourneyMrGeplanteAbgabe03",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-geplante-abgabe"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.effectiveDosePeriod",
      "valuePeriod" : {
        "start" : "2026-01-28",
        "end" : "2026-02-28"
      }
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
      "valueMarkdown" : "1 Kapsel täglich morgens"
    }
  ],
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
          "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS",
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
  "authoredOn" : "2026-01-29T08:00:00+00:00",
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
      "reference" : "MedicationRequest/AtEmedJourneyMrPlaneintrag0201",
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
            "system" : "https://termgit.elga.gv.at/CodeSystem-medikationartanwendung.html",
            "code" : "100000073619",
            "display" : "zum Einnehmen"
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
    "numberOfRepeatsAllowed" : 1,
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
