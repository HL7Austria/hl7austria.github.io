# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Observation Sitting Hours - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Observation Sitting Hours**

## Resource Profile: AT PreNUDGE Observation Sitting Hours 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-sitting-hours-observation | *Version*:0.1.0 | |
| Draft as of 2026-08-20 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeObservationSittingHours |

 
This FHIR profile defines the Sitting Hours Observation recording the average number of sitting or resting hours per day (excluding sleep). Applicable for both automated wearable measurements (method = Automated) and self-reported values derived from EhisPaqSittingHoursQuestionnaire via SittingHoursQuestionnaireResponseToObservation (method = Manual). Device-derived sitting hours are computed as: Sitting Hours = 24 h − Active Hours − Sleep Hours, where Active Hours (Stehstunden) are hours in which a person has moved at least once (≥ 50 steps per hour). Sleep hours must be subtracted by the originating app before recording the value. 

**Usages:**

* Examples for this Profile: [Observation/sitting-hours-questionnaire-derived-example](Observation-sitting-hours-questionnaire-derived-example.md) and [Observation/sitting-hours-wearable-example](Observation-sitting-hours-wearable-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.prenudge.appdata.r4|current/StructureDefinition/StructureDefinition-at-prenudge-sitting-hours-observation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-prenudge-sitting-hours-observation.csv), [Excel](StructureDefinition-at-prenudge-sitting-hours-observation.xlsx), [Schematron](StructureDefinition-at-prenudge-sitting-hours-observation.sch) 

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
  "resourceType" : "StructureDefinition",
  "id" : "at-prenudge-sitting-hours-observation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-sitting-hours-observation",
  "version" : "0.1.0",
  "name" : "AtPrenudgeObservationSittingHours",
  "title" : "AT PreNUDGE Observation Sitting Hours",
  "status" : "draft",
  "date" : "2026-08-20T13:42:02+00:00",
  "publisher" : "The PreNUDGE Consortium",
  "contact" : [{
    "name" : "The PreNUDGE Consortium",
    "telecom" : [{
      "system" : "url",
      "value" : "https://prenudge.at"
    }]
  },
  {
    "name" : "The PreNUDGE Consortium",
    "telecom" : [{
      "system" : "url",
      "value" : "https://prenudge.at",
      "use" : "work"
    }]
  }],
  "description" : "This FHIR profile defines the Sitting Hours Observation recording the average number of sitting or resting hours per day (excluding sleep). Applicable for both automated wearable measurements (method = Automated) and self-reported values derived from EhisPaqSittingHoursQuestionnaire via SittingHoursQuestionnaireResponseToObservation (method = Manual). Device-derived sitting hours are computed as: Sitting Hours = 24 h − Active Hours − Sleep Hours, where Active Hours (Stehstunden) are hours in which a person has moved at least once (≥ 50 steps per hour). Sleep hours must be subtracted by the originating app before recording the value.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation",
      "constraint" : [{
        "key" : "sitting-hours-range",
        "severity" : "error",
        "human" : "Sitting hours per day must be between 0 and 24.",
        "expression" : "value.ofType(Quantity).value >= 0 and value.ofType(Quantity).value <= 24",
        "source" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-sitting-hours-observation"
      }]
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "87705-0",
          "display" : "Sedentary activity 24 hour"
        }]
      }
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.value[x].value",
      "path" : "Observation.value[x].value",
      "min" : 1
    },
    {
      "id" : "Observation.value[x].unit",
      "path" : "Observation.value[x].unit",
      "patternString" : "h"
    },
    {
      "id" : "Observation.value[x].system",
      "path" : "Observation.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.value[x].code",
      "path" : "Observation.value[x].code",
      "patternCode" : "h"
    },
    {
      "id" : "Observation.derivedFrom",
      "path" : "Observation.derivedFrom",
      "short" : "Reference to the QuestionnaireResponse from which this observation was derived",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse"]
      }],
      "mustSupport" : true
    }]
  }
}

```
