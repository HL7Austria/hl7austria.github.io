# Social History-Beispiel 1 - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Social History-Beispiel 1**

## Example Observation: Social History-Beispiel 1

Profile: [AT APS Observation Alcohol Use](StructureDefinition-at-aps-observationalcoholuse.md)

**status**: Final

**code**: Alkoholische Getränke pro Tag

**subject**: [Maria Musterfrau](Patient-at-aps-example-patient-01.md)

**effective**: 2024-09-20

**performer**: [Maria Musterfrau](Patient-at-aps-example-patient-01.md)

**value**: 2 Weingläser pro Tag (Details: UCUM code/d = '/d')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "at-aps-example-observationalcoholuse-01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationalcoholuse"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "74013-4",
      "display" : "Alkoholische Getränke pro Tag"
    }]
  },
  "subject" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "effectiveDateTime" : "2024-09-20",
  "performer" : [{
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  }],
  "valueQuantity" : {
    "value" : 2,
    "unit" : "Weingläser pro Tag",
    "system" : "http://unitsofmeasure.org",
    "code" : "/d"
  }
}

```
