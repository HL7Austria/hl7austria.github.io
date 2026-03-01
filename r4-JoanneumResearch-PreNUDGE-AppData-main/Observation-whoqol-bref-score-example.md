# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\WHOQOL-BREF Score - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **WHOQOL-BREF Score**

## Example Observation: WHOQOL-BREF Score

Profile: [ AT PreNUDGE Observation WHOQOL-BREF Score](StructureDefinition-at-prenudge-whoqol-bref-score-observation.md)

**identifier**: `http://cdehealth.org/fhir/observation-id`/whoqol-bref-2026-02-28-001

**status**: Final

**code**: Quality of life satisfaction (observable entity)

**subject**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

**effective**: 2026-02-28

**method**: Automated

**derivedFrom**: [Response to Questionnaire '->Lebensstil Selbsteinschätzung' about '->James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)'](QuestionnaireResponse-whoqol-bref-response-example.md)

> **component****code**: Generalized**value**: 75 score (Details: UCUM code{score} = '{score}')

> **component****code**: Physical**value**: 78.6 score (Details: UCUM code{score} = '{score}')

> **component****code**: Psychologic**value**: 70.8 score (Details: UCUM code{score} = '{score}')

> **component****code**: Relationships**value**: 66.7 score (Details: UCUM code{score} = '{score}')

> **component****code**: Environment**value**: 62.5 score (Details: UCUM code{score} = '{score}')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "whoqol-bref-score-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-whoqol-bref-score-observation"]
  },
  "identifier" : [{
    "system" : "http://cdehealth.org/fhir/observation-id",
    "value" : "whoqol-bref-2026-02-28-001"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "405152002"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-02-28",
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "8359006",
      "display" : "Automated"
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
