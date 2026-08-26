# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\PSS-4 Q score to O score - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS-4 Q score to O score**

## StructureMap: PSS-4 Q score to O score 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/Pss4QuestionnaireResponseToObservation | *Version*:0.1.0 | |
| Active as of 2026-08-26 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:Pss4QuestionnaireResponseToObservation |

 
PSS-4 Q score to O score 

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
  "id" : "Pss4QuestionnaireResponseToObservation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/Pss4QuestionnaireResponseToObservation",
  "version" : "0.1.0",
  "name" : "Pss4QuestionnaireResponseToObservation",
  "title" : "PSS-4 Q score to O score",
  "status" : "active",
  "date" : "2026-08-26T07:28:06+00:00",
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
  "description" : "PSS-4 Q score to O score",
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
    "name" : "Pss4QuestionnaireResponseToObservation",
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
          "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-pss4-score-observation"
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
          "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-codes-codesystem"
        },
        {
          "valueString" : "pss4"
        },
        {
          "valueString" : "PSS-4 Perceived Stress Scale (4-item)"
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
      "name" : "ProcessPss4",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "pss4Group",
        "condition" : "linkId = 'pss4'"
      }],
      "rule" : [{
        "name" : "MapQ1",
        "source" : [{
          "context" : "pss4Group",
          "element" : "item",
          "variable" : "q1",
          "condition" : "linkId = 'pss4-q1'"
        }],
        "dependent" : [{
          "name" : "MapPss4Q1",
          "variable" : ["q1", "tgt"]
        }],
        "documentation" : "Map individual item codings → Observation components (raw categorical answers)"
      },
      {
        "name" : "MapQ2",
        "source" : [{
          "context" : "pss4Group",
          "element" : "item",
          "variable" : "q2",
          "condition" : "linkId = 'pss4-q2'"
        }],
        "dependent" : [{
          "name" : "MapPss4Q2",
          "variable" : ["q2", "tgt"]
        }]
      },
      {
        "name" : "MapQ3",
        "source" : [{
          "context" : "pss4Group",
          "element" : "item",
          "variable" : "q3",
          "condition" : "linkId = 'pss4-q3'"
        }],
        "dependent" : [{
          "name" : "MapPss4Q3",
          "variable" : ["q3", "tgt"]
        }]
      },
      {
        "name" : "MapQ4",
        "source" : [{
          "context" : "pss4Group",
          "element" : "item",
          "variable" : "q4",
          "condition" : "linkId = 'pss4-q4'"
        }],
        "dependent" : [{
          "name" : "MapPss4Q4",
          "variable" : ["q4", "tgt"]
        }]
      },
      {
        "name" : "MapTotal",
        "source" : [{
          "context" : "pss4Group",
          "element" : "item",
          "variable" : "totalItem",
          "condition" : "linkId = 'pss4-total-score'"
        }],
        "dependent" : [{
          "name" : "MapPss4TotalScore",
          "variable" : ["totalItem", "tgt"]
        }],
        "documentation" : "Map pre-computed total score → Observation.value"
      }]
    }]
  },
  {
    "name" : "MapPss4Q1",
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
        "name" : "SetComponent",
        "source" : [{
          "context" : "answer",
          "element" : "valueCoding",
          "variable" : "vc"
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
            "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-codes-codesystem"
          },
          {
            "valueString" : "pss4-q1"
          },
          {
            "valueString" : "PSS-4 Item 1 (Kontrollverlust)"
          }]
        },
        {
          "context" : "comp",
          "contextType" : "variable",
          "element" : "value",
          "variable" : "cc2",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cc2",
          "contextType" : "variable",
          "element" : "coding",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "vc"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "MapPss4Q2",
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
        "name" : "SetComponent",
        "source" : [{
          "context" : "answer",
          "element" : "valueCoding",
          "variable" : "vc"
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
            "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-codes-codesystem"
          },
          {
            "valueString" : "pss4-q2"
          },
          {
            "valueString" : "PSS-4 Item 2 (Selbstwirksamkeit — positiv)"
          }]
        },
        {
          "context" : "comp",
          "contextType" : "variable",
          "element" : "value",
          "variable" : "cc2",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cc2",
          "contextType" : "variable",
          "element" : "coding",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "vc"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "MapPss4Q3",
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
        "name" : "SetComponent",
        "source" : [{
          "context" : "answer",
          "element" : "valueCoding",
          "variable" : "vc"
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
            "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-codes-codesystem"
          },
          {
            "valueString" : "pss4-q3"
          },
          {
            "valueString" : "PSS-4 Item 3 (Kontrolle — positiv)"
          }]
        },
        {
          "context" : "comp",
          "contextType" : "variable",
          "element" : "value",
          "variable" : "cc2",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cc2",
          "contextType" : "variable",
          "element" : "coding",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "vc"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "MapPss4Q4",
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
        "name" : "SetComponent",
        "source" : [{
          "context" : "answer",
          "element" : "valueCoding",
          "variable" : "vc"
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
            "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-codes-codesystem"
          },
          {
            "valueString" : "pss4-q4"
          },
          {
            "valueString" : "PSS-4 Item 4 (Überforderung)"
          }]
        },
        {
          "context" : "comp",
          "contextType" : "variable",
          "element" : "value",
          "variable" : "cc2",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cc2",
          "contextType" : "variable",
          "element" : "coding",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "vc"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "MapPss4TotalScore",
    "typeMode" : "none",
    "documentation" : "Pre-computed integer total score from the hidden pss4-total-score QR item.\r\nTwo-level .value unwrap (integer) — MaLaC-HD safe pattern (no evaluate()).",
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
          "element" : "valueInteger",
          "variable" : "val"
        }],
        "rule" : [{
          "name" : "SetQuantity",
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
