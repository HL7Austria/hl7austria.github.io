# AtApsCarePlan-Beispiel - Austrian Patient Summary (R4) v1.0.0



## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "AtApsExampleCareplan01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-careplan"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/workflow-shallComplyWith",
      "valueUri" : "http://example.org/protocol-for-obesity"
    }
  ],
  "identifier" : [
    {
      "value" : "12345"
    }
  ],
  "basedOn" : [
    {
      "display" : "Behandlung von Typ-2-Diabetes"
    }
  ],
  "replaces" : [
    {
      "display" : "Plan der Klinik"
    }
  ],
  "partOf" : [
    {
      "display" : "Allgemeiner Wellnessplan"
    }
  ],
  "status" : "active",
  "intent" : "plan",
  "category" : [
    {
      "text" : "Gewichtsmanagementplan"
    }
  ],
  "description" : "Übergewicht und Gewichtsverlust managen",
  "subject" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "period" : {
    "end" : "2017-06-01"
  },
  "created" : "2016-01-01",
  "author" : {
    "reference" : "Practitioner/at-aps-example-practitioner-01",
    "display" : "Hanna Hausärztin"
  },
  "addresses" : [
    {
      "reference" : "Condition/AtApsExampleCondition01"
    }
  ],
  "activity" : [
    {
      "outcomeCodeableConcept" : [
        {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "416528001",
              "display" : "Intentional weight loss"
            }
          ]
        }
      ]
    }
  ]
}

```
