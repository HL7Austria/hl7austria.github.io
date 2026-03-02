# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\WHOQOL-BREF Q score to O score - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **WHOQOL-BREF Q score to O score**

## StructureMap: WHOQOL-BREF Q score to O score 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/WHOQOLBrefQuestionnaireResponseToObservation | *Version*:0.1.0 | |
| Active as of 2026-03-02 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:WHOQOLBrefQuestionnaireResponseToObservation |

 
WHOQOL-BREF Q score to O score 



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
  "import" : ["http://hl7.org/fhir/StructureMap/*"],
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
            "valueString" : "http://snomed.info/sct"
          }]
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "405152002"
          }]
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "display",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "Quality of life assessment"
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
    "documentation" : "Generalized score component",
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
      "name" : "ProcessGeneralAnswer",
      "source" : [{
        "context" : "src",
        "element" : "answer",
        "variable" : "answer"
      }],
      "rule" : [{
        "name" : "SetGeneralComponent",
        "source" : [{
          "context" : "answer",
          "element" : "value",
          "variable" : "val"
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
          "variable" : "code"
        },
        {
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
            "valueString" : "http://snomed.info/sct"
          }]
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "60132005"
          }]
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "display",
          "transform" : "copy",
          "parameter" : [{
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
            "valueId" : "val"
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
  },
  {
    "name" : "MapPhysicalScore",
    "typeMode" : "none",
    "documentation" : "Physical health score component",
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
      "name" : "ProcessPhysicalAnswer",
      "source" : [{
        "context" : "src",
        "element" : "answer",
        "variable" : "answer"
      }],
      "rule" : [{
        "name" : "SetPhysicalComponent",
        "source" : [{
          "context" : "answer",
          "element" : "value",
          "variable" : "val"
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
          "variable" : "code"
        },
        {
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
            "valueString" : "http://snomed.info/sct"
          }]
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "19388002"
          }]
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "display",
          "transform" : "copy",
          "parameter" : [{
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
            "valueId" : "val"
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
  },
  {
    "name" : "MapPsychologicalScore",
    "typeMode" : "none",
    "documentation" : "Psychological well-being score component",
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
      "name" : "ProcessPsychologicalAnswer",
      "source" : [{
        "context" : "src",
        "element" : "answer",
        "variable" : "answer"
      }],
      "rule" : [{
        "name" : "SetPsychologicalComponent",
        "source" : [{
          "context" : "answer",
          "element" : "value",
          "variable" : "val"
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
          "variable" : "code"
        },
        {
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
            "valueString" : "http://snomed.info/sct"
          }]
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "60224009"
          }]
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "display",
          "transform" : "copy",
          "parameter" : [{
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
            "valueId" : "val"
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
  },
  {
    "name" : "MapRelationshipsScore",
    "typeMode" : "none",
    "documentation" : "Social relationships score component",
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
      "name" : "ProcessRelationshipsAnswer",
      "source" : [{
        "context" : "src",
        "element" : "answer",
        "variable" : "answer"
      }],
      "rule" : [{
        "name" : "SetRelationshipsComponent",
        "source" : [{
          "context" : "answer",
          "element" : "value",
          "variable" : "val"
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
          "variable" : "code"
        },
        {
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
            "valueString" : "http://snomed.info/sct"
          }]
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "272151006"
          }]
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "display",
          "transform" : "copy",
          "parameter" : [{
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
            "valueId" : "val"
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
  },
  {
    "name" : "MapEnvironmentScore",
    "typeMode" : "none",
    "documentation" : "Environment score component",
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
      "name" : "ProcessEnvironmentAnswer",
      "source" : [{
        "context" : "src",
        "element" : "answer",
        "variable" : "answer"
      }],
      "rule" : [{
        "name" : "SetEnvironmentComponent",
        "source" : [{
          "context" : "answer",
          "element" : "value",
          "variable" : "val"
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
          "variable" : "code"
        },
        {
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
            "valueString" : "http://snomed.info/sct"
          }]
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "276339004"
          }]
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "display",
          "transform" : "copy",
          "parameter" : [{
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
            "valueId" : "val"
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
}

```
