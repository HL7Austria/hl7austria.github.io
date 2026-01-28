# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Medication Magistral 01 - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Medication Magistral 01**

## Example Medication: Beispiel Medication Magistral 01

Profile: [ELGA e-Medikation Medication](StructureDefinition-at-emed-medication.md)

**status**: Active

**manufacturer**: [Amadeus Apotheke](Organization-AtEmedExampleOrganizationApo01.md)

**form**: Salbe

> **ingredient****item**: [Hydrocortison](Substance-AtEmedJourneySubstanceHydrocortison.md)**strength**: 1 %/100 g

> **ingredient****item**: [Clotrimazol](Substance-AtEmedJourneySubstanceClotrimazol.md)**strength**: 1 %/100 g

### Batches

| | | |
| :--- | :--- | :--- |
| - | **LotNumber** | **ExpirationDate** |
| * | MAG-2026-001 | 2027-01-01 |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "ExampleMedicationMagistral01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medication"
    ]
  },
  "status" : "active",
  "manufacturer" : {
    "reference" : "Organization/AtEmedExampleOrganizationApo01",
    "display" : "Amadeus Apotheke"
  },
  "form" : {
    "coding" : [
      {
        "system" : "https://termgit.elga.gv.at/CodeSystem/medikationdarreichungsform",
        "code" : "100000073713",
        "display" : "Salbe"
      }
    ]
  },
  "ingredient" : [
    {
      "itemReference" : {
        "reference" : "Substance/AtEmedJourneySubstanceHydrocortison",
        "display" : "Hydrocortison"
      },
      "strength" : {
        "numerator" : {
          "value" : 1,
          "unit" : "%"
        },
        "denominator" : {
          "value" : 100,
          "unit" : "g"
        }
      }
    },
    {
      "itemReference" : {
        "reference" : "Substance/AtEmedJourneySubstanceClotrimazol",
        "display" : "Clotrimazol"
      },
      "strength" : {
        "numerator" : {
          "value" : 1,
          "unit" : "%"
        },
        "denominator" : {
          "value" : 100,
          "unit" : "g"
        }
      }
    }
  ],
  "batch" : {
    "lotNumber" : "MAG-2026-001",
    "expirationDate" : "2027-01-01"
  }
}

```
