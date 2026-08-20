# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Muscle Strengthening Sessions O mapped from ATHIS - Unknown Example - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Muscle Strengthening Sessions O mapped from ATHIS - Unknown Example**

## Example Observation: Muscle Strengthening Sessions O mapped from ATHIS - Unknown Example

Profile: [AT PreNUDGE Observation Muscle Strengthening Sessions](StructureDefinition-at-prenudge-muscle-strengthening-observation.md)

**identifier**: `https://www.joanneum.at`/obs-ms-ehis-2026-06-01-unknown

**status**: Final

**code**: Frequency of muscle-strengthening physical activity

**subject**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

**effective**: 2026-06-01 10:05:00+0200

**issued**: 2026-06-01 10:05:00+0200

**dataAbsentReason**: Asked But Unknown

**method**: Manual

**derivedFrom**: [Response to Questionnaire '->EHIS-PAQ Q8 / ATHIS PE8: Muskelkräftigungsübungen' about '->James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)'](QuestionnaireResponse-muscle-strengthening-ehis-paq-response-unknown-example.md)

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
  "id" : "muscle-strengthening-ehis-paq-unknown-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-muscle-strengthening-observation"]
  },
  "identifier" : [{
    "system" : "https://www.joanneum.at",
    "value" : "obs-ms-ehis-2026-06-01-unknown"
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
  "effectiveDateTime" : "2026-06-01T10:05:00+02:00",
  "issued" : "2026-06-01T10:05:00+02:00",
  "dataAbsentReason" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
      "code" : "asked-unknown",
      "display" : "Asked But Unknown"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "87982008",
      "display" : "Manual"
    }]
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/muscle-strengthening-ehis-paq-response-unknown-example"
  }]
}

```
