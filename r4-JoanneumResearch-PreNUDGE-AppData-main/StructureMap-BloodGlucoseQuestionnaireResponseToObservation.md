# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Blood Glucose Q to O - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Blood Glucose Q to O**

## StructureMap: Blood Glucose Q to O 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/BloodGlucoseQuestionnaireResponseToObservation | *Version*:0.1.0 | |
| Active as of 2026-08-07 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:BloodGlucoseQuestionnaireResponseToObservation |

 
Blood Glucose Q to O 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-08-07

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "BloodGlucoseQuestionnaireResponseToObservation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/BloodGlucoseQuestionnaireResponseToObservation",
  "version" : "0.1.0",
  "name" : "BloodGlucoseQuestionnaireResponseToObservation",
  "title" : "Blood Glucose Q to O",
  "status" : "active",
  "date" : "2026-08-07T08:52:23+00:00",
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
  "description" : "Blood Glucose Q to O",
  "structure" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
    "mode" : "source",
    "alias" : "QR"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Observation",
    "mode" : "target",
    "alias" : "Obs"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Quantity",
    "mode" : "source",
    "alias" : "Quantity"
  }],
  "import" : ["http://hl7.org/fhir/StructureMap/*",
  "https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/QuestionnaireResponseToObservationBase"],
  "group" : [{
    "name" : "BloodGlucoseQuestionnaireResponseToObservation",
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
          "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-bloodglucose-observation"
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
          "valueString" : "41653-7"
        },
        {
          "valueString" : "Glucose [Mass/volume] in Capillary blood by Glucometer"
        }]
      }]
    },
    {
      "name" : "ProcessItem",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'blood-glucose'"
      }],
      "dependent" : [{
        "name" : "MapBloodGlucose",
        "variable" : ["item", "tgt"]
      }]
    }]
  },
  {
    "name" : "MapBloodGlucose",
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
        "name" : "ProcessDatetime",
        "source" : [{
          "context" : "answer",
          "element" : "item",
          "variable" : "dtItem",
          "condition" : "linkId = 'datetime'"
        }],
        "rule" : [{
          "name" : "ExtractDateTime",
          "source" : [{
            "context" : "dtItem",
            "element" : "answer",
            "variable" : "dtAns"
          }],
          "rule" : [{
            "name" : "SetEffectiveFromDatetime",
            "source" : [{
              "context" : "dtAns",
              "element" : "valueDateTime",
              "variable" : "dt"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "effectiveDateTime",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "dt"
              }]
            }]
          }]
        }],
        "documentation" : "effectiveDateTime from nested item"
      },
      {
        "name" : "ProcessMealContext",
        "source" : [{
          "context" : "answer",
          "element" : "item",
          "variable" : "mcItem",
          "condition" : "linkId = 'meal-context'"
        }],
        "rule" : [{
          "name" : "ExtractCoding",
          "source" : [{
            "context" : "mcItem",
            "element" : "answer",
            "variable" : "mcAns"
          }],
          "rule" : [{
            "name" : "SetMealContextCoding",
            "source" : [{
              "context" : "mcAns",
              "element" : "valueCoding",
              "variable" : "coding"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "component",
              "variable" : "comp"
            },
            {
              "context" : "comp",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "cc",
              "parameter" : [{
                "valueString" : "http://snomed.info/sct"
              },
              {
                "valueString" : "309602000"
              },
              {
                "valueString" : "Temporal periods relating to feeding and eating"
              }]
            },
            {
              "context" : "comp",
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
        }],
        "documentation" : "Meal context → component[mealContext]"
      },
      {
        "name" : "MapValueQuantity",
        "source" : [{
          "context" : "answer",
          "element" : "valueQuantity",
          "variable" : "srcQty"
        }],
        "dependent" : [{
          "name" : "MapBloodGlucoseQuantity",
          "variable" : ["srcQty", "tgt"]
        }],
        "documentation" : "Map the blood glucose value"
      }],
      "documentation" : "Process the answer first to get access to nested items"
    }]
  },
  {
    "name" : "MapBloodGlucoseQuantity",
    "typeMode" : "none",
    "input" : [{
      "name" : "srcQty",
      "type" : "Quantity",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Obs",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "ExtractValue",
      "source" : [{
        "context" : "srcQty",
        "element" : "value",
        "variable" : "v"
      }],
      "rule" : [{
        "name" : "SetQuantity",
        "source" : [{
          "context" : "v",
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
            "valueString" : "mg/dL"
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
            "valueString" : "mg/dL"
          }]
        }]
      }]
    }]
  }]
}

```
