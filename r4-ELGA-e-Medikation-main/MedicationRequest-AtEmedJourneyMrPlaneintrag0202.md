# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Journey 02: Medikationsplaneintrag 2 - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Journey 02: Medikationsplaneintrag 2**

## Example MedicationRequest: Beispiel Journey 02: Medikationsplaneintrag 2



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
  "contained" : [
    {
      "resourceType" : "Medication",
      "id" : "InlineAtEmedJourneyMedicationMagistral02",
      "meta" : {
        "profile" : [
          "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medication"
        ]
      },
      "text" : {
        "status" : "additional",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Freitext-Informationen zur magistralen Anwendung.</p></div>"
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
          "itemCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://termgit.elga.gv.at/CodeSystem/atc-deutsch-wido",
                "code" : "A01AC03",
                "display" : "Hydrocortison"
              }
            ]
          },
          "strength" : {
            "numerator" : {
              "value" : 1,
              "unit" : "%",
              "system" : "http://unitsofmeasure.org",
              "code" : "%"
            },
            "denominator" : {
              "value" : 100,
              "unit" : "g",
              "system" : "http://unitsofmeasure.org",
              "code" : "g"
            }
          }
        },
        {
          "itemCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://termgit.elga.gv.at/CodeSystem/atc-deutsch-wido",
                "code" : "A01AB18",
                "display" : "Clotrimazol"
              }
            ]
          },
          "strength" : {
            "numerator" : {
              "value" : 1,
              "unit" : "%",
              "system" : "http://unitsofmeasure.org",
              "code" : "%"
            },
            "denominator" : {
              "value" : 100,
              "unit" : "g",
              "system" : "http://unitsofmeasure.org",
              "code" : "g"
            }
          }
        },
        {
          "itemCodeableConcept" : {
            "text" : "Salbengrundlage"
          },
          "isActive" : false,
          "strength" : {
            "numerator" : {
              "value" : 98,
              "unit" : "g"
            },
            "denominator" : {
              "value" : 100,
              "unit" : "g"
            }
          }
        }
      ]
    }
  ],
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
      "value" : "4713_202602280800000"
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
  "medicationReference" : {
    "reference" : "InlineAtEmedJourneyMedicationMagistral02"
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
