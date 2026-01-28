# AtApsMedication-Beispiel - Austrian Patient Summary (R4) v0.2.0



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "AtApsExampleMedication01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medication"
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
