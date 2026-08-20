# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Sleep Duration O mapped from Q - Normal Example - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sleep Duration O mapped from Q - Normal Example**

## Example Observation: Sleep Duration O mapped from Q - Normal Example

Profile: [AT PreNUDGE Observation Sleep Duration](StructureDefinition-at-prenudge-sleep-duration-observation.md)

**identifier**: `https://www.joanneum.at`/qr-sl-2026-03-10-001

**status**: Final

**code**: Sleep duration

**subject**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

**effective**: 2026-03-09

**issued**: 2026-03-10 08:00:00+0000

**value**: 7 h (Details: UCUM codeh = 'h')

**note**: 

> 

Selbstberichtet.


**method**: Manual

**derivedFrom**: [Response to Questionnaire '->Durchschnittliche Schlafdauer pro Nacht' about '->James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)'](QuestionnaireResponse-sleep-duration-response-normal-example.md)

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-08-20

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "sleep-duration-normal-manual-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-sleep-duration-observation"]
  },
  "identifier" : [{
    "system" : "https://www.joanneum.at",
    "value" : "qr-sl-2026-03-10-001"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "93832-4",
      "display" : "Sleep duration"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-03-09",
  "issued" : "2026-03-10T08:00:00Z",
  "valueQuantity" : {
    "value" : 7,
    "unit" : "h",
    "system" : "http://unitsofmeasure.org",
    "code" : "h"
  },
  "note" : [{
    "text" : "Selbstberichtet."
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "87982008",
      "display" : "Manual"
    }]
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/sleep-duration-response-normal-example"
  }]
}

```
