# AtApsMedication-Beispiel - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtApsMedication-Beispiel**

## Example Medication: AtApsMedication-Beispiel

Profile: [AT APS Medication](StructureDefinition-at-aps-medication.md)

**code**: Ramipril 5mg Kapseln

**status**: Active

**manufacturer**: [Amadeus Spital](Organization-AtApsExampleOrganization01.md)

### Ingredients

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Item[x]** | **IsActive** | **Strength** |
| * | [Ramipril Wirkstoff](Medication-AtApsExampleMedication01.md) | true | 500 mg (Details: UCUM codemg = 'mg')/1 Kapsel (Details: UCUM code1 = '1') |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "AtApsExampleMedication01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medication"]
  },
  "code" : {
    "coding" : [{
      "system" : "http://www.whocc.no/atc",
      "code" : "C09AA05",
      "display" : "Ramipril"
    }],
    "text" : "Ramipril 5mg Kapseln"
  },
  "status" : "active",
  "manufacturer" : {
    "reference" : "Organization/AtApsExampleOrganization01",
    "display" : "Amadeus Spital"
  },
  "ingredient" : [{
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
  }]
}

```
