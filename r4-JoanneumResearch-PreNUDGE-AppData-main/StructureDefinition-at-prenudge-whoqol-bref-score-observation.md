# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Observation WHOQOL-BREF Score - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Observation WHOQOL-BREF Score**

## Resource Profile: AT PreNUDGE Observation WHOQOL-BREF Score 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-whoqol-bref-score-observation | *Version*:0.1.0 | |
| Draft as of 2026-06-29 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeObservationWHOQOLBrefScore |

 
Observation profile for recording WHOQOL-BREF domain scores. The overall score is represented in Observation.value, individual domain scores are recorded as components. 

**Usages:**

* Examples for this Profile: [Observation/whoqol-bref-score-example](Observation-whoqol-bref-score-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.prenudge.appdata.r4|current/StructureDefinition/StructureDefinition-at-prenudge-whoqol-bref-score-observation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-prenudge-whoqol-bref-score-observation.csv), [Excel](StructureDefinition-at-prenudge-whoqol-bref-score-observation.xlsx), [Schematron](StructureDefinition-at-prenudge-whoqol-bref-score-observation.sch) 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-06-29

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-prenudge-whoqol-bref-score-observation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-whoqol-bref-score-observation",
  "version" : "0.1.0",
  "name" : "AtPrenudgeObservationWHOQOLBrefScore",
  "title" : "AT PreNUDGE Observation WHOQOL-BREF Score",
  "status" : "draft",
  "date" : "2026-06-29T17:35:07+00:00",
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
  "description" : "Observation profile for recording WHOQOL-BREF domain scores. The overall score is represented in Observation.value, individual domain scores are recorded as components.",
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
        "key" : "whoqol-score-range",
        "severity" : "error",
        "human" : "All WHOQOL-BREF component score values must be between 0 and 100.",
        "expression" : "component.value.ofType(Quantity).value.all($this >= 0 and $this <= 100)",
        "source" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-whoqol-bref-score-observation"
      }]
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "405152002"
        }]
      }
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "Not used. All scores are represented as components.",
      "max" : "0"
    },
    {
      "id" : "Observation.derivedFrom",
      "path" : "Observation.derivedFrom",
      "short" : "Reference to the QuestionnaireResponse from which this score was calculated",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "rules" : "closed"
      },
      "short" : "WHOQOL-BREF scores: general and four domain scores",
      "min" : 5,
      "max" : "5"
    },
    {
      "id" : "Observation.component:generalized",
      "path" : "Observation.component",
      "sliceName" : "generalized",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:generalized.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "60132005",
          "display" : "Generalized"
        }]
      }
    },
    {
      "id" : "Observation.component:generalized.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:generalized.value[x].value",
      "path" : "Observation.component.value[x].value",
      "min" : 1
    },
    {
      "id" : "Observation.component:generalized.value[x].unit",
      "path" : "Observation.component.value[x].unit",
      "patternString" : "score"
    },
    {
      "id" : "Observation.component:generalized.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:generalized.value[x].code",
      "path" : "Observation.component.value[x].code",
      "patternCode" : "{score}"
    },
    {
      "id" : "Observation.component:physical",
      "path" : "Observation.component",
      "sliceName" : "physical",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:physical.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "19388002",
          "display" : "Physical"
        }]
      }
    },
    {
      "id" : "Observation.component:physical.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:physical.value[x].value",
      "path" : "Observation.component.value[x].value",
      "min" : 1
    },
    {
      "id" : "Observation.component:physical.value[x].unit",
      "path" : "Observation.component.value[x].unit",
      "patternString" : "score"
    },
    {
      "id" : "Observation.component:physical.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:physical.value[x].code",
      "path" : "Observation.component.value[x].code",
      "patternCode" : "{score}"
    },
    {
      "id" : "Observation.component:psychological",
      "path" : "Observation.component",
      "sliceName" : "psychological",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:psychological.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "60224009",
          "display" : "Psychologic"
        }]
      }
    },
    {
      "id" : "Observation.component:psychological.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:psychological.value[x].value",
      "path" : "Observation.component.value[x].value",
      "min" : 1
    },
    {
      "id" : "Observation.component:psychological.value[x].unit",
      "path" : "Observation.component.value[x].unit",
      "patternString" : "score"
    },
    {
      "id" : "Observation.component:psychological.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:psychological.value[x].code",
      "path" : "Observation.component.value[x].code",
      "patternCode" : "{score}"
    },
    {
      "id" : "Observation.component:relationships",
      "path" : "Observation.component",
      "sliceName" : "relationships",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:relationships.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "272151006",
          "display" : "Relationships"
        }]
      }
    },
    {
      "id" : "Observation.component:relationships.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:relationships.value[x].value",
      "path" : "Observation.component.value[x].value",
      "min" : 1
    },
    {
      "id" : "Observation.component:relationships.value[x].unit",
      "path" : "Observation.component.value[x].unit",
      "patternString" : "score"
    },
    {
      "id" : "Observation.component:relationships.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:relationships.value[x].code",
      "path" : "Observation.component.value[x].code",
      "patternCode" : "{score}"
    },
    {
      "id" : "Observation.component:environment",
      "path" : "Observation.component",
      "sliceName" : "environment",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:environment.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "276339004",
          "display" : "Environment"
        }]
      }
    },
    {
      "id" : "Observation.component:environment.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:environment.value[x].value",
      "path" : "Observation.component.value[x].value",
      "min" : 1
    },
    {
      "id" : "Observation.component:environment.value[x].unit",
      "path" : "Observation.component.value[x].unit",
      "patternString" : "score"
    },
    {
      "id" : "Observation.component:environment.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:environment.value[x].code",
      "path" : "Observation.component.value[x].code",
      "patternCode" : "{score}"
    }]
  }
}

```
