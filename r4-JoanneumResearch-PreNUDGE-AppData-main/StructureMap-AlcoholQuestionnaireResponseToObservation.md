# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Alcohol Use QuestionnaireResponse to Observation - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Alcohol Use QuestionnaireResponse to Observation**

## StructureMap: Alcohol Use QuestionnaireResponse to Observation 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/AlcoholQuestionnaireResponseToObservation | *Version*:0.1.0 | |
| Active as of 2026-03-01 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AlcoholQuestionnaireResponseToObservation |

 
Alcohol Use QuestionnaireResponse to Observation 



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "AlcoholQuestionnaireResponseToObservation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/AlcoholQuestionnaireResponseToObservation",
  "version" : "0.1.0",
  "name" : "AlcoholQuestionnaireResponseToObservation",
  "title" : "Alcohol Use QuestionnaireResponse to Observation",
  "status" : "active",
  "date" : "2026-03-01T15:46:45+00:00",
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
  "description" : "Alcohol Use QuestionnaireResponse to Observation",
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
  "import" : ["http://hl7.org/fhir/StructureMap/*"],
  "group" : [{
    "name" : "AlcoholQuestionnaireResponseToObservation",
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
        "context" : "src"
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
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "code",
        "variable" : "code"
      },
      {
        "context" : "code",
        "contextType" : "variable",
        "element" : "coding",
        "variable" : "coding"
      }],
      "rule" : [{
        "name" : "SetCodeSystem",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "coding",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://loinc.org"
          }]
        }]
      },
      {
        "name" : "SetCodeCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "coding",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "74013-4"
          }]
        }]
      },
      {
        "name" : "SetCodeDisplay",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "coding",
          "contextType" : "variable",
          "element" : "display",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "Alcoholic drinks per day"
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
        "condition" : "linkId = 'alcohol-frequency'"
      }],
      "dependent" : [{
        "name" : "MapAlcoholFrequency",
        "variable" : ["item", "tgt"]
      }]
    }]
  },
  {
    "name" : "MapAlcoholFrequency",
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
          "element" : "valueCoding",
          "variable" : "coding"
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
          "name" : "MapDaily",
          "source" : [{
            "context" : "coding",
            "condition" : "code = '69620002'"
          }],
          "target" : [{
            "context" : "qty",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueInteger" : 1
            }]
          }]
        },
        {
          "name" : "MapSixTimesWeekly",
          "source" : [{
            "context" : "coding",
            "condition" : "code = '307447001'"
          }],
          "target" : [{
            "context" : "qty",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueDecimal" : 0.79
            }]
          }]
        },
        {
          "name" : "MapThreeToFourTimesWeekly",
          "source" : [{
            "context" : "coding",
            "condition" : "code = '396113003'"
          }],
          "target" : [{
            "context" : "qty",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueDecimal" : 0.5
            }]
          }]
        },
        {
          "name" : "MapTwiceWeekly",
          "source" : [{
            "context" : "coding",
            "condition" : "code = '229800002'"
          }],
          "target" : [{
            "context" : "qty",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueDecimal" : 0.21
            }]
          }]
        },
        {
          "name" : "MapThreeTimesMonthly",
          "source" : [{
            "context" : "coding",
            "condition" : "code = '307452006'"
          }],
          "target" : [{
            "context" : "qty",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueDecimal" : 0.08
            }]
          }]
        },
        {
          "name" : "MapOnceMonthly",
          "source" : [{
            "context" : "coding",
            "condition" : "code = '307450003'"
          }],
          "target" : [{
            "context" : "qty",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueDecimal" : 0.03
            }]
          }]
        },
        {
          "name" : "MapEveryTwoMonths",
          "source" : [{
            "context" : "coding",
            "condition" : "code = '445547001'"
          }],
          "target" : [{
            "context" : "qty",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueDecimal" : 0.02
            }]
          }]
        },
        {
          "name" : "MapCurrentNonDrinker",
          "source" : [{
            "context" : "coding",
            "condition" : "code = '105542008'"
          }],
          "target" : [{
            "context" : "qty",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueDecimal" : 0.001
            }]
          }]
        },
        {
          "name" : "MapLifetimeNonDrinker",
          "source" : [{
            "context" : "coding",
            "condition" : "code = '783261004'"
          }],
          "target" : [{
            "context" : "qty",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueInteger" : 0
            }]
          }]
        },
        {
          "name" : "SetUnit",
          "source" : [{
            "context" : "coding"
          }],
          "target" : [{
            "context" : "qty",
            "contextType" : "variable",
            "element" : "unit",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "drinks/day"
            }]
          }]
        },
        {
          "name" : "SetUnitSystem",
          "source" : [{
            "context" : "coding"
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
          "name" : "SetUnitCode",
          "source" : [{
            "context" : "coding"
          }],
          "target" : [{
            "context" : "qty",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "{drinks}/d"
            }]
          }]
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
  }]
}

```
