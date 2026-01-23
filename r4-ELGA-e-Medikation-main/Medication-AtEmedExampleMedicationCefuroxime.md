# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Medication Cefuroxime - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Medication Cefuroxime**

## Example Medication: Beispiel Medication Cefuroxime

Profiles: [ELGA e-Medikation Medication](StructureDefinition-at-emed-medication.md), [Medication: MPD](http://hl7.eu/fhir/mpd/0.1.0-ballot/StructureDefinition-Medication-eu-mpd.html)

**Medication - Classification**: cefuroxime

**form**: Powder for solution for injection or infusion

### Ingredients

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Item[x]** | **IsActive** | **Strength** |
| * | Cefuroxime | true | 1500 milligram (Details: UCUM codemg = 'mg')/1 Vial (Details: standardterms.edqm.eu code15060000 = 'Vial') |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "AtEmedExampleMedicationCefuroxime",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medication",
      "http://hl7.eu/fhir/mpd/StructureDefinition/Medication-eu-mpd"
    ]
  },
  "extension" : [
    {
      "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-classification",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://www.whocc.no/atc",
            "code" : "J01DC02",
            "display" : "cefuroxime"
          }
        ]
      }
    }
  ],
  "form" : {
    "coding" : [
      {
        "system" : "http://standardterms.edqm.eu",
        "code" : "50053000",
        "display" : "Powder for solution for injection or infusion"
      }
    ]
  },
  "ingredient" : [
    {
      "itemCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "372833007",
            "display" : "Cefuroxime"
          }
        ]
      },
      "isActive" : true,
      "strength" : {
        "numerator" : {
          "value" : 1500,
          "unit" : "milligram",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "denominator" : {
          "value" : 1,
          "unit" : "Vial",
          "system" : "http://standardterms.edqm.eu",
          "code" : "15060000"
        }
      }
    }
  ]
}

```
