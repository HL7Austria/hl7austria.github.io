# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Journey 02: Medikationsplaneintrag 2 - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Journey 02: Medikationsplaneintrag 2**

## Example MedicationRequest: Beispiel Journey 02: Medikationsplaneintrag 2

Profile: [ELGA e-Med Planeintrag](StructureDefinition-at-emed-mr-planeintrag.md)

**Extension Definition for MedicationRequest.effectiveDosePeriod for Version 5.0**: 2026-01-28 --> 2026-02-28

**Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0**: 

1 täglich auftragen

**identifier**: 4712

**status**: Active

**intent**: Order

**category**: Medikationsplaneintrag

**medication**: ASPIRIN TBL 500MG

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
          "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS",
          "code" : "1"
        }
      ]
    }
  ],
  "medicationCodeableConcept" : {
    "coding" : [
      {
        "system" : "https://termgit.elga.gv.at/CodeSystem/asp-liste",
        "code" : "0004340",
        "display" : "ASPIRIN TBL 500MG"
      }
    ]
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
  ]
}

```
