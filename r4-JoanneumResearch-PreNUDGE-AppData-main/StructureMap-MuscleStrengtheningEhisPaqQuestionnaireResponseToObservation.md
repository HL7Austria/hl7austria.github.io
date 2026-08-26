# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Muscle Strengthening EHIS-PAQ Q8 / ATHIS PE8 to O - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Muscle Strengthening EHIS-PAQ Q8 / ATHIS PE8 to O**

## StructureMap: Muscle Strengthening EHIS-PAQ Q8 / ATHIS PE8 to O 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/MuscleStrengtheningEhisPaqQuestionnaireResponseToObservation | *Version*:0.1.0 | |
| Active as of 2026-08-26 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:MuscleStrengtheningEhisPaqQuestionnaireResponseToObservation |

 
Muscle Strengthening EHIS-PAQ Q8 / ATHIS PE8 to O 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-08-26

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "MuscleStrengtheningEhisPaqQuestionnaireResponseToObservation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/MuscleStrengtheningEhisPaqQuestionnaireResponseToObservation",
  "version" : "0.1.0",
  "name" : "MuscleStrengtheningEhisPaqQuestionnaireResponseToObservation",
  "title" : "Muscle Strengthening EHIS-PAQ Q8 / ATHIS PE8 to O",
  "status" : "active",
  "date" : "2026-08-26T07:06:07+00:00",
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
  "description" : "Muscle Strengthening EHIS-PAQ Q8 / ATHIS PE8 to O",
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
    "name" : "MuscleStrengtheningEhisPaqQuestionnaireResponseToObservation",
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
          "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-muscle-strengthening-observation"
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
          "valueString" : "82291-6"
        },
        {
          "valueString" : "Frequency of muscle-strengthening physical activity"
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
      "name" : "ProcessQ8",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'Q8'"
      }],
      "dependent" : [{
        "name" : "MapQ8",
        "variable" : ["item", "tgt"]
      }]
    }]
  },
  {
    "name" : "MapQ8",
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
          "name" : "MapQ8CodingToQuantity",
          "variable" : ["coding", "tgt"]
        }]
      }]
    }]
  },
  {
    "name" : "MapQ8CodingToQuantity",
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
      "name" : "Map1Day",
      "source" : [{
        "context" : "coding",
        "element" : "code",
        "variable" : "c",
        "condition" : "$this = 'activity-1-day'"
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
          "valueString" : "{sessions}/wk"
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
          "valueString" : "{sessions}/wk"
        }]
      }]
    },
    {
      "name" : "Map2Days",
      "source" : [{
        "context" : "coding",
        "element" : "code",
        "variable" : "c",
        "condition" : "$this = 'activity-2-days'"
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
          "valueString" : "2"
        }]
      },
      {
        "context" : "qty",
        "contextType" : "variable",
        "element" : "unit",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "{sessions}/wk"
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
          "valueString" : "{sessions}/wk"
        }]
      }]
    },
    {
      "name" : "Map3Days",
      "source" : [{
        "context" : "coding",
        "element" : "code",
        "variable" : "c",
        "condition" : "$this = 'activity-3-days'"
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
          "valueString" : "3"
        }]
      },
      {
        "context" : "qty",
        "contextType" : "variable",
        "element" : "unit",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "{sessions}/wk"
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
          "valueString" : "{sessions}/wk"
        }]
      }]
    },
    {
      "name" : "Map4Days",
      "source" : [{
        "context" : "coding",
        "element" : "code",
        "variable" : "c",
        "condition" : "$this = 'activity-4-days'"
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
          "valueString" : "4"
        }]
      },
      {
        "context" : "qty",
        "contextType" : "variable",
        "element" : "unit",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "{sessions}/wk"
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
          "valueString" : "{sessions}/wk"
        }]
      }]
    },
    {
      "name" : "Map5Days",
      "source" : [{
        "context" : "coding",
        "element" : "code",
        "variable" : "c",
        "condition" : "$this = 'activity-5-days'"
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
          "valueString" : "5"
        }]
      },
      {
        "context" : "qty",
        "contextType" : "variable",
        "element" : "unit",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "{sessions}/wk"
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
          "valueString" : "{sessions}/wk"
        }]
      }]
    },
    {
      "name" : "Map6Days",
      "source" : [{
        "context" : "coding",
        "element" : "code",
        "variable" : "c",
        "condition" : "$this = 'activity-6-days'"
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
          "valueString" : "6"
        }]
      },
      {
        "context" : "qty",
        "contextType" : "variable",
        "element" : "unit",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "{sessions}/wk"
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
          "valueString" : "{sessions}/wk"
        }]
      }]
    },
    {
      "name" : "Map7Days",
      "source" : [{
        "context" : "coding",
        "element" : "code",
        "variable" : "c",
        "condition" : "$this = 'activity-7-days'"
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
          "valueString" : "7"
        }]
      },
      {
        "context" : "qty",
        "contextType" : "variable",
        "element" : "unit",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "{sessions}/wk"
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
          "valueString" : "{sessions}/wk"
        }]
      }]
    },
    {
      "name" : "MapUnknown",
      "source" : [{
        "context" : "coding",
        "element" : "code",
        "variable" : "c",
        "condition" : "$this = 'meta-unknown'"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "dataAbsentReason",
        "transform" : "cc",
        "parameter" : [{
          "valueString" : "http://terminology.hl7.org/CodeSystem/data-absent-reason"
        },
        {
          "valueString" : "asked-unknown"
        },
        {
          "valueString" : "Asked But Unknown"
        }]
      }]
    },
    {
      "name" : "MapNotStated",
      "source" : [{
        "context" : "coding",
        "element" : "code",
        "variable" : "c",
        "condition" : "$this = 'meta-not-stated'"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "dataAbsentReason",
        "transform" : "cc",
        "parameter" : [{
          "valueString" : "http://terminology.hl7.org/CodeSystem/data-absent-reason"
        },
        {
          "valueString" : "asked-declined"
        },
        {
          "valueString" : "Asked But Declined"
        }]
      }]
    }]
  }]
}

```
