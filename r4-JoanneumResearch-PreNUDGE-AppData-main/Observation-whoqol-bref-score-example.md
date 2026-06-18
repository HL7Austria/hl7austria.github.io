# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\WHOQOL-BREF O Score only mapped from Q - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **WHOQOL-BREF O Score only mapped from Q**

## Example Observation: WHOQOL-BREF O Score only mapped from Q

Profile: [AT PreNUDGE Observation WHOQOL-BREF Score](StructureDefinition-at-prenudge-whoqol-bref-score-observation.md)

**identifier**: `https://www.joanneum.at`/qr-whoqol-2026-02-28-001

**status**: Final

**code**: Quality of life

**subject**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

**effective**: 2026-02-28 10:30:00+0000

**issued**: 2026-02-28 10:30:00+0000

**method**: Manual

**derivedFrom**: [Response to Questionnaire 'https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/QolQuestionnaire' about '->James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)'](QuestionnaireResponse-whoqol-bref-response-example.md)

> **component****code**: Generalized**value**: 75 score (Details: UCUM code{score} = '{score}')

> **component****code**: Physical**value**: 78.6 score (Details: UCUM code{score} = '{score}')

> **component****code**: Psychologic**value**: 70.8 score (Details: UCUM code{score} = '{score}')

> **component****code**: Relationships**value**: 66.7 score (Details: UCUM code{score} = '{score}')

> **component****code**: Environment**value**: 62.5 score (Details: UCUM code{score} = '{score}')

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-06-18

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "whoqol-bref-score-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-whoqol-bref-score-observation"]
  },
  "identifier" : [{
    "system" : "https://www.joanneum.at",
    "value" : "qr-whoqol-2026-02-28-001"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "405152002",
      "display" : "Quality of life"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-02-28T10:30:00Z",
  "issued" : "2026-02-28T10:30:00Z",
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "87982008",
      "display" : "Manual"
    }]
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/whoqol-bref-response-example"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "60132005",
        "display" : "Generalized"
      }]
    },
    "valueQuantity" : {
      "value" : 75,
      "unit" : "score",
      "system" : "http://unitsofmeasure.org",
      "code" : "{score}"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "19388002",
        "display" : "Physical"
      }]
    },
    "valueQuantity" : {
      "value" : 78.6,
      "unit" : "score",
      "system" : "http://unitsofmeasure.org",
      "code" : "{score}"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "60224009",
        "display" : "Psychologic"
      }]
    },
    "valueQuantity" : {
      "value" : 70.8,
      "unit" : "score",
      "system" : "http://unitsofmeasure.org",
      "code" : "{score}"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "272151006",
        "display" : "Relationships"
      }]
    },
    "valueQuantity" : {
      "value" : 66.7,
      "unit" : "score",
      "system" : "http://unitsofmeasure.org",
      "code" : "{score}"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "276339004",
        "display" : "Environment"
      }]
    },
    "valueQuantity" : {
      "value" : 62.5,
      "unit" : "score",
      "system" : "http://unitsofmeasure.org",
      "code" : "{score}"
    }
  }]
}

```
