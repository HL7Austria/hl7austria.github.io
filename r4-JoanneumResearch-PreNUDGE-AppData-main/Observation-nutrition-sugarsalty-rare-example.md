# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Nutrition Sugar Salty Frequency O mapped from Q - Rare Example - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nutrition Sugar Salty Frequency O mapped from Q - Rare Example**

## Example Observation: Nutrition Sugar Salty Frequency O mapped from Q - Rare Example

Profile: [AT PreNUDGE Observation Nutrition Sugar Salty Frequency](StructureDefinition-at-prenudge-nutrition-sugarsalty-observation.md)

**identifier**: `https://www.joanneum.at`/qr-nut-ss-2026-06-02-001

**status**: Final

**code**: Pattern of food and drink intake (observable entity)

**subject**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

**effective**: 2026-06-02

**issued**: 2026-06-02 09:15:00+0000

**value**: Weniger als einmal pro Woche

**note**: 

> 

Selbstberichtet: seltener Konsum zuckerhaltiger und fettreicher Lebensmittel.


**method**: Manual

**derivedFrom**: [Response to Questionnaire '->Konsumhäufigkeit fett-, zucker- und salzreicher Lebensmittel' about '->James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)'](QuestionnaireResponse-nutrition-sugarsalty-response-rare-example.md)

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
  "id" : "nutrition-sugarsalty-rare-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-nutrition-sugarsalty-observation"]
  },
  "identifier" : [{
    "system" : "https://www.joanneum.at",
    "value" : "qr-nut-ss-2026-06-02-001"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "364395008",
      "display" : "Pattern of food and drink intake (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-06-02",
  "issued" : "2026-06-02T09:15:00Z",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
      "code" : "diet-less-than-once-per-week",
      "display" : "Weniger als einmal pro Woche"
    }]
  },
  "note" : [{
    "text" : "Selbstberichtet: seltener Konsum zuckerhaltiger und fettreicher Lebensmittel."
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "87982008",
      "display" : "Manual"
    }]
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/nutrition-sugarsalty-response-rare-example"
  }]
}

```
