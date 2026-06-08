# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Physical Activity Minutes Q to O - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Physical Activity Minutes Q to O**

## StructureMap: Physical Activity Minutes Q to O 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/PhysicalActivityMinutesQtoO | *Version*:0.1.0 | |
| Draft as of 2026-06-08 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:Physical Activity Minutes Q to O |

 
Physical Activity EHIS-PAQ Q7 / ATHIS PE7 to O (aggregate-only variant) 



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "PhysicalActivityMinutesQtoO",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/PhysicalActivityMinutesQtoO",
  "version" : "0.1.0",
  "name" : "Physical Activity Minutes Q to O",
  "status" : "draft",
  "date" : "2026-06-08T06:51:44+00:00",
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
    "documentation" : "---------------------------------------------------------------------------\r\nQ7 → component[aggregateActivity]  (LOINC 101691-4)\r\nFormula: aggregateMinutes = (Q7-hours × 60) + Q7-minutes\r\nThis is a direct transcription of the patient-reported total time.\r\nNo intensity weighting is applied because Q7 does not capture intensity.\r\nThe ×2 vigorous weighting (WHO/IPAQ) is ONLY applied when a wearable\r\nseparately measures moderate and vigorous minutes (wearable variant).\r\nNote on FML arithmetic / MaLaC-HD compatibility:\r\nThis map uses evaluate() with integer arithmetic (* 60, +) which is NOT\r\nsupported by MaLaC-HD 1.6.0. MaLaC-HD fails at parse time with\r\n\"Param type 14 not implemented\" (integer literal in FHIRPath expression).\r\nThe questionnaire captures hours and minutes as separate integer items,\r\nso no MaLaC-HD compatible rewrite exists without redesigning the questionnaire\r\nor changing the output unit. Use matchbox or another evaluate()-capable engine.\r\n---------------------------------------------------------------------------",
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
      "name" : "MapAggregateComponent",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "aggComp"
      }],
      "rule" : [{
        "name" : "SetAggregateCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
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
        }]
      },
      {
        "name" : "SetAggregateQuantity",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "aggComp",
          "contextType" : "variable",
          "element" : "value",
          "variable" : "qty",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Quantity"
          }]
        }],
        "rule" : [{
          "name" : "ComputeAggregateMinutes",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "qty",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "evaluate",
            "parameter" : [{
              "valueId" : "src"
            },
            {
              "valueString" : "(item.where(linkId = 'Q7-hours').answer.valueInteger * 60) + item.where(linkId = 'Q7-minutes').answer.valueInteger"
            }]
          }]
        },
        {
          "name" : "SetUnit",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "qty",
            "contextType" : "variable",
            "element" : "unit",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "min/wk"
            }]
          }]
        },
        {
          "name" : "SetSystem",
          "source" : [{
            "context" : "src"
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
          "name" : "SetUCUM",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
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
}

```
