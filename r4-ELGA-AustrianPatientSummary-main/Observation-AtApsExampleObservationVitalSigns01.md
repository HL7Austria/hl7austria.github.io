# AtApsObservationVitalSigns-Beispiel - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtApsObservationVitalSigns-Beispiel**

## Example Observation: AtApsObservationVitalSigns-Beispiel

Profile: [AT APS Observation Vital Signs](StructureDefinition-at-aps-observationvitalsigns.md)

**status**: Final

**category**: Vital Signs

**code**: Vitalzeichen

**subject**: [Maria Musterfrau](Patient-at-aps-example-patient-01.md)

**effective**: 2025-10-17 08:15:00+0200

**performer**: [Hanna Hausärztin](Practitioner-at-aps-example-practitioner-01.md)

**value**: 72 beats/min (Details: UCUM code/min = '/min')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "AtApsExampleObservationVitalSigns01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationvitalsigns"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "8867-4",
      "display" : "Heart rate"
    }],
    "text" : "Vitalzeichen"
  },
  "subject" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "effectiveDateTime" : "2025-10-17T08:15:00+02:00",
  "performer" : [{
    "reference" : "Practitioner/at-aps-example-practitioner-01",
    "display" : "Hanna Hausärztin"
  }],
  "valueQuantity" : {
    "value" : 72,
    "unit" : "beats/min",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  }
}

```
