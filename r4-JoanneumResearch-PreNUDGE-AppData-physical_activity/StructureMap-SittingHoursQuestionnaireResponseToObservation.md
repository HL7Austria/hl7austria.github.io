# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Sitting Hours Q to O - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sitting Hours Q to O**

## StructureMap: Sitting Hours Q to O 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/SittingHoursQuestionnaireResponseToObservation | *Version*:0.1.0 | |
| Active as of 2026-06-29 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:SittingHoursQuestionnaireResponseToObservation |

 
Sitting Hours EHIS-PAQ Q9 / ATHIS PE9 to O 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-06-29

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "SittingHoursQuestionnaireResponseToObservation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/SittingHoursQuestionnaireResponseToObservation",
  "version" : "0.1.0",
  "name" : "SittingHoursQuestionnaireResponseToObservation",
  "title" : "Sitting Hours Q to O",
  "status" : "active",
  "date" : "2026-06-29T13:58:40+00:00",
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
  "description" : "Sitting Hours EHIS-PAQ Q9 / ATHIS PE9 to O",
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
    "name" : "SittingHoursQuestionnaireResponseToObservation",
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
          "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-sitting-hours-observation"
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
          "valueString" : "87705-0"
        },
        {
          "valueString" : "Sedentary activity 24 hour"
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
      "name" : "ProcessQ9",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'Q9'"
      }],
      "dependent" : [{
        "name" : "MapQ9ToSittingHours",
        "variable" : ["item", "tgt"]
      }]
    }]
  },
  {
    "name" : "MapQ9ToSittingHours",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nQ9 → Observation.valueQuantity (h)\r\nOnly Q9-hours (integer) is mapped to Observation.valueQuantity.value.\r\nQ9-minutes is not included because MaLaC-HD does not support evaluate()\r\nwith complex FHIRPath expressions (arithmetic or multi-token paths).\r\nSub-hour precision requires an engine that supports evaluate(), e.g. matchbox.\r\n---------------------------------------------------------------------------",
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
      "name" : "ProcessHoursItem",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "hoursItem",
        "condition" : "linkId = 'Q9-hours'"
      }],
      "rule" : [{
        "name" : "ExtractHoursAnswer",
        "source" : [{
          "context" : "hoursItem",
          "element" : "answer",
          "variable" : "hoursAnswer"
        }],
        "rule" : [{
          "name" : "ExtractValue",
          "source" : [{
            "context" : "hoursAnswer",
            "element" : "valueInteger",
            "variable" : "hoursElem"
          }],
          "rule" : [{
            "name" : "SetSittingQuantity",
            "source" : [{
              "context" : "hoursElem",
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
                "valueString" : "h"
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
                "valueString" : "h"
              }]
            }]
          }]
        }]
      }]
    }]
  }]
}

```
