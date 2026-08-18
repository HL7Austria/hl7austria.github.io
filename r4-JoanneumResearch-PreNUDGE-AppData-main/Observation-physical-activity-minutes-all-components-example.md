# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Physical Activity Minutes O - (e) All Three Components (Automated, MET-Cal) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Physical Activity Minutes O - (e) All Three Components (Automated, MET-Cal)**

## Example Observation: Physical Activity Minutes O - (e) All Three Components (Automated, MET-Cal)

Profile: [AT PreNUDGE Observation Physical Activity Minutes](StructureDefinition-at-prenudge-physical-activity-minutes-observation.md)

**identifier**: `https://www.joanneum.at`/obs-pa-e-2026-03-24-001

**status**: Final

**code**: Duration of physical activity

**subject**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

**effective**: 2026-03-24 08:00:00+0100

**issued**: 2026-03-24 08:00:00+0100

**method**: Automated

**device**: [Device: identifier = https://www.joanneum.at/devices#dev-wearable-001; status = active; manufacturer = PreNUDGE Demo Devices GmbH; modelNumber = PND-FT-001](Device-device-wearable-example.md)

> **component****code**: Moderate physical activity [IPAQ]**value**: 120 min/wk (Details: UCUM codemin/wk = 'min/wk')

> **component****code**: Vigorous physical activity [IPAQ]**value**: 60 min/wk (Details: UCUM codemin/wk = 'min/wk')

> **component****code**: Duration of physical activity**value**: 240 min/wk (Details: UCUM codemin/wk = 'min/wk')

> **component****code**: Technique**value**: MET Value Calculated

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-08-18

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "physical-activity-minutes-all-components-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-physical-activity-minutes-observation"]
  },
  "identifier" : [{
    "system" : "https://www.joanneum.at",
    "value" : "obs-pa-e-2026-03-24-001"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "101691-4",
      "display" : "Duration of physical activity"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-03-24T08:00:00+01:00",
  "issued" : "2026-03-24T08:00:00+01:00",
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "8359006",
      "display" : "Automated"
    }]
  },
  "device" : {
    "reference" : "Device/device-wearable-example"
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "77592-4",
        "display" : "Moderate physical activity [IPAQ]"
      }]
    },
    "valueQuantity" : {
      "value" : 120,
      "unit" : "min/wk",
      "system" : "http://unitsofmeasure.org",
      "code" : "min/wk"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "77593-2",
        "display" : "Vigorous physical activity [IPAQ]"
      }]
    },
    "valueQuantity" : {
      "value" : 60,
      "unit" : "min/wk",
      "system" : "http://unitsofmeasure.org",
      "code" : "min/wk"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "101691-4",
        "display" : "Duration of physical activity"
      }]
    },
    "valueQuantity" : {
      "value" : 240,
      "unit" : "min/wk",
      "system" : "http://unitsofmeasure.org",
      "code" : "min/wk"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "246501002",
        "display" : "Technique"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-physical-activity-classification-method-cs",
        "code" : "met-cal",
        "display" : "MET Value Calculated"
      }]
    }
  }]
}

```
