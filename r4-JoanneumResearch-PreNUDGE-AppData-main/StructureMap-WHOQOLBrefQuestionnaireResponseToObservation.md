# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\WHOQOL-BREF Q score to O score - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **WHOQOL-BREF Q score to O score**

## StructureMap: WHOQOL-BREF Q score to O score 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/WHOQOLBrefQuestionnaireResponseToObservation | *Version*:0.1.0 | |
| Active as of 2026-06-22 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:WHOQOLBrefQuestionnaireResponseToObservation |

 
WHOQOL-BREF Q score to O score 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-06-22

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "WHOQOLBrefQuestionnaireResponseToObservation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/WHOQOLBrefQuestionnaireResponseToObservation",
  "version" : "0.1.0",
  "name" : "WHOQOLBrefQuestionnaireResponseToObservation",
  "title" : "WHOQOL-BREF Q score to O score",
  "status" : "active",
  "date" : "2026-06-22T13:57:07+00:00",
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
  "description" : "WHOQOL-BREF Q score to O score",
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
    "name" : "WHOQOLBrefQuestionnaireResponseToObservation",
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
          "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-whoqol-bref-score-observation"
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
          "valueString" : "http://snomed.info/sct"
        },
        {
          "valueString" : "405152002"
        },
        {
          "valueString" : "Quality of life"
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
      "name" : "ProcessGeneral",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "generalGroup",
        "condition" : "linkId = 'general'"
      }],
      "rule" : [{
        "name" : "MapGeneralScore",
        "source" : [{
          "context" : "generalGroup",
          "element" : "item",
          "variable" : "scoreItem",
          "condition" : "linkId = 'general-score'"
        }],
        "dependent" : [{
          "name" : "MapGeneralScore",
          "variable" : ["scoreItem", "tgt"]
        }]
      }]
    },
    {
      "name" : "ProcessDomain1",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "domain1Group",
        "condition" : "linkId = 'domain1'"
      }],
      "rule" : [{
        "name" : "MapDomain1Score",
        "source" : [{
          "context" : "domain1Group",
          "element" : "item",
          "variable" : "scoreItem",
          "condition" : "linkId = 'domain1-score'"
        }],
        "dependent" : [{
          "name" : "MapPhysicalScore",
          "variable" : ["scoreItem", "tgt"]
        }]
      }]
    },
    {
      "name" : "ProcessDomain2",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "domain2Group",
        "condition" : "linkId = 'domain2'"
      }],
      "rule" : [{
        "name" : "MapDomain2Score",
        "source" : [{
          "context" : "domain2Group",
          "element" : "item",
          "variable" : "scoreItem",
          "condition" : "linkId = 'domain2-score'"
        }],
        "dependent" : [{
          "name" : "MapPsychologicalScore",
          "variable" : ["scoreItem", "tgt"]
        }]
      }]
    },
    {
      "name" : "ProcessDomain3",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "domain3Group",
        "condition" : "linkId = 'domain3'"
      }],
      "rule" : [{
        "name" : "MapDomain3Score",
        "source" : [{
          "context" : "domain3Group",
          "element" : "item",
          "variable" : "scoreItem",
          "condition" : "linkId = 'domain3-score'"
        }],
        "dependent" : [{
          "name" : "MapRelationshipsScore",
          "variable" : ["scoreItem", "tgt"]
        }]
      }]
    },
    {
      "name" : "ProcessDomain4",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "domain4Group",
        "condition" : "linkId = 'domain4'"
      }],
      "rule" : [{
        "name" : "MapDomain4Score",
        "source" : [{
          "context" : "domain4Group",
          "element" : "item",
          "variable" : "scoreItem",
          "condition" : "linkId = 'domain4-score'"
        }],
        "dependent" : [{
          "name" : "MapEnvironmentScore",
          "variable" : ["scoreItem", "tgt"]
        }]
      }]
    }]
  },
  {
    "name" : "MapGeneralScore",
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
        "name" : "ExtractValue",
        "source" : [{
          "context" : "answer",
          "element" : "valueDecimal",
          "variable" : "val"
        }],
        "rule" : [{
          "name" : "SetComponent",
          "source" : [{
            "context" : "val",
            "element" : "value",
            "variable" : "numVal"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "component",
            "variable" : "comp"
          },
          {
            "context" : "comp",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "cc",
            "parameter" : [{
              "valueString" : "http://snomed.info/sct"
            },
            {
              "valueString" : "60132005"
            },
            {
              "valueString" : "Generalized"
            }]
          },
          {
            "context" : "comp",
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
              "valueString" : "score"
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
              "valueString" : "{score}"
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "MapPhysicalScore",
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
        "name" : "ExtractValue",
        "source" : [{
          "context" : "answer",
          "element" : "valueDecimal",
          "variable" : "val"
        }],
        "rule" : [{
          "name" : "SetComponent",
          "source" : [{
            "context" : "val",
            "element" : "value",
            "variable" : "numVal"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "component",
            "variable" : "comp"
          },
          {
            "context" : "comp",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "cc",
            "parameter" : [{
              "valueString" : "http://snomed.info/sct"
            },
            {
              "valueString" : "19388002"
            },
            {
              "valueString" : "Physical"
            }]
          },
          {
            "context" : "comp",
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
              "valueString" : "score"
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
              "valueString" : "{score}"
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "MapPsychologicalScore",
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
        "name" : "ExtractValue",
        "source" : [{
          "context" : "answer",
          "element" : "valueDecimal",
          "variable" : "val"
        }],
        "rule" : [{
          "name" : "SetComponent",
          "source" : [{
            "context" : "val",
            "element" : "value",
            "variable" : "numVal"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "component",
            "variable" : "comp"
          },
          {
            "context" : "comp",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "cc",
            "parameter" : [{
              "valueString" : "http://snomed.info/sct"
            },
            {
              "valueString" : "60224009"
            },
            {
              "valueString" : "Psychologic"
            }]
          },
          {
            "context" : "comp",
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
              "valueString" : "score"
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
              "valueString" : "{score}"
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "MapRelationshipsScore",
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
        "name" : "ExtractValue",
        "source" : [{
          "context" : "answer",
          "element" : "valueDecimal",
          "variable" : "val"
        }],
        "rule" : [{
          "name" : "SetComponent",
          "source" : [{
            "context" : "val",
            "element" : "value",
            "variable" : "numVal"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "component",
            "variable" : "comp"
          },
          {
            "context" : "comp",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "cc",
            "parameter" : [{
              "valueString" : "http://snomed.info/sct"
            },
            {
              "valueString" : "272151006"
            },
            {
              "valueString" : "Relationships"
            }]
          },
          {
            "context" : "comp",
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
              "valueString" : "score"
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
              "valueString" : "{score}"
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "MapEnvironmentScore",
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
        "name" : "ExtractValue",
        "source" : [{
          "context" : "answer",
          "element" : "valueDecimal",
          "variable" : "val"
        }],
        "rule" : [{
          "name" : "SetComponent",
          "source" : [{
            "context" : "val",
            "element" : "value",
            "variable" : "numVal"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "component",
            "variable" : "comp"
          },
          {
            "context" : "comp",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "cc",
            "parameter" : [{
              "valueString" : "http://snomed.info/sct"
            },
            {
              "valueString" : "276339004"
            },
            {
              "valueString" : "Environment"
            }]
          },
          {
            "context" : "comp",
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
              "valueString" : "score"
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
              "valueString" : "{score}"
            }]
          }]
        }]
      }]
    }]
  }]
}

```
