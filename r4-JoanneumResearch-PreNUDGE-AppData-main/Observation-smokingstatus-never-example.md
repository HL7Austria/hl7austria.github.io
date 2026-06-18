# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Smoking Status O mapped from ATHIS Q - Never Tobacco Smoker Example - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Smoking Status O mapped from ATHIS Q - Never Tobacco Smoker Example**

## Example Observation: Smoking Status O mapped from ATHIS Q - Never Tobacco Smoker Example

Profile: [AT PreNUDGE Observation Smoking Status](StructureDefinition-at-prenudge-smokingstatus-observation.md)

**identifier**: `https://www.joanneum.at`/obs-smokingstatus-2026-03-12-001

**status**: Final

**code**: Tobacco smoking status

**subject**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

**effective**: 2026-03-12

**issued**: 2026-03-12 00:00:00+0000

**value**: Never smoked tobacco

**method**: Manual

**derivedFrom**: [Response to Questionnaire '->Rauchstatus und Nikotinkonsum' about '->James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)'](QuestionnaireResponse-SmokingStatusResponseNever.md)

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
  "id" : "smokingstatus-never-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-smokingstatus-observation"]
  },
  "identifier" : [{
    "system" : "https://www.joanneum.at",
    "value" : "obs-smokingstatus-2026-03-12-001"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "72166-2",
      "display" : "Tobacco smoking status"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-03-12",
  "issued" : "2026-03-12T00:00:00Z",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "266919005",
      "display" : "Never smoked tobacco"
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
    "reference" : "QuestionnaireResponse/SmokingStatusResponseNever"
  }]
}

```
