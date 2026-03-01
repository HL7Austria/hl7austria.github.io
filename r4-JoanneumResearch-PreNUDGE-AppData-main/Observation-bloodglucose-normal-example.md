# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Blood Glucose - Normal Example - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Blood Glucose - Normal Example**

## Example Observation: Blood Glucose - Normal Example

Profile: [AT PreNUDGE Observation Blood Glucose (only in mg/dL)](StructureDefinition-at-prenudge-bloodglucose-observation.md)

**identifier**: `http://cdehealth.org/fhir/observation-id`/bg-2026-02-28-001

**status**: Final

**code**: Fasting glucose [Mass/volume] in Capillary blood

**subject**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

**effective**: 2026-02-28 07:30:00+0000

**value**: 95 mg/dL (Details: UCUM codemg/dL = 'mg/dL')

**method**: Automated



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "bloodglucose-normal-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-bloodglucose-observation"]
  },
  "identifier" : [{
    "system" : "http://cdehealth.org/fhir/observation-id",
    "value" : "bg-2026-02-28-001"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "1556-0",
      "display" : "Fasting glucose [Mass/volume] in Capillary blood"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-02-28T07:30:00Z",
  "valueQuantity" : {
    "value" : 95,
    "unit" : "mg/dL",
    "system" : "http://unitsofmeasure.org",
    "code" : "mg/dL"
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "8359006",
      "display" : "Automated"
    }]
  }
}

```
