# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Blood Glucose Q to O - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Blood Glucose Q to O**

## StructureMap: Blood Glucose Q to O 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/BloodGlucoseQuestionnaireResponseToObservation | *Version*:0.1.0 | |
| Active as of 2026-03-02 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:BloodGlucoseQuestionnaireResponseToObservation |

 
Blood Glucose Q to O 



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
  "date" : "2026-03-02T16:20:44+00:00",
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
  "import" : ["http://hl7.org/fhir/StructureMap/*"],
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
      "name" : "SetStatus",
      "source" : [{
        "context" : "src",
        "element" : "status",
        "variable" : "s"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "final"
        }]
      }]
    },
    {
      "name" : "SetCode",
      "source" : [{
        "context" : "src",
        "element" : "status",
        "variable" : "s"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "code",
        "variable" : "code"
      }],
      "rule" : [{
        "name" : "SetCodeCoding",
        "source" : [{
          "context" : "s",
          "variable" : "x"
        }],
        "target" : [{
          "context" : "code",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "coding"
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://loinc.org"
          }]
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "1556-0"
          }]
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "display",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "Fasting glucose [Mass/volume] in Capillary blood"
          }]
        }]
      }]
    },
    {
      "name" : "SetMethod",
      "source" : [{
        "context" : "src",
        "element" : "status",
        "variable" : "s"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "method",
        "variable" : "method"
      }],
      "rule" : [{
        "name" : "SetMethodCoding",
        "source" : [{
          "context" : "s",
          "variable" : "x"
        }],
        "target" : [{
          "context" : "method",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "mc"
        },
        {
          "context" : "mc",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://snomed.info/sct"
          }]
        },
        {
          "context" : "mc",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "87982008"
          }]
        },
        {
          "context" : "mc",
          "contextType" : "variable",
          "element" : "display",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "Manual"
          }]
        }]
      }]
    },
    {
      "name" : "SetSubject",
      "source" : [{
        "context" : "src",
        "element" : "subject",
        "variable" : "subject"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "subject",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "subject"
        }]
      }]
    },
    {
      "name" : "SetEffective",
      "source" : [{
        "context" : "src",
        "element" : "authored",
        "variable" : "authored"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "effective",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "authored"
        }]
      }]
    },
    {
      "name" : "ProcessItem",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'blood-glucose-now'"
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
        "name" : "MapValueQuantity",
        "source" : [{
          "context" : "answer",
          "type" : "Quantity",
          "element" : "value",
          "variable" : "srcQty"
        }],
        "dependent" : [{
          "name" : "MapQuantity",
          "variable" : ["srcQty", "tgt"]
        }]
      },
      {
        "name" : "ProcessComment",
        "source" : [{
          "context" : "answer",
          "element" : "item",
          "variable" : "commentItem",
          "condition" : "linkId = 'comment'"
        }],
        "rule" : [{
          "name" : "ProcessCommentAnswer",
          "source" : [{
            "context" : "commentItem",
            "element" : "answer",
            "variable" : "commentAnswer"
          }],
          "rule" : [{
            "name" : "SetNote",
            "source" : [{
              "context" : "commentAnswer",
              "element" : "value",
              "variable" : "commentValue"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "note",
              "variable" : "note"
            },
            {
              "context" : "note",
              "contextType" : "variable",
              "element" : "text",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "commentValue"
              }]
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "MapQuantity",
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
      },
      {
        "context" : "qty",
        "contextType" : "variable",
        "element" : "value",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "v"
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
}

```
