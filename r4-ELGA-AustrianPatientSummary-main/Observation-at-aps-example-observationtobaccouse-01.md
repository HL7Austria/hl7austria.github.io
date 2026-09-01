# Social History-Beispiel 2 - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Social History-Beispiel 2**

## Example Observation: Social History-Beispiel 2

Profile: [AT APS Observation Tobacco Use](StructureDefinition-at-aps-observationtobaccouse.md)

**status**: Final

**code**: Raucherstatus

**subject**: [Maria Musterfrau](Patient-at-aps-example-patient-01.md)

**effective**: 2019-07-15

**performer**: [Maria Musterfrau](Patient-at-aps-example-patient-01.md)

**value**: Ehemalig rauchende Person



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "at-aps-example-observationtobaccouse-01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationtobaccouse"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "72166-2",
      "display" : "Raucherstatus"
    }]
  },
  "subject" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "effectiveDateTime" : "2019-07-15",
  "performer" : [{
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "8517006",
      "display" : "Ehemalig rauchende Person"
    }]
  }
}

```
