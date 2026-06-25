# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Muscle Strengthening Sessions O - Wearable Automated Example - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Muscle Strengthening Sessions O - Wearable Automated Example**

## Example Observation: Muscle Strengthening Sessions O - Wearable Automated Example

Profile: [AT PreNUDGE Observation Muscle Strengthening Sessions](StructureDefinition-at-prenudge-muscle-strengthening-observation.md)

**identifier**: `https://www.joanneum.at`/obs-ms-2026-06-01-002

**status**: Final

**code**: Frequency of muscle-strengthening physical activity

**subject**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

**effective**: 2026-06-01 10:00:00+0200

**issued**: 2026-06-01 10:00:00+0200

**value**: 5 {sessions}/wk (Details: UCUM code{sessions}/wk = '{sessions}/wk')

**note**: 

> 

Automatisch vom Wearable erkannte Krafttrainings-Einheiten.


**method**: Automated

**device**: [Device: identifier = https://www.joanneum.at/devices#dev-wearable-001; status = active; manufacturer = PreNUDGE Demo Devices GmbH; modelNumber = PND-FT-001](Device-device-wearable-example.md)

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-06-25

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "muscle-strengthening-wearable-derived-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-muscle-strengthening-observation"]
  },
  "identifier" : [{
    "system" : "https://www.joanneum.at",
    "value" : "obs-ms-2026-06-01-002"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "82291-6",
      "display" : "Frequency of muscle-strengthening physical activity"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-06-01T10:00:00+02:00",
  "issued" : "2026-06-01T10:00:00+02:00",
  "valueQuantity" : {
    "value" : 5,
    "unit" : "{sessions}/wk",
    "system" : "http://unitsofmeasure.org",
    "code" : "{sessions}/wk"
  },
  "note" : [{
    "text" : "Automatisch vom Wearable erkannte Krafttrainings-Einheiten."
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "8359006",
      "display" : "Automated"
    }]
  },
  "device" : {
    "reference" : "Device/device-wearable-example"
  }
}

```
