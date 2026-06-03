# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Alcohol Use Q mapping frequency to O drinks per day - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Alcohol Use Q mapping frequency to O drinks per day**

## StructureMap: Alcohol Use Q mapping frequency to O drinks per day 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/AlcoholQuestionnaireResponseToObservation | *Version*:0.1.0 | |
| Active as of 2026-06-03 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AlcoholQuestionnaireResponseToObservation |

 
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
  "date" : "2026-06-03T12:49:02+00:00",
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
  "import" : ["http://hl7.org/fhir/StructureMap/*",
  "https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/QuestionnaireResponseToObservationBase"],
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
          "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-alcoholuse-observation"
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
          "valueString" : "74013-4"
        },
        {
          "valueString" : "Alcoholic drinks per day"
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
        "element" : "effectiveDateTime",
        "variable" : "dt",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "dateTime"
        }]
      },
      {
        "context" : "dt",
        "contextType" : "variable",
        "element" : "value",
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
        "name" : "MapValueCoding",
        "source" : [{
          "context" : "answer",
          "element" : "valueCoding",
          "variable" : "coding"
        }],
        "dependent" : [{
          "name" : "MapAlcoholCodingToQuantity",
          "variable" : ["coding", "tgt"]
        }]
      }]
    }]
  },
  {
    "name" : "MapAlcoholCodingToQuantity",
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
          "valueString" : "1"
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
          "valueString" : "0.79"
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
          "valueString" : "0.5"
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
          "valueString" : "0.21"
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
          "valueString" : "0.08"
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
          "valueString" : "0.03"
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
          "valueString" : "0.02"
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
          "valueString" : "0.001"
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
          "valueString" : "0"
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
