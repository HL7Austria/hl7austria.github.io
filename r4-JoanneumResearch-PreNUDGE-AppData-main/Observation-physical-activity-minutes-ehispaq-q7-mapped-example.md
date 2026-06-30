# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Physical Activity Minutes O - (f) EHIS-PAQ/ATHIS Q7/PE7 Mapped (Aggregate Only) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Physical Activity Minutes O - (f) EHIS-PAQ/ATHIS Q7/PE7 Mapped (Aggregate Only)**

## Example Observation: Physical Activity Minutes O - (f) EHIS-PAQ/ATHIS Q7/PE7 Mapped (Aggregate Only)

Profile: [AT PreNUDGE Observation Physical Activity Minutes](StructureDefinition-at-prenudge-physical-activity-minutes-observation.md)

**identifier**: `https://www.joanneum.at`/obs-pa-f-2026-03-24-001

**status**: Final

**code**: Duration of physical activity

**subject**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

**effective**: 2026-03-24 08:00:00+0100

**issued**: 2026-03-24 08:00:00+0100

**method**: Manual

**derivedFrom**: [Response to Questionnaire '->EHIS-PAQ/ATHIS: Körperliche Aktivität' about '->James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)'](QuestionnaireResponse-physical-activity-ehispaq-response-example.md)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Duration of physical activity | 150 min/wk (Details: UCUM codemin/wk = 'min/wk') |

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-06-30

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "physical-activity-minutes-ehispaq-q7-mapped-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-physical-activity-minutes-observation"]
  },
  "identifier" : [{
    "system" : "https://www.joanneum.at",
    "value" : "obs-pa-f-2026-03-24-001"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "101691-4",
      "display" : "Duration of physical activity"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-03-24T08:00:00+01:00",
  "issued" : "2026-03-24T08:00:00+01:00",
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "87982008",
      "display" : "Manual"
    }]
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/physical-activity-ehispaq-response-example"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "101691-4",
        "display" : "Duration of physical activity"
      }]
    },
    "valueQuantity" : {
      "value" : 150,
      "unit" : "min/wk",
      "system" : "http://unitsofmeasure.org",
      "code" : "min/wk"
    }
  }]
}

```
