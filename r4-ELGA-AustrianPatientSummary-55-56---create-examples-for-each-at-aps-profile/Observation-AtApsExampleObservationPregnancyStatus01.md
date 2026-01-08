# AtApsObservationPregnancyStatus-Beispiel - Austrian Patient Summary (R4) v0.2.0



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "AtApsExampleObservationPregnancyStatus01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationpregnancystatus"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "82810-3",
        "display" : "Pregnancy status"
      }
    ],
    "text" : "Schwangerschaftsstatus"
  },
  "subject" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Mustermann"
  },
  "effectiveDateTime" : "2025-05-01T10:00:00+01:00",
  "performer" : [
    {
      "reference" : "Practitioner/at-aps-example-practitioner-01",
      "display" : "Hanna Hausärztin"
    }
  ],
  "valueCodeableConcept" : {
    "coding" : [
      {
        "system" : "https://termgit.elga.gv.at/ValueSet/elga-pregnancystatus",
        "code" : "pregnant",
        "display" : "Pregnant"
      }
    ],
    "text" : "Schwanger"
  },
  "hasMember" : [
    {
      "reference" : "Observation/AtApsExampleObservationPregnancyEdd01",
      "display" : "Expected Delivery Date"
    }
  ]
}

```
