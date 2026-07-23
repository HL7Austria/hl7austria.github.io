# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Observation Work-SoC Category Score - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Observation Work-SoC Category Score**

## Resource Profile: AT PreNUDGE Observation Work-SoC Category Score 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-work-soc-score-observation | *Version*:0.1.0 | |
| Draft as of 2026-07-23 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeObservationWorkSocScore |

 
This FHIR profile defines the calculated work-related sense of coherence (Work-SoC) category score observation. It contains the category scores for comprehensibility, manageability and meaningfulness as Observation components. The raw Work-SoC item answers are represented in the source QuestionnaireResponse. 

**Usages:**

* Examples for this Profile: [Observation/work-soc-score-example](Observation-work-soc-score-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.prenudge.appdata.r4|current/StructureDefinition/StructureDefinition-at-prenudge-work-soc-score-observation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-prenudge-work-soc-score-observation.csv), [Excel](StructureDefinition-at-prenudge-work-soc-score-observation.xlsx), [Schematron](StructureDefinition-at-prenudge-work-soc-score-observation.sch) 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-07-23

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-prenudge-work-soc-score-observation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-work-soc-score-observation",
  "version" : "0.1.0",
  "name" : "AtPrenudgeObservationWorkSocScore",
  "title" : "AT PreNUDGE Observation Work-SoC Category Score",
  "status" : "draft",
  "date" : "2026-07-23T14:49:55+00:00",
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
  "description" : "This FHIR profile defines the calculated work-related sense of coherence (Work-SoC) category score observation. It contains the category scores for comprehensibility, manageability and meaningfulness as Observation components. The raw Work-SoC item answers are represented in the source QuestionnaireResponse.",
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
      "path" : "Observation"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability",
          "code" : "work-soc-category-score",
          "display" : "Work-SoC category score"
        }]
      }
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "max" : "0"
    },
    {
      "id" : "Observation.derivedFrom",
      "path" : "Observation.derivedFrom",
      "short" : "QuestionnaireResponse or other source this Work-SoC score observation was derived from",
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
      "min" : 3,
      "max" : "3"
    },
    {
      "id" : "Observation.component:comprehensibility",
      "path" : "Observation.component",
      "sliceName" : "comprehensibility",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:comprehensibility.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability",
          "code" : "work-soc-comprehensibility",
          "display" : "Work-SoC comprehensibility score"
        }]
      }
    },
    {
      "id" : "Observation.component:comprehensibility.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "Calculated category score: (Item 1 + Item 3 + Item 6 + Item 9) / 4",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:manageability",
      "path" : "Observation.component",
      "sliceName" : "manageability",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:manageability.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability",
          "code" : "work-soc-manageability",
          "display" : "Work-SoC manageability score"
        }]
      }
    },
    {
      "id" : "Observation.component:manageability.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "Calculated category score: (Item 4 + Item 7) / 2",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:meaningfulness",
      "path" : "Observation.component",
      "sliceName" : "meaningfulness",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:meaningfulness.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability",
          "code" : "work-soc-meaningfulness",
          "display" : "Work-SoC meaningfulness score"
        }]
      }
    },
    {
      "id" : "Observation.component:meaningfulness.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "Calculated category score: (Item 2 + Item 5 + Item 8) / 3",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }]
    }]
  }
}

```
