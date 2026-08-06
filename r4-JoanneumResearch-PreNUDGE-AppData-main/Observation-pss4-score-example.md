# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\PSS-4 Score O mapped from Q - Example - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS-4 Score O mapped from Q - Example**

## Example Observation: PSS-4 Score O mapped from Q - Example

Profile: [AT PreNUDGE Observation PSS-4 Score](StructureDefinition-at-prenudge-pss4-score-observation.md)

**identifier**: `https://www.joanneum.at`/obs-pss4-2026-06-20-001

**status**: Final

**code**: PSS-4 Perceived Stress Scale (4-item)

**subject**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

**effective**: 2026-06-20 09:00:00+0000

**issued**: 2026-06-20 09:00:00+0000

**value**: 8 score (Details: UCUM code{score} = '{score}')

**method**: Manual

**derivedFrom**: [Response to Questionnaire '->Perceived Stress Scale (PSS-4)' about '->James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)'](QuestionnaireResponse-pss4-response-example.md)

> **component****code**: PSS-4 Item 1 (Kontrollverlust)**value**: Manchmal

> **component****code**: PSS-4 Item 2 (Selbstwirksamkeit — positiv)**value**: Selten

> **component****code**: PSS-4 Item 3 (Kontrolle — positiv)**value**: Häufig

> **component****code**: PSS-4 Item 4 (Überforderung)**value**: Manchmal

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
  "id" : "pss4-score-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-pss4-score-observation"]
  },
  "identifier" : [{
    "system" : "https://www.joanneum.at",
    "value" : "obs-pss4-2026-06-20-001"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-codes-codesystem",
      "code" : "pss4",
      "display" : "PSS-4 Perceived Stress Scale (4-item)"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-06-20T09:00:00Z",
  "issued" : "2026-06-20T09:00:00Z",
  "valueQuantity" : {
    "value" : 8,
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
    "reference" : "QuestionnaireResponse/pss4-response-example"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-codes-codesystem",
        "code" : "pss4-q1",
        "display" : "PSS-4 Item 1 (Kontrollverlust)"
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
        "code" : "pss4-q2",
        "display" : "PSS-4 Item 2 (Selbstwirksamkeit — positiv)"
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
        "code" : "pss4-q3",
        "display" : "PSS-4 Item 3 (Kontrolle — positiv)"
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
        "code" : "pss4-q4",
        "display" : "PSS-4 Item 4 (Überforderung)"
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
