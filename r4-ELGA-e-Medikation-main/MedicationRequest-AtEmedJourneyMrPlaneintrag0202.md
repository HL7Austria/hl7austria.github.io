# HL7.AT.FHIR.ELGA.EMED.R4\Example Medikationsplaneintrag 02 02 - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Medikationsplaneintrag 02 02**

## Example MedicationRequest: Example Medikationsplaneintrag 02 02

Profile: [ELGA e-Medikation Planeintrag](StructureDefinition-at-emed-mr-planeintrag.md)

**Extension Definition for MedicationRequest.effectiveDosePeriod for Version 5.0**: 2026-01-28 --> 2026-02-28

**Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0**: 

1 täglich auftragen

**identifier**: 4712

**status**: Active

**intent**: Order

**category**: Medikationsplaneintrag

**medication**: [Magistrale Zubereitung](Medication-ExampleMedicationMagistral01.md)

**subject**: [Max Mustermann Male, DoB: 1900-01-01 ( Social Security number: 1234010100)](Patient-AtEmedExamplePatient01.md)

**authoredOn**: 2026-01-28 08:00:00+0000

**requester**: [Practitioner Melanie Musterärztin ](Practitioner-AtEmedExamplePractitioner01.md)

**note**: 

> 

Freitext Informationen zum Medikationsplaneintrag.


### DosageInstructions

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Text** | **PatientInstruction** | **Timing** | **Route** |
| * | 1 täglich auftragen | Abends sehr dünn auf die betroffene Stelle auftragen. | Once per 1 day | Anwendung auf der Haut |

> **dispenseRequest****validityPeriod**: ?? --> 2026-02-03**numberOfRepeatsAllowed**: 1

### ExpectedSupplyDurations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Value** | **Unit** | **System** | **Code** |
| * | 30 | Tage | [http://unitsofmeasure.org](http://terminology.hl7.org/6.5.0/CodeSystem-v3-ucum.html) | d |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "AtEmedJourneyMrPlaneintrag0202",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag"
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
      "valueMarkdown" : "1 täglich auftragen"
    }
  ],
  "identifier" : [
    {
      "value" : "4712"
    }
  ],
  "status" : "active",
  "intent" : "order",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://hl7.org/fhir/medicationrequest-category",
          "code" : "1",
          "display" : "Medikationsplaneintrag"
        }
      ]
    }
  ],
  "medicationReference" : {
    "reference" : "Medication/ExampleMedicationMagistral01",
    "display" : "Magistrale Zubereitung"
  },
  "subject" : {
    "reference" : "Patient/AtEmedExamplePatient01"
  },
  "authoredOn" : "2026-01-28T08:00:00+00:00",
  "requester" : {
    "reference" : "Practitioner/AtEmedExamplePractitioner01"
  },
  "note" : [
    {
      "text" : "Freitext Informationen zum Medikationsplaneintrag."
    }
  ],
  "dosageInstruction" : [
    {
      "text" : "1 täglich auftragen",
      "patientInstruction" : "Abends sehr dünn auf die betroffene Stelle auftragen.",
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
            "code" : "100000073566",
            "display" : "Anwendung auf der Haut"
          }
        ]
      }
    }
  ],
  "dispenseRequest" : {
    "validityPeriod" : {
      "end" : "2026-02-03"
    },
    "numberOfRepeatsAllowed" : 1,
    "expectedSupplyDuration" : {
      "value" : 30,
      "unit" : "Tage",
      "system" : "http://unitsofmeasure.org",
      "code" : "d"
    }
  }
}

```
