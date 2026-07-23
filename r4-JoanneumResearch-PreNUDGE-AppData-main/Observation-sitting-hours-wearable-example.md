# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Sitting Hours O – Wearable Automated Example - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sitting Hours O – Wearable Automated Example**

## Example Observation: Sitting Hours O – Wearable Automated Example

Profile: [AT PreNUDGE Observation Sitting Hours](StructureDefinition-at-prenudge-sitting-hours-observation.md)

**identifier**: `https://www.joanneum.at`/obs-sh-2026-06-06-001

**status**: Final

**code**: Sedentary activity 24 hour

**subject**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

**effective**: 2026-06-06

**issued**: 2026-06-06 08:00:00+0200

**value**: 6 h (Details: UCUM codeh = 'h')

**note**: 

> 

Automatisch vom Wearable gemessen. Schlafstunden wurden von der App vor dem Eintragen abgezogen.


**method**: Automated

**device**: [Device: identifier = https://www.joanneum.at/devices#dev-wearable-001; status = active; manufacturer = PreNUDGE Demo Devices GmbH; modelNumber = PND-FT-001](Device-device-wearable-example.md)

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-07-23

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "sitting-hours-wearable-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-sitting-hours-observation"]
  },
  "identifier" : [{
    "system" : "https://www.joanneum.at",
    "value" : "obs-sh-2026-06-06-001"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "87705-0",
      "display" : "Sedentary activity 24 hour"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-06-06",
  "issued" : "2026-06-06T08:00:00+02:00",
  "valueQuantity" : {
    "value" : 6,
    "unit" : "h",
    "system" : "http://unitsofmeasure.org",
    "code" : "h"
  },
  "note" : [{
    "text" : "Automatisch vom Wearable gemessen. Schlafstunden wurden von der App vor dem Eintragen abgezogen."
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
