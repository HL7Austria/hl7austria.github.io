# AtApsObservationResultsRadiology-Beispiel - Austrian Patient Summary (R4) v0.2.0



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "AtApsExampleObservationResultsRadiology01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationresultsradiology"
    ]
  },
  "partOf" : [
    {
      "reference" : "ImagingStudy/AtApsExampleImagingStudy01"
    }
  ],
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "imaging",
          "display" : "Imaging"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "24627-2",
        "display" : "CT Chest"
      }
    ],
    "text" : "CT Thorax"
  },
  "subject" : {
    "reference" : "Patient/HL7ATCorePatientExample01",
    "display" : "Max Mustermann"
  },
  "effectiveDateTime" : "2025-08-15T09:30:00+02:00",
  "performer" : [
    {
      "reference" : "Practitioner/HL7ATCorePractitionerExample01",
      "display" : "Dr. Melanie Musterärztin"
    }
  ],
  "valueString" : "Keine pathologischen Befunde im Thoraxbereich. Lunge belüftet, keine Infiltrate.",
  "interpretation" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "N",
          "display" : "Normal"
        }
      ],
      "text" : "Normalbefund"
    }
  ],
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "18748-4",
            "display" : "Lung opacity"
          }
        ],
        "text" : "Lungenbefund"
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "260373001",
            "display" : "No abnormality detected"
          }
        ],
        "text" : "Keine Auffälligkeiten"
      },
      "interpretation" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
              "code" : "N",
              "display" : "Normal"
            }
          ],
          "text" : "Normalbefund"
        }
      ]
    }
  ]
}

```
