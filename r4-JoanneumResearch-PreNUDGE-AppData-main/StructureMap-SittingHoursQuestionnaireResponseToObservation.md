# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Sitting Hours Q to O - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sitting Hours Q to O**

## StructureMap: Sitting Hours Q to O 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/SittingHoursQuestionnaireResponseToObservation | *Version*:0.1.0 | |
| Active as of 2026-08-05 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:SittingHoursQuestionnaireResponseToObservation |

 
Sitting Hours EHIS-PAQ Q9 / ATHIS PE9 to O 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-08-05

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
  "date" : "2026-08-05T12:17:57+00:00",
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
      }],
      "documentation" : "Shared base: identifier copy, derivedFrom, subject, issued, status, method."
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
      }],
      "documentation" : "Target profile"
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
      }],
      "documentation" : "Observation code"
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
      }],
      "documentation" : "effectiveDateTime from authored (Q9 has no embedded date sub-item)"
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
      }],
      "documentation" : "Map Q9 group to Observation.value"
    }]
  },
  {
    "name" : "MapQ9ToSittingHours",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nQ9 → Observation.valueQuantity (h)\r\nQ9-total-hours (decimal, SDC calculatedExpression) is read using the\r\nMaLaC-HD 1.6.0 two-level .value unwrap pattern (valueDecimal → .value).\r\nThe arithmetic Q9-hours + (Q9-minutes / 60) is pre-computed by the\r\nquestionnaire; this map copies the result without evaluate().\r\n---------------------------------------------------------------------------",
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
      "name" : "GetTotalHours",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "totHours",
        "condition" : "linkId = 'Q9-total-hours'"
      }],
      "rule" : [{
        "name" : "GetAnswer",
        "source" : [{
          "context" : "totHours",
          "element" : "answer",
          "variable" : "ans"
        }],
        "rule" : [{
          "name" : "UnwrapDecimal",
          "source" : [{
            "context" : "ans",
            "element" : "valueDecimal",
            "variable" : "decElem"
          }],
          "rule" : [{
            "name" : "SetSittingQuantity",
            "source" : [{
              "context" : "decElem",
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
