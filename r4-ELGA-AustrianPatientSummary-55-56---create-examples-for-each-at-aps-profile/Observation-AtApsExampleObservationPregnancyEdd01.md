# AtApsObservationPregnancyEdd-Beispiel - Austrian Patient Summary (R4) v0.2.0



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "AtApsExampleObservationPregnancyEdd01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationpregnancyedd"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "11778-8",
        "display" : "Delivery date Estimated"
      }
    ],
    "text" : "Voraussichtlicher Entbindungstermin"
  },
  "subject" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "effectiveDateTime" : "2025-05-10",
  "performer" : [
    {
      "reference" : "Practitioner/at-aps-example-practitioner-01",
      "display" : "Hanna Hausärztin"
    }
  ],
  "valueDateTime" : "2025-12-15"
}

```
