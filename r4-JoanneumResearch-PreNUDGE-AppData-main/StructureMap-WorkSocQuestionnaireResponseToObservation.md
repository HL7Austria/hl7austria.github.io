# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Work-SoC Q score to O score - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Work-SoC Q score to O score**

## StructureMap: Work-SoC Q score to O score 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/WorkSocQuestionnaireResponseToObservation | *Version*:0.1.0 | |
| Active as of 2026-08-06 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:WorkSocQuestionnaireResponseToObservation |

 
Work-SoC Q score to O score 

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
  "resourceType" : "StructureMap",
  "id" : "WorkSocQuestionnaireResponseToObservation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/WorkSocQuestionnaireResponseToObservation",
  "version" : "0.1.0",
  "name" : "WorkSocQuestionnaireResponseToObservation",
  "title" : "Work-SoC Q score to O score",
  "status" : "active",
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
  "description" : "Work-SoC Q score to O score",
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
    "name" : "WorkSocQuestionnaireResponseToObservation",
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
        "variable" : "meta"
      },
      {
        "context" : "meta",
        "contextType" : "variable",
        "element" : "profile",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-work-soc-score-observation"
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
          "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability"
        },
        {
          "valueString" : "work-soc-category-score"
        },
        {
          "valueString" : "Work-SoC category score"
        }]
      }]
    },
    {
      "name" : "ProcessWorkSoc",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "workSocGroup",
        "condition" : "linkId = 'work-soc'"
      }],
      "rule" : [{
        "name" : "MapComprehensibilityScore",
        "source" : [{
          "context" : "workSocGroup",
          "element" : "item",
          "variable" : "scoreItem",
          "condition" : "linkId = 'work-soc-comprehensibility-score'"
        }],
        "dependent" : [{
          "name" : "MapComprehensibilityScore",
          "variable" : ["scoreItem", "tgt"]
        }]
      },
      {
        "name" : "MapManageabilityScore",
        "source" : [{
          "context" : "workSocGroup",
          "element" : "item",
          "variable" : "scoreItem",
          "condition" : "linkId = 'work-soc-manageability-score'"
        }],
        "dependent" : [{
          "name" : "MapManageabilityScore",
          "variable" : ["scoreItem", "tgt"]
        }]
      },
      {
        "name" : "MapMeaningfulnessScore",
        "source" : [{
          "context" : "workSocGroup",
          "element" : "item",
          "variable" : "scoreItem",
          "condition" : "linkId = 'work-soc-meaningfulness-score'"
        }],
        "dependent" : [{
          "name" : "MapMeaningfulnessScore",
          "variable" : ["scoreItem", "tgt"]
        }]
      }]
    }]
  },
  {
    "name" : "MapComprehensibilityScore",
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
          "element" : "valueDecimal",
          "variable" : "val"
        }],
        "rule" : [{
          "name" : "SetComponent",
          "source" : [{
            "context" : "val",
            "element" : "value",
            "variable" : "numVal"
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
              "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability"
            },
            {
              "valueString" : "work-soc-comprehensibility"
            },
            {
              "valueString" : "Work-SoC comprehensibility score"
            }]
          },
          {
            "context" : "comp",
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
              "valueString" : "score"
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
              "valueString" : "{score}"
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "MapManageabilityScore",
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
          "element" : "valueDecimal",
          "variable" : "val"
        }],
        "rule" : [{
          "name" : "SetComponent",
          "source" : [{
            "context" : "val",
            "element" : "value",
            "variable" : "numVal"
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
              "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability"
            },
            {
              "valueString" : "work-soc-manageability"
            },
            {
              "valueString" : "Work-SoC manageability score"
            }]
          },
          {
            "context" : "comp",
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
              "valueString" : "score"
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
              "valueString" : "{score}"
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "MapMeaningfulnessScore",
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
          "element" : "valueDecimal",
          "variable" : "val"
        }],
        "rule" : [{
          "name" : "SetComponent",
          "source" : [{
            "context" : "val",
            "element" : "value",
            "variable" : "numVal"
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
              "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability"
            },
            {
              "valueString" : "work-soc-meaningfulness"
            },
            {
              "valueString" : "Work-SoC meaningfulness score"
            }]
          },
          {
            "context" : "comp",
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
              "valueString" : "score"
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
              "valueString" : "{score}"
            }]
          }]
        }]
      }]
    }]
  }]
}

```
