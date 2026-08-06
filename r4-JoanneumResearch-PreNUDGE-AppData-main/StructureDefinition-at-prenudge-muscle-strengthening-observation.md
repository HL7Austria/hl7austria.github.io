# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Observation Muscle Strengthening Sessions - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Observation Muscle Strengthening Sessions**

## Resource Profile: AT PreNUDGE Observation Muscle Strengthening Sessions 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-muscle-strengthening-observation | *Version*:0.1.0 | |
| Draft as of 2026-08-06 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeObservationMuscleStrengthening |

 
This FHIR profile defines the Muscle Strengthening Sessions Observation recording the number of muscle-strengthening exercise sessions (e.g. weight training, resistance exercises with weights, resistance bands, or bodyweight) per week. Applicable for both automated wearable measurements (method = Automated) and self-reported values derived from MuscleStrengtheningQuantityQuestionnaire (method = Manual). The value must be 0 or greater. 

**Usages:**

* Examples for this Profile: [Observation/muscle-strengthening-ehis-paq-derived-example](Observation-muscle-strengthening-ehis-paq-derived-example.md), [Observation/muscle-strengthening-questionnaire-derived-example](Observation-muscle-strengthening-questionnaire-derived-example.md) and [Observation/muscle-strengthening-wearable-derived-example](Observation-muscle-strengthening-wearable-derived-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.prenudge.appdata.r4|current/StructureDefinition/StructureDefinition-at-prenudge-muscle-strengthening-observation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-prenudge-muscle-strengthening-observation.csv), [Excel](StructureDefinition-at-prenudge-muscle-strengthening-observation.xlsx), [Schematron](StructureDefinition-at-prenudge-muscle-strengthening-observation.sch) 

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
  "resourceType" : "StructureDefinition",
  "id" : "at-prenudge-muscle-strengthening-observation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-muscle-strengthening-observation",
  "version" : "0.1.0",
  "name" : "AtPrenudgeObservationMuscleStrengthening",
  "title" : "AT PreNUDGE Observation Muscle Strengthening Sessions",
  "status" : "draft",
  "date" : "2026-08-06T10:54:53+00:00",
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
  "description" : "This FHIR profile defines the Muscle Strengthening Sessions Observation recording the number of muscle-strengthening exercise sessions (e.g. weight training, resistance exercises with weights, resistance bands, or bodyweight) per week. Applicable for both automated wearable measurements (method = Automated) and self-reported values derived from MuscleStrengtheningQuantityQuestionnaire (method = Manual). The value must be 0 or greater.",
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
        "key" : "muscle-strengthening-range",
        "severity" : "error",
        "human" : "Muscle strengthening sessions per week must be 0 or greater.",
        "expression" : "value.ofType(Quantity).value >= 0",
        "source" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-muscle-strengthening-observation"
      }]
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "82291-6",
          "display" : "Frequency of muscle-strengthening physical activity"
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
      "patternString" : "{sessions}/wk"
    },
    {
      "id" : "Observation.value[x].system",
      "path" : "Observation.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.value[x].code",
      "path" : "Observation.value[x].code",
      "patternCode" : "{sessions}/wk"
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
