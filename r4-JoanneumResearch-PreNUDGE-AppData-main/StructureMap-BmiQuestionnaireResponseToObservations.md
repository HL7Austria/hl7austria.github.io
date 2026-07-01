# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\BMI Q to Body Height, Body Weight and BMI Observations Bundle - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BMI Q to Body Height, Body Weight and BMI Observations Bundle**

## StructureMap: BMI Q to Body Height, Body Weight and BMI Observations Bundle 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/BmiQuestionnaireResponseToObservations | *Version*:0.1.0 | |
| Active as of 2026-07-01 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:BmiQuestionnaireResponseToObservations |

 
BMI Q to Body Height, Body Weight and BMI Observations Bundle 

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
  "id" : "BmiQuestionnaireResponseToObservations",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/BmiQuestionnaireResponseToObservations",
  "version" : "0.1.0",
  "name" : "BmiQuestionnaireResponseToObservations",
  "title" : "BMI Q to Body Height, Body Weight and BMI Observations Bundle",
  "status" : "active",
  "date" : "2026-07-01T08:47:20+00:00",
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
  "description" : "BMI Q to Body Height, Body Weight and BMI Observations Bundle",
  "structure" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
    "mode" : "source",
    "alias" : "QR"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
    "mode" : "target",
    "alias" : "Bundle"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Observation",
    "mode" : "target",
    "alias" : "Obs"
  }],
  "group" : [{
    "name" : "BmiQuestionnaireResponseToObservations",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "QR",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Bundle",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "SetBundleType",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "type",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "collection"
        }]
      }]
    },
    {
      "name" : "CreateBodyHeightEntry",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "entry",
        "variable" : "heightEntry"
      },
      {
        "context" : "heightEntry",
        "contextType" : "variable",
        "element" : "resource",
        "variable" : "heightObs",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Observation"
        }]
      }],
      "rule" : [{
        "name" : "MapBodyHeightObservation",
        "source" : [{
          "context" : "src"
        }],
        "dependent" : [{
          "name" : "MapBodyHeightObservation",
          "variable" : ["src", "heightObs"]
        }]
      }]
    },
    {
      "name" : "CreateBodyWeightEntry",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "entry",
        "variable" : "weightEntry"
      },
      {
        "context" : "weightEntry",
        "contextType" : "variable",
        "element" : "resource",
        "variable" : "weightObs",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Observation"
        }]
      }],
      "rule" : [{
        "name" : "MapBodyWeightObservation",
        "source" : [{
          "context" : "src"
        }],
        "dependent" : [{
          "name" : "MapBodyWeightObservation",
          "variable" : ["src", "weightObs"]
        }]
      }]
    },
    {
      "name" : "CreateBmiEntry",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "entry",
        "variable" : "bmiEntry"
      },
      {
        "context" : "bmiEntry",
        "contextType" : "variable",
        "element" : "resource",
        "variable" : "bmiObs",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Observation"
        }]
      }],
      "rule" : [{
        "name" : "MapBodyMassIndexObservation",
        "source" : [{
          "context" : "src"
        }],
        "dependent" : [{
          "name" : "MapBodyMassIndexObservation",
          "variable" : ["src", "bmiObs"]
        }]
      }]
    }]
  },
  {
    "name" : "SetCommonObservationFields",
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
      "name" : "setFinalStatus",
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
      "name" : "copySubject",
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
      "name" : "copyAuthoredToEffective",
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
      "name" : "copyAuthoredToIssued",
      "source" : [{
        "context" : "src",
        "element" : "authored",
        "variable" : "authored"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "issued",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "authored"
        }]
      }]
    },
    {
      "name" : "setManualMethod",
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
      "name" : "setDerivedFrom",
      "source" : [{
        "context" : "src",
        "element" : "id",
        "variable" : "id"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "derivedFrom",
        "variable" : "reference",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Reference"
        }]
      }],
      "rule" : [{
        "name" : "setDerivedFromReference",
        "source" : [{
          "context" : "id"
        }],
        "target" : [{
          "context" : "reference",
          "contextType" : "variable",
          "element" : "reference",
          "transform" : "append",
          "parameter" : [{
            "valueString" : "QuestionnaireResponse/"
          },
          {
            "valueId" : "id"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "MapBodyHeightObservation",
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
      "name" : "SetCommonFields",
      "source" : [{
        "context" : "src"
      }],
      "dependent" : [{
        "name" : "SetCommonObservationFields",
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
          "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-bodyheight-observation"
        }]
      }]
    },
    {
      "name" : "SetCategory",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "category",
        "transform" : "cc",
        "parameter" : [{
          "valueString" : "http://terminology.hl7.org/CodeSystem/observation-category"
        },
        {
          "valueString" : "vital-signs"
        },
        {
          "valueString" : "Vital Signs"
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
          "valueString" : "8302-2"
        },
        {
          "valueString" : "Body height"
        }]
      }]
    },
    {
      "name" : "SetIdentifier",
      "source" : [{
        "context" : "src",
        "element" : "identifier",
        "variable" : "identifier"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "identifier",
        "variable" : "targetIdentifier",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Identifier"
        }]
      }],
      "rule" : [{
        "name" : "SetIdentifierSystem",
        "source" : [{
          "context" : "identifier",
          "element" : "system",
          "variable" : "system"
        }],
        "target" : [{
          "context" : "targetIdentifier",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "system"
          }]
        }]
      },
      {
        "name" : "SetIdentifierValue",
        "source" : [{
          "context" : "identifier",
          "element" : "value",
          "variable" : "value"
        }],
        "target" : [{
          "context" : "targetIdentifier",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "append",
          "parameter" : [{
            "valueId" : "value"
          },
          {
            "valueString" : "-bodyheight"
          }]
        }]
      }]
    },
    {
      "name" : "ProcessBmiGroup",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "bmiGroup",
        "condition" : "bmiGroup.linkId = 'bmi'"
      }],
      "rule" : [{
        "name" : "ProcessHeightItem",
        "source" : [{
          "context" : "bmiGroup",
          "element" : "item",
          "variable" : "heightItem",
          "condition" : "heightItem.linkId = 'height-cm'"
        }],
        "rule" : [{
          "name" : "ProcessAnswer",
          "source" : [{
            "context" : "heightItem",
            "element" : "answer",
            "variable" : "answer"
          }],
          "rule" : [{
            "name" : "ExtractPrimitiveValue",
            "source" : [{
              "context" : "answer",
              "element" : "value",
              "variable" : "val"
            }],
            "rule" : [{
              "name" : "SetValue",
              "source" : [{
                "context" : "val",
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
                  "valueString" : "cm"
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
                  "valueString" : "cm"
                }]
              }]
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "MapBodyWeightObservation",
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
      "name" : "SetCommonFields",
      "source" : [{
        "context" : "src"
      }],
      "dependent" : [{
        "name" : "SetCommonObservationFields",
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
          "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-bodyweight-observation"
        }]
      }]
    },
    {
      "name" : "SetCategory",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "category",
        "transform" : "cc",
        "parameter" : [{
          "valueString" : "http://terminology.hl7.org/CodeSystem/observation-category"
        },
        {
          "valueString" : "vital-signs"
        },
        {
          "valueString" : "Vital Signs"
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
          "valueString" : "29463-7"
        },
        {
          "valueString" : "Body weight"
        }]
      }]
    },
    {
      "name" : "SetIdentifier",
      "source" : [{
        "context" : "src",
        "element" : "identifier",
        "variable" : "identifier"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "identifier",
        "variable" : "targetIdentifier",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Identifier"
        }]
      }],
      "rule" : [{
        "name" : "SetIdentifierSystem",
        "source" : [{
          "context" : "identifier",
          "element" : "system",
          "variable" : "system"
        }],
        "target" : [{
          "context" : "targetIdentifier",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "system"
          }]
        }]
      },
      {
        "name" : "SetIdentifierValue",
        "source" : [{
          "context" : "identifier",
          "element" : "value",
          "variable" : "value"
        }],
        "target" : [{
          "context" : "targetIdentifier",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "append",
          "parameter" : [{
            "valueId" : "value"
          },
          {
            "valueString" : "-bodyweight"
          }]
        }]
      }]
    },
    {
      "name" : "ProcessBmiGroup",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "bmiGroup",
        "condition" : "bmiGroup.linkId = 'bmi'"
      }],
      "rule" : [{
        "name" : "ProcessWeightItem",
        "source" : [{
          "context" : "bmiGroup",
          "element" : "item",
          "variable" : "weightItem",
          "condition" : "weightItem.linkId = 'weight-kg'"
        }],
        "rule" : [{
          "name" : "ProcessAnswer",
          "source" : [{
            "context" : "weightItem",
            "element" : "answer",
            "variable" : "answer"
          }],
          "rule" : [{
            "name" : "ExtractPrimitiveValue",
            "source" : [{
              "context" : "answer",
              "element" : "value",
              "variable" : "val"
            }],
            "rule" : [{
              "name" : "SetValue",
              "source" : [{
                "context" : "val",
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
                  "valueString" : "kg"
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
                  "valueString" : "kg"
                }]
              }]
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "MapBodyMassIndexObservation",
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
      "name" : "SetCommonFields",
      "source" : [{
        "context" : "src"
      }],
      "dependent" : [{
        "name" : "SetCommonObservationFields",
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
          "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-bmi-observation"
        }]
      }]
    },
    {
      "name" : "SetCategory",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "category",
        "transform" : "cc",
        "parameter" : [{
          "valueString" : "http://terminology.hl7.org/CodeSystem/observation-category"
        },
        {
          "valueString" : "vital-signs"
        },
        {
          "valueString" : "Vital Signs"
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
          "valueString" : "39156-5"
        },
        {
          "valueString" : "Body mass index (BMI) [Ratio]"
        }]
      }]
    },
    {
      "name" : "SetIdentifier",
      "source" : [{
        "context" : "src",
        "element" : "identifier",
        "variable" : "identifier"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "identifier",
        "variable" : "targetIdentifier",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Identifier"
        }]
      }],
      "rule" : [{
        "name" : "SetIdentifierSystem",
        "source" : [{
          "context" : "identifier",
          "element" : "system",
          "variable" : "system"
        }],
        "target" : [{
          "context" : "targetIdentifier",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "system"
          }]
        }]
      },
      {
        "name" : "SetIdentifierValue",
        "source" : [{
          "context" : "identifier",
          "element" : "value",
          "variable" : "value"
        }],
        "target" : [{
          "context" : "targetIdentifier",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "append",
          "parameter" : [{
            "valueId" : "value"
          },
          {
            "valueString" : "-bmi"
          }]
        }]
      }]
    },
    {
      "name" : "ProcessBmiGroup",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "bmiGroup",
        "condition" : "bmiGroup.linkId = 'bmi'"
      }],
      "rule" : [{
        "name" : "ProcessBmiItem",
        "source" : [{
          "context" : "bmiGroup",
          "element" : "item",
          "variable" : "bmiItem",
          "condition" : "bmiItem.linkId = 'bmi-kg-m2'"
        }],
        "rule" : [{
          "name" : "ProcessAnswer",
          "source" : [{
            "context" : "bmiItem",
            "element" : "answer",
            "variable" : "answer"
          }],
          "rule" : [{
            "name" : "ExtractPrimitiveValue",
            "source" : [{
              "context" : "answer",
              "element" : "value",
              "variable" : "val"
            }],
            "rule" : [{
              "name" : "SetValue",
              "source" : [{
                "context" : "val",
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
                  "valueString" : "kg/m2"
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
                  "valueString" : "kg/m2"
                }]
              }]
            }]
          }]
        }]
      }]
    }]
  }]
}

```
