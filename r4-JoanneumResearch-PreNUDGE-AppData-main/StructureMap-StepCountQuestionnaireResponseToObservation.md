# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Step Count Q to O - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Step Count Q to O**

## StructureMap: Step Count Q to O 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/StepCountQuestionnaireResponseToObservation | *Version*:0.1.0 | |
| Active as of 2026-06-22 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:StepCountQuestionnaireResponseToObservation |

 
Step Count Q to O 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-06-22

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "StepCountQuestionnaireResponseToObservation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/StepCountQuestionnaireResponseToObservation",
  "version" : "0.1.0",
  "name" : "StepCountQuestionnaireResponseToObservation",
  "title" : "Step Count Q to O",
  "status" : "active",
  "date" : "2026-06-22T14:44:05+00:00",
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
  "description" : "Step Count Q to O",
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
    "name" : "StepCountQuestionnaireResponseToObservation",
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
          "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-stepcount-observation"
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
          "valueString" : "41950-7"
        },
        {
          "valueString" : "Number of steps in 24 hour Measured"
        }]
      }]
    },
    {
      "name" : "ProcessQuantityStepCount",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'step-count'"
      }],
      "dependent" : [{
        "name" : "MapStepCount",
        "variable" : ["item", "tgt"]
      }]
    }]
  },
  {
    "name" : "MapStepCount",
    "typeMode" : "none",
    "documentation" : "Direct step count mapping",
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
        "name" : "ProcessDate",
        "source" : [{
          "context" : "answer",
          "element" : "item",
          "variable" : "dtItem",
          "condition" : "linkId = 'date'"
        }],
        "rule" : [{
          "name" : "ExtractDate",
          "source" : [{
            "context" : "dtItem",
            "element" : "answer",
            "variable" : "dtAns"
          }],
          "rule" : [{
            "name" : "SetEffectiveFromDate",
            "source" : [{
              "context" : "dtAns",
              "element" : "valueDate",
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
        }]
      },
      {
        "name" : "MapValueQuantity",
        "source" : [{
          "context" : "answer",
          "element" : "valueQuantity",
          "variable" : "srcQty"
        }],
        "dependent" : [{
          "name" : "MapStepCountQuantity",
          "variable" : ["srcQty", "tgt"]
        }]
      }]
    }]
  },
  {
    "name" : "MapStepCountQuantity",
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
      "name" : "MapQuantityValue",
      "source" : [{
        "context" : "srcQty",
        "element" : "value",
        "variable" : "v"
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
      }],
      "rule" : [{
        "name" : "SetValue",
        "source" : [{
          "context" : "v",
          "element" : "value",
          "variable" : "numVal"
        }],
        "target" : [{
          "context" : "qty",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "numVal"
          }]
        }]
      },
      {
        "name" : "SetUnit",
        "source" : [{
          "context" : "srcQty"
        }],
        "target" : [{
          "context" : "qty",
          "contextType" : "variable",
          "element" : "unit",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "{steps}/d"
          }]
        }]
      },
      {
        "name" : "SetSystem",
        "source" : [{
          "context" : "srcQty"
        }],
        "target" : [{
          "context" : "qty",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://unitsofmeasure.org"
          }]
        }]
      },
      {
        "name" : "SetCode",
        "source" : [{
          "context" : "srcQty"
        }],
        "target" : [{
          "context" : "qty",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "{steps}/d"
          }]
        }]
      }]
    }]
  }]
}

```
