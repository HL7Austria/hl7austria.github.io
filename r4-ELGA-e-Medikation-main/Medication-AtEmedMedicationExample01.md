# HL7.AT.FHIR.ELGA.EMED.R4\AtEmedMedication-Beispiel - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtEmedMedication-Beispiel**

## Example Medication: AtEmedMedication-Beispiel

Profile: [ELGA e-Medikation Medication](StructureDefinition-at-emed-medication.md)

**code**: Ramipril 5mg Kapseln

**status**: Active

**manufacturer**: [Amadeus Spital](Organization/AtApsExampleOrganization01)

### Ingredients

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Item[x]** | **IsActive** | **Strength** |
| * | [Ramipril Wirkstoff](Medication/AtApsExampleMedication01) | true | 500 mg(Details: UCUM codemg = 'mg')/1 Kapsel(Details: UCUM code1 = '1') |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "AtEmedMedicationExample01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medication"
    ]
  },
  "code" : {
    "coding" : [
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "C09AA05",
        "display" : "Ramipril"
      }
    ],
    "text" : "Ramipril 5mg Kapseln"
  },
  "status" : "active",
  "manufacturer" : {
    "reference" : "Organization/AtApsExampleOrganization01",
    "display" : "Amadeus Spital"
  },
  "ingredient" : [
    {
      "itemReference" : {
        "reference" : "Medication/AtApsExampleMedication01",
        "display" : "Ramipril Wirkstoff"
      },
      "isActive" : true,
      "strength" : {
        "numerator" : {
          "value" : 500,
          "unit" : "mg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "denominator" : {
          "value" : 1,
          "unit" : "Kapsel",
          "system" : "http://unitsofmeasure.org",
          "code" : "1"
        }
      }
    }
  ]
}

```
