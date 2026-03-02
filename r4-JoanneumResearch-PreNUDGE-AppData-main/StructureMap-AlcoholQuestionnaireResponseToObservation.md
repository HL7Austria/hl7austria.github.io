# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Alcohol Use Q mapping frequency to O drinks per day - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Alcohol Use Q mapping frequency to O drinks per day**

## StructureMap: Alcohol Use Q mapping frequency to O drinks per day 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/AlcoholQuestionnaireResponseToObservation | *Version*:0.1.0 | |
| Active as of 2026-03-02 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AlcoholQuestionnaireResponseToObservation |

 
Alcohol Use Q mapping frequency to O drinks per day 



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "AlcoholQuestionnaireResponseToObservation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/AlcoholQuestionnaireResponseToObservation",
  "version" : "0.1.0",
  "name" : "AlcoholQuestionnaireResponseToObservation",
  "title" : "Alcohol Use Q mapping frequency to O drinks per day",
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
  "description" : "Alcohol Use Q mapping frequency to O drinks per day",
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
    "url" : "http://hl7.org/fhir/StructureDefinition/Coding",
    "mode" : "source",
    "alias" : "Coding"
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
            "valueString" : "74013-4"
          }]
        },
        {
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
          "type" : "Coding",
          "element" : "value",
          "variable" : "coding"
        }],
        "dependent" : [{
          "name" : "MapCodingToQuantity",
          "variable" : ["coding", "tgt"]
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
    "name" : "MapCodingToQuantity",
    "typeMode" : "none",
    "input" : [{
      "name" : "coding",
      "type" : "Coding",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Obs",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "MapDaily",
      "source" : [{
        "context" : "coding",
        "element" : "code",
        "variable" : "c",
        "condition" : "$this = '69620002'"
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
          "valueInteger" : 1
        }]
      },
      {
        "context" : "qty",
        "contextType" : "variable",
        "element" : "unit",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "drinks/day"
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
          "valueString" : "{drinks}/d"
        }]
      }]
    },
    {
      "name" : "MapSixTimesWeekly",
      "source" : [{
        "context" : "coding",
        "element" : "code",
        "variable" : "c",
        "condition" : "$this = '307447001'"
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
          "valueDecimal" : 0.79
        }]
      },
      {
        "context" : "qty",
        "contextType" : "variable",
        "element" : "unit",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "drinks/day"
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
          "valueString" : "{drinks}/d"
        }]
      }]
    },
    {
      "name" : "MapThreeToFourTimesWeekly",
      "source" : [{
        "context" : "coding",
        "element" : "code",
        "variable" : "c",
        "condition" : "$this = '396113003'"
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
          "valueDecimal" : 0.5
        }]
      },
      {
        "context" : "qty",
        "contextType" : "variable",
        "element" : "unit",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "drinks/day"
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
          "valueString" : "{drinks}/d"
        }]
      }]
    },
    {
      "name" : "MapTwiceWeekly",
      "source" : [{
        "context" : "coding",
        "element" : "code",
        "variable" : "c",
        "condition" : "$this = '229800002'"
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
          "valueDecimal" : 0.21
        }]
      },
      {
        "context" : "qty",
        "contextType" : "variable",
        "element" : "unit",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "drinks/day"
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
          "valueString" : "{drinks}/d"
        }]
      }]
    },
    {
      "name" : "MapThreeTimesMonthly",
      "source" : [{
        "context" : "coding",
        "element" : "code",
        "variable" : "c",
        "condition" : "$this = '307452006'"
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
          "valueDecimal" : 0.08
        }]
      },
      {
        "context" : "qty",
        "contextType" : "variable",
        "element" : "unit",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "drinks/day"
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
          "valueString" : "{drinks}/d"
        }]
      }]
    },
    {
      "name" : "MapOnceMonthly",
      "source" : [{
        "context" : "coding",
        "element" : "code",
        "variable" : "c",
        "condition" : "$this = '307450003'"
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
          "valueDecimal" : 0.03
        }]
      },
      {
        "context" : "qty",
        "contextType" : "variable",
        "element" : "unit",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "drinks/day"
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
          "valueString" : "{drinks}/d"
        }]
      }]
    },
    {
      "name" : "MapEveryTwoMonths",
      "source" : [{
        "context" : "coding",
        "element" : "code",
        "variable" : "c",
        "condition" : "$this = '445547001'"
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
          "valueDecimal" : 0.02
        }]
      },
      {
        "context" : "qty",
        "contextType" : "variable",
        "element" : "unit",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "drinks/day"
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
          "valueString" : "{drinks}/d"
        }]
      }]
    },
    {
      "name" : "MapCurrentNonDrinker",
      "source" : [{
        "context" : "coding",
        "element" : "code",
        "variable" : "c",
        "condition" : "$this = '105542008'"
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
          "valueInteger" : 0
        }]
      },
      {
        "context" : "qty",
        "contextType" : "variable",
        "element" : "unit",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "drinks/day"
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
          "valueString" : "{drinks}/d"
        }]
      }]
    },
    {
      "name" : "MapLifetimeNonDrinker",
      "source" : [{
        "context" : "coding",
        "element" : "code",
        "variable" : "c",
        "condition" : "$this = '783261004'"
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
          "valueInteger" : 0
        }]
      },
      {
        "context" : "qty",
        "contextType" : "variable",
        "element" : "unit",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "drinks/day"
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
          "valueString" : "{drinks}/d"
        }]
      }]
    }]
  }]
}

```
