# AtApsObservationPregnancyOutcome-Beispiel - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtApsObservationPregnancyOutcome-Beispiel**

## Example Observation: AtApsObservationPregnancyOutcome-Beispiel

Lebendgeburt, 39. SSW, 3450 g, Sectio



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "AtApsExampleObservationPregnancyOutcome01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationpregnancyoutcome"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "11636-8"
    }],
    "text" : "Schwangerschaftsergebnis"
  },
  "subject" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "effectiveDateTime" : "2025-12-15T15:30:00+01:00",
  "performer" : [{
    "reference" : "Practitioner/at-aps-example-practitioner-01",
    "display" : "Hanna Hausärztin"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "281050002",
      "display" : "Lebendgeburt"
    }],
    "text" : "Lebendgeburt"
  }
}

```
