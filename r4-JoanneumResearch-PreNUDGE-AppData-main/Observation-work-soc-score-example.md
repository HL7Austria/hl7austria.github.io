# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Work-SoC Score O mapped from Q - Example - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Work-SoC Score O mapped from Q - Example**

## Example Observation: Work-SoC Score O mapped from Q - Example

Profile: [AT PreNUDGE Observation Work-SoC Category Score](StructureDefinition-at-prenudge-work-soc-score-observation.md)

**identifier**: `https://www.joanneum.at`/obs-work-soc-2026-03-20-001

**status**: Final

**code**: Work-SoC category score

**subject**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

**effective**: 2026-03-20 09:00:00+0000

**issued**: 2026-03-20 09:10:00+0000

**method**: Manual

**derivedFrom**: [Response to Questionnaire '->Arbeitsbezogenes Kohärenzgefühl (Work-SoC)' about '->James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)'](QuestionnaireResponse-work-soc-response-example.md)

> **component****code**: Work-SoC comprehensibility score**value**: 2.75 score (Details: UCUM code{score} = '{score}')

> **component****code**: Work-SoC manageability score**value**: 3.5 score (Details: UCUM code{score} = '{score}')

> **component****code**: Work-SoC meaningfulness score**value**: 5 score (Details: UCUM code{score} = '{score}')

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
  "id" : "work-soc-score-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-work-soc-score-observation"]
  },
  "identifier" : [{
    "system" : "https://www.joanneum.at",
    "value" : "obs-work-soc-2026-03-20-001"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability",
      "code" : "work-soc-category-score",
      "display" : "Work-SoC category score"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-03-20T09:00:00Z",
  "issued" : "2026-03-20T09:10:00Z",
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "87982008",
      "display" : "Manual"
    }]
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/work-soc-response-example"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability",
        "code" : "work-soc-comprehensibility",
        "display" : "Work-SoC comprehensibility score"
      }]
    },
    "valueQuantity" : {
      "value" : 2.75,
      "unit" : "score",
      "system" : "http://unitsofmeasure.org",
      "code" : "{score}"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability",
        "code" : "work-soc-manageability",
        "display" : "Work-SoC manageability score"
      }]
    },
    "valueQuantity" : {
      "value" : 3.5,
      "unit" : "score",
      "system" : "http://unitsofmeasure.org",
      "code" : "{score}"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability",
        "code" : "work-soc-meaningfulness",
        "display" : "Work-SoC meaningfulness score"
      }]
    },
    "valueQuantity" : {
      "value" : 5,
      "unit" : "score",
      "system" : "http://unitsofmeasure.org",
      "code" : "{score}"
    }
  }]
}

```
