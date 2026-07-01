# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Step Count O - Sedentary Example - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Step Count O - Sedentary Example**

## Example Observation: Step Count O - Sedentary Example

Profile: [AT PreNUDGE Observation Step Count](StructureDefinition-at-prenudge-stepcount-observation.md)

**identifier**: `https://www.joanneum.at`/obs-sc-2026-03-03-001

**status**: Final

**code**: Number of steps in 24 hour Measured

**subject**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

**effective**: 2026-03-03

**issued**: 2026-03-28 20:00:00+0000

**value**: 1204 {steps}/d (Details: UCUM code{steps}/d = '{steps}/d')

**note**: 

> 

Home-Office Tag, kaum Bewegung.


**method**: Automated

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-07-01

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "stepcount-sedentary-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-stepcount-observation"]
  },
  "identifier" : [{
    "system" : "https://www.joanneum.at",
    "value" : "obs-sc-2026-03-03-001"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "41950-7",
      "display" : "Number of steps in 24 hour Measured"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-03-03",
  "issued" : "2026-03-28T20:00:00Z",
  "valueQuantity" : {
    "value" : 1204,
    "unit" : "{steps}/d",
    "system" : "http://unitsofmeasure.org",
    "code" : "{steps}/d"
  },
  "note" : [{
    "text" : "Home-Office Tag, kaum Bewegung."
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "8359006",
      "display" : "Automated"
    }]
  }
}

```
