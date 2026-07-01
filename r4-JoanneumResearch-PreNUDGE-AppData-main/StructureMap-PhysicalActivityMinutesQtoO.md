# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Physical Activity Minutes Q to O - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Physical Activity Minutes Q to O**

## StructureMap: Physical Activity Minutes Q to O 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/PhysicalActivityMinutesQtoO | *Version*:0.1.0 | |
| Draft as of 2026-07-01 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:Physical Activity Minutes Q to O |

 
Physical Activity EHIS-PAQ Q7 / ATHIS PE7 to O (aggregate-only variant) 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-07-01

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "PhysicalActivityMinutesQtoO",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/PhysicalActivityMinutesQtoO",
  "version" : "0.1.0",
  "name" : "Physical Activity Minutes Q to O",
  "status" : "draft",
  "date" : "2026-07-01T10:20:10+00:00",
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
  "description" : "Physical Activity EHIS-PAQ Q7 / ATHIS PE7 to O (aggregate-only variant)",
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
    "name" : "PhysicalActivityQuestionnaireResponseToObservation",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMain entry group\r\n---------------------------------------------------------------------------",
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
      "name" : "SetMethodManual",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "method",
        "transform" : "cc",
        "parameter" : [{
          "valueString" : "http://snomed.info/sct"
        },
        {
          "valueString" : "87982008"
        },
        {
          "valueString" : "Manual"
        }]
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
          "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-physical-activity-minutes-observation"
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
          "valueString" : "101691-4"
        },
        {
          "valueString" : "Duration of physical activity"
        }]
      }]
    },
    {
      "name" : "SetEffectiveDateTime",
      "source" : [{
        "context" : "src",
        "element" : "authored",
        "variable" : "authored"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "effectiveDateTime",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "authored"
        }]
      }]
    },
    {
      "name" : "ProcessQ7",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "q7",
        "condition" : "linkId = 'Q7'"
      }],
      "dependent" : [{
        "name" : "MapQ7ToAggregate",
        "variable" : ["q7", "tgt"]
      }]
    }]
  },
  {
    "name" : "MapQ7ToAggregate",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nQ7 → component[aggregateActivity]  (LOINC 101691-4)\r\nFormula: aggregateMinutes = (Q7-hours × 60) + Q7-minutes\r\nThe arithmetic is performed by the questionnaire via the SDC\r\ncalculatedExpression extension on item Q7-total-minutes (FHIRPath:\r\n(%resource.item.where(linkId='Q7').item.where(linkId='Q7-hours').answer.valueInteger * 60)\r\n+ %resource.item.where(linkId='Q7').item.where(linkId='Q7-minutes').answer.valueInteger\r\n). This map reads the pre-computed integer — no evaluate() needed.\r\nMaLaC-HD 1.6.0 integer extraction pattern used here:\r\nanswer.valueInteger as intElem then { intElem.value as numVal → ... }\r\nThe double .value unwrap gives MaLaC-HD a raw primitive it can copy\r\ninto Quantity.value without a type-coercion crash (direct integer→decimal\r\ncopy fails in MaLaC-HD). All Quantity fields are set in one rule so that\r\nno cross-scope variable reference occurs (also a MaLaC-HD limitation).\r\n---------------------------------------------------------------------------",
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
      "name" : "GetTotalMins",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "totMins",
        "condition" : "linkId = 'Q7-total-minutes'"
      }],
      "rule" : [{
        "name" : "GetAnswer",
        "source" : [{
          "context" : "totMins",
          "element" : "answer",
          "variable" : "ans"
        }],
        "rule" : [{
          "name" : "UnwrapInteger",
          "source" : [{
            "context" : "ans",
            "element" : "valueInteger",
            "variable" : "intElem"
          }],
          "rule" : [{
            "name" : "SetAggregateComponent",
            "source" : [{
              "context" : "intElem",
              "element" : "value",
              "variable" : "numVal"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "component",
              "variable" : "aggComp"
            },
            {
              "context" : "aggComp",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "cc",
              "parameter" : [{
                "valueString" : "http://loinc.org"
              },
              {
                "valueString" : "101691-4"
              },
              {
                "valueString" : "Duration of physical activity"
              }]
            },
            {
              "context" : "aggComp",
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
                "valueString" : "min/wk"
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
                "valueString" : "min/wk"
              }]
            }]
          }]
        }]
      }]
    }]
  }]
}

```
