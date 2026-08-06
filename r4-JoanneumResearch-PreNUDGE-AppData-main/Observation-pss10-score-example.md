# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\PSS-10 Score O mapped from Q - Example - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS-10 Score O mapped from Q - Example**

## Example Observation: PSS-10 Score O mapped from Q - Example

Profile: [AT PreNUDGE Observation PSS-10 Score](StructureDefinition-at-prenudge-pss10-score-observation.md)

**identifier**: `https://www.joanneum.at`/obs-pss10-2026-06-20-001

**status**: Final

**code**: Perceived stress scale-10 total score [PSS-10]

**subject**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

**effective**: 2026-06-20 09:05:00+0000

**issued**: 2026-06-20 09:05:00+0000

**value**: 19 score (Details: UCUM code{score} = '{score}')

**method**: Manual

**derivedFrom**: [Response to Questionnaire '->Perceived Stress Scale (PSS-10)' about '->James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)'](QuestionnaireResponse-pss10-response-example.md)

> **component****code**: PSS-10 Item 1**value**: Manchmal

> **component****code**: PSS-10 Item 2**value**: Selten

> **component****code**: PSS-10 Item 3**value**: Häufig

> **component****code**: PSS-10 Item 4 (positiv)**value**: Manchmal

> **component****code**: PSS-10 Item 5 (positiv)**value**: Selten

> **component****code**: PSS-10 Item 6**value**: Manchmal

> **component****code**: PSS-10 Item 7 (positiv)**value**: Häufig

> **component****code**: PSS-10 Item 8 (positiv)**value**: Manchmal

> **component****code**: PSS-10 Item 9**value**: Selten

> **component****code**: PSS-10 Item 10**value**: Manchmal

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-08-06

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pss10-score-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-pss10-score-observation"]
  },
  "identifier" : [{
    "system" : "https://www.joanneum.at",
    "value" : "obs-pss10-2026-06-20-001"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "106860-0",
      "display" : "Perceived stress scale-10 total score [PSS-10]"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-06-20T09:05:00Z",
  "issued" : "2026-06-20T09:05:00Z",
  "valueQuantity" : {
    "value" : 19,
    "unit" : "score",
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "87982008",
      "display" : "Manual"
    }]
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/pss10-response-example"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-codes-codesystem",
        "code" : "pss10-q1",
        "display" : "PSS-10 Item 1"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
        "code" : "sometimes",
        "display" : "Manchmal"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-codes-codesystem",
        "code" : "pss10-q2",
        "display" : "PSS-10 Item 2"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
        "code" : "rarely",
        "display" : "Selten"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-codes-codesystem",
        "code" : "pss10-q3",
        "display" : "PSS-10 Item 3"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
        "code" : "often",
        "display" : "Häufig"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-codes-codesystem",
        "code" : "pss10-q4",
        "display" : "PSS-10 Item 4 (positiv)"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
        "code" : "sometimes",
        "display" : "Manchmal"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-codes-codesystem",
        "code" : "pss10-q5",
        "display" : "PSS-10 Item 5 (positiv)"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
        "code" : "rarely",
        "display" : "Selten"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-codes-codesystem",
        "code" : "pss10-q6",
        "display" : "PSS-10 Item 6"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
        "code" : "sometimes",
        "display" : "Manchmal"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-codes-codesystem",
        "code" : "pss10-q7",
        "display" : "PSS-10 Item 7 (positiv)"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
        "code" : "often",
        "display" : "Häufig"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-codes-codesystem",
        "code" : "pss10-q8",
        "display" : "PSS-10 Item 8 (positiv)"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
        "code" : "sometimes",
        "display" : "Manchmal"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-codes-codesystem",
        "code" : "pss10-q9",
        "display" : "PSS-10 Item 9"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
        "code" : "rarely",
        "display" : "Selten"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-codes-codesystem",
        "code" : "pss10-q10",
        "display" : "PSS-10 Item 10"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
        "code" : "sometimes",
        "display" : "Manchmal"
      }]
    }
  }]
}

```
