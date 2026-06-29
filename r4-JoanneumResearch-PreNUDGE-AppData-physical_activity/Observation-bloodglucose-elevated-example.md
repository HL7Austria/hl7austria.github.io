# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Blood Glucose O mapped from Q - Elevated Example - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Blood Glucose O mapped from Q - Elevated Example**

## Example Observation: Blood Glucose O mapped from Q - Elevated Example

Profile: [AT PreNUDGE Observation Blood Glucose (only in mg/dL)](StructureDefinition-at-prenudge-bloodglucose-observation.md)

**identifier**: `https://www.joanneum.at`/qr-bg-2026-02-28-002

**status**: Final

**code**: Glucose [Mass/volume] in Capillary blood by Glucometer

**subject**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

**effective**: 2026-02-28 21:45:00+0000

**issued**: 2026-02-28 22:31:00+0000

**value**: 142 mg/dL (Details: UCUM codemg/dL = 'mg/dL')

**note**: 

> 

Patient berichtet, gestern Abend spät gegessen zu haben.


**method**: Manual

**derivedFrom**: [Response to Questionnaire '->Blutzucker bei der letzten Messung' about '->James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)'](QuestionnaireResponse-bloodglucose-response-elevated-example.md)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Temporal periods relating to feeding and eating | Postprandial |

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-06-29

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "bloodglucose-elevated-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-bloodglucose-observation"]
  },
  "identifier" : [{
    "system" : "https://www.joanneum.at",
    "value" : "qr-bg-2026-02-28-002"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "41653-7",
      "display" : "Glucose [Mass/volume] in Capillary blood by Glucometer"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-02-28T21:45:00Z",
  "issued" : "2026-02-28T22:31:00Z",
  "valueQuantity" : {
    "value" : 142,
    "unit" : "mg/dL",
    "system" : "http://unitsofmeasure.org",
    "code" : "mg/dL"
  },
  "note" : [{
    "text" : "Patient berichtet, gestern Abend spät gegessen zu haben."
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "87982008",
      "display" : "Manual"
    }]
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/bloodglucose-response-elevated-example"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "309602000",
        "display" : "Temporal periods relating to feeding and eating"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "24863003",
        "display" : "Postprandial"
      }]
    }
  }]
}

```
