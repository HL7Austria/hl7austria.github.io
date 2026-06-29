# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Observation Nutrition Vegetable Portions - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Observation Nutrition Vegetable Portions**

## Resource Profile: AT PreNUDGE Observation Nutrition Vegetable Portions 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-nutrition-vegetableportions-observation | *Version*:0.1.0 | |
| Draft as of 2026-06-29 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeObservationNutritionVegetablePortions |

 
Records self-reported daily portions of vegetables or salad based on ATHIS 2025 question DH4. Applicable only for respondents who eat vegetables daily (DH3 = 'Täglich oder mehrmals täglich'). Observation code: LOINC 89764-8 'Servings of vegetables per day [PhenX]'. 

**Usages:**

* Examples for this Profile: [Observation/nutrition-vegetableportions-high-example](Observation-nutrition-vegetableportions-high-example.md) and [Observation/nutrition-vegetableportions-normal-example](Observation-nutrition-vegetableportions-normal-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.prenudge.appdata.r4|current/StructureDefinition/StructureDefinition-at-prenudge-nutrition-vegetableportions-observation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-prenudge-nutrition-vegetableportions-observation.csv), [Excel](StructureDefinition-at-prenudge-nutrition-vegetableportions-observation.xlsx), [Schematron](StructureDefinition-at-prenudge-nutrition-vegetableportions-observation.sch) 

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
  "id" : "at-prenudge-nutrition-vegetableportions-observation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-nutrition-vegetableportions-observation",
  "version" : "0.1.0",
  "name" : "AtPrenudgeObservationNutritionVegetablePortions",
  "title" : "AT PreNUDGE Observation Nutrition Vegetable Portions",
  "status" : "draft",
  "date" : "2026-06-29T16:58:51+00:00",
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
  "description" : "Records self-reported daily portions of vegetables or salad based on ATHIS 2025 question DH4. Applicable only for respondents who eat vegetables daily (DH3 = 'Täglich oder mehrmals täglich'). Observation code: LOINC 89764-8 'Servings of vegetables per day [PhenX]'.",
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
        "key" : "nutrition-vegetable-portions-range",
        "severity" : "error",
        "human" : "Vegetable portions per day must be between 1 and 99.",
        "expression" : "value.ofType(Quantity).value >= 1 and value.ofType(Quantity).value <= 99",
        "source" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-nutrition-vegetableportions-observation"
      }]
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "89764-8",
          "display" : "Servings of vegetables per day [PhenX]"
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
      "patternString" : "Portionen"
    },
    {
      "id" : "Observation.value[x].system",
      "path" : "Observation.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.value[x].code",
      "path" : "Observation.value[x].code",
      "patternCode" : "{serving}"
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
