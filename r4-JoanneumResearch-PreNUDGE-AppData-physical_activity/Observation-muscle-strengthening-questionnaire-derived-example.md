# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Muscle Strengthening Sessions O mapped from Q - Example - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Muscle Strengthening Sessions O mapped from Q - Example**

## Example Observation: Muscle Strengthening Sessions O mapped from Q - Example

Profile: [AT PreNUDGE Observation Muscle Strengthening Sessions](StructureDefinition-at-prenudge-muscle-strengthening-observation.md)

**identifier**: `https://www.joanneum.at`/obs-ms-2026-06-01-001

**status**: Final

**code**: Frequency of muscle-strengthening physical activity

**subject**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

**effective**: 2026-06-01 10:00:00+0200

**issued**: 2026-06-01 10:00:00+0200

**value**: 3 {sessions}/wk (Details: UCUM code{sessions}/wk = '{sessions}/wk')

**note**: 

> 

Selbstberichtet. Krafttraining Montag, Mittwoch, Freitag.


**method**: Manual

**derivedFrom**: [Response to Questionnaire '->Muskelkräftigungs-Trainingseinheiten pro Woche (numerisch)' about '->James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)'](QuestionnaireResponse-muscle-strengthening-quantity-response-example.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "muscle-strengthening-questionnaire-derived-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-muscle-strengthening-observation"]
  },
  "identifier" : [{
    "system" : "https://www.joanneum.at",
    "value" : "obs-ms-2026-06-01-001"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "82291-6",
      "display" : "Frequency of muscle-strengthening physical activity"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-06-01T10:00:00+02:00",
  "issued" : "2026-06-01T10:00:00+02:00",
  "valueQuantity" : {
    "value" : 3,
    "unit" : "{sessions}/wk",
    "system" : "http://unitsofmeasure.org",
    "code" : "{sessions}/wk"
  },
  "note" : [{
    "text" : "Selbstberichtet. Krafttraining Montag, Mittwoch, Freitag."
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "87982008",
      "display" : "Manual"
    }]
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/muscle-strengthening-quantity-response-example"
  }]
}

```
