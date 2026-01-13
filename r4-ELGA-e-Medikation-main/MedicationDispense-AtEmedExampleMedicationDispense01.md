# HL7.AT.FHIR.ELGA.EMED.R4\AtEmedMedicationDispense-Beispiel - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtEmedMedicationDispense-Beispiel**

## Example MedicationDispense: AtEmedMedicationDispense-Beispiel

Profile: [ELGA e-Medikation MedicationDispense](StructureDefinition-at-emed-medicationdispense.md)

**status**: Completed

**medication**: [Ramipril 5mg Kapseln](Medication/AtApsExampleMedication01)

**subject**: [Max Mustermann](http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/2.0.0/Patient-HL7ATCorePatientExample01.html)

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Amadeus Spital](Organization/AtApsExampleOrganization01) |

**authorizingPrescription**: [Verordnung Ramipril](MedicationRequest/AtApsExampleMedicationRequest01)

**quantity**: 30 Kapseln

**daysSupply**: 30 Tage(Details: UCUM coded = 'd')

**whenHandedOver**: 2024-10-15 09:30:00+0100

### DosageInstructions

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Text** | **Timing** | **Route** |
| * | 1 Kapsel täglich morgens | Once per 1 day | Oral use |



## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "AtEmedExampleMedicationDispense01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medicationdispense"
    ]
  },
  "status" : "completed",
  "medicationReference" : {
    "reference" : "Medication/AtApsExampleMedication01",
    "display" : "Ramipril 5mg Kapseln"
  },
  "subject" : {
    "reference" : "Patient/HL7ATCorePatientExample01",
    "display" : "Max Mustermann"
  },
  "performer" : [
    {
      "actor" : {
        "reference" : "Organization/AtApsExampleOrganization01",
        "display" : "Amadeus Spital"
      }
    }
  ],
  "authorizingPrescription" : [
    {
      "reference" : "MedicationRequest/AtApsExampleMedicationRequest01",
      "display" : "Verordnung Ramipril"
    }
  ],
  "quantity" : {
    "value" : 30,
    "unit" : "Kapseln"
  },
  "daysSupply" : {
    "value" : 30,
    "unit" : "Tage",
    "system" : "http://unitsofmeasure.org",
    "code" : "d"
  },
  "whenHandedOver" : "2024-10-15T09:30:00+01:00",
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
      }
    }
  ]
}

```
