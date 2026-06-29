# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Nutrition Sugar Salty Frequency Q to O - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nutrition Sugar Salty Frequency Q to O**

## StructureMap: Nutrition Sugar Salty Frequency Q to O 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/NutritionSugarSaltyFrequencyQuestionnaireResponseToObservation | *Version*:0.1.0 | |
| Active as of 2026-06-29 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:NutritionSugarSaltyFrequencyQuestionnaireResponseToObservation |

 
Nutrition Sugar Salty Frequency Q to O 

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
  "resourceType" : "StructureMap",
  "id" : "NutritionSugarSaltyFrequencyQuestionnaireResponseToObservation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/NutritionSugarSaltyFrequencyQuestionnaireResponseToObservation",
  "version" : "0.1.0",
  "name" : "NutritionSugarSaltyFrequencyQuestionnaireResponseToObservation",
  "title" : "Nutrition Sugar Salty Frequency Q to O",
  "status" : "active",
  "date" : "2026-06-29T10:47:49+00:00",
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
  "description" : "Nutrition Sugar Salty Frequency Q to O",
  "structure" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
    "mode" : "source",
    "alias" : "QR"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Observation",
    "mode" : "target",
    "alias" : "Obs"
  }],
  "import" : ["http://hl7.org/fhir/StructureMap/*",
  "https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/QuestionnaireResponseToObservationBase"],
  "group" : [{
    "name" : "NutritionSugarSaltyFrequencyQuestionnaireResponseToObservation",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "QR",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Obs",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "Base",
      "source" : [{
        "context" : "src"
      }],
      "dependent" : [{
        "name" : "SetObservationBase",
        "variable" : ["src", "tgt"]
      }]
    },
    {
      "name" : "SetProfile",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "meta",
        "variable" : "meta",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Meta"
        }]
      },
      {
        "context" : "meta",
        "contextType" : "variable",
        "element" : "profile",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-nutrition-sugarsalty-observation"
        }]
      }]
    },
    {
      "name" : "SetCode",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "cc",
        "parameter" : [{
          "valueString" : "http://snomed.info/sct"
        },
        {
          "valueString" : "364395008"
        },
        {
          "valueString" : "Pattern of food and drink intake (observable entity)"
        }]
      }]
    },
    {
      "name" : "ProcessDH6",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'DH6'"
      }],
      "dependent" : [{
        "name" : "MapSugarSaltyFrequency",
        "variable" : ["item", "tgt"]
      }]
    }]
  },
  {
    "name" : "MapSugarSaltyFrequency",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "QR",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Obs",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "ProcessAnswer",
      "source" : [{
        "context" : "src",
        "element" : "answer",
        "variable" : "answer"
      }],
      "rule" : [{
        "name" : "SetValueCoding",
        "source" : [{
          "context" : "answer",
          "element" : "valueCoding",
          "variable" : "coding"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "value",
          "variable" : "cc",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cc",
          "contextType" : "variable",
          "element" : "coding",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "coding"
          }]
        }]
      }]
    }]
  }]
}

```
