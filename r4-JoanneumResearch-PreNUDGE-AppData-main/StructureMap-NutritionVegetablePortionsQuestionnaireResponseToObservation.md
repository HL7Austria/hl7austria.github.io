# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Nutrition Vegetable Portions Q to O - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nutrition Vegetable Portions Q to O**

## StructureMap: Nutrition Vegetable Portions Q to O 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/NutritionVegetablePortionsQuestionnaireResponseToObservation | *Version*:0.1.0 | |
| Active as of 2026-07-22 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:NutritionVegetablePortionsQuestionnaireResponseToObservation |

 
Nutrition Vegetable Portions Q to O 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-07-22

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "NutritionVegetablePortionsQuestionnaireResponseToObservation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/NutritionVegetablePortionsQuestionnaireResponseToObservation",
  "version" : "0.1.0",
  "name" : "NutritionVegetablePortionsQuestionnaireResponseToObservation",
  "title" : "Nutrition Vegetable Portions Q to O",
  "status" : "active",
  "date" : "2026-07-22T09:38:36+00:00",
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
  "description" : "Nutrition Vegetable Portions Q to O",
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
    "name" : "NutritionVegetablePortionsQuestionnaireResponseToObservation",
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
          "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-nutrition-vegetableportions-observation"
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
          "valueString" : "http://loinc.org"
        },
        {
          "valueString" : "89764-8"
        },
        {
          "valueString" : "Servings of vegetables per day [PhenX]"
        }]
      }]
    },
    {
      "name" : "ProcessDH4",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'DH4'"
      }],
      "dependent" : [{
        "name" : "MapVegetablePortions",
        "variable" : ["item", "tgt"]
      }]
    }]
  },
  {
    "name" : "MapVegetablePortions",
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
        "name" : "ExtractValue",
        "source" : [{
          "context" : "answer",
          "element" : "valueInteger",
          "variable" : "intObj"
        }],
        "rule" : [{
          "name" : "SetQuantity",
          "source" : [{
            "context" : "intObj",
            "element" : "value",
            "variable" : "numVal"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "value",
            "variable" : "qty",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Quantity"
            }]
          },
          {
            "context" : "qty",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "numVal"
            }]
          },
          {
            "context" : "qty",
            "contextType" : "variable",
            "element" : "unit",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Portionen"
            }]
          },
          {
            "context" : "qty",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://unitsofmeasure.org"
            }]
          },
          {
            "context" : "qty",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "{serving}"
            }]
          }]
        }]
      }]
    }]
  }]
}

```
