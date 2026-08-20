# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\PSS-10 Q score to O score - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS-10 Q score to O score**

## StructureMap: PSS-10 Q score to O score 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/Pss10QuestionnaireResponseToObservation | *Version*:0.1.0 | |
| Active as of 2026-08-20 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:Pss10QuestionnaireResponseToObservation |

 
PSS-10 Q score to O score 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-08-20

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "Pss10QuestionnaireResponseToObservation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/Pss10QuestionnaireResponseToObservation",
  "version" : "0.1.0",
  "name" : "Pss10QuestionnaireResponseToObservation",
  "title" : "PSS-10 Q score to O score",
  "status" : "active",
  "date" : "2026-08-20T08:19:53+00:00",
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
  "description" : "PSS-10 Q score to O score",
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
    "name" : "Pss10QuestionnaireResponseToObservation",
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
          "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-pss10-score-observation"
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
          "valueString" : "106860-0"
        },
        {
          "valueString" : "Perceived stress scale-10 total score [PSS-10]"
        }]
      }],
      "documentation" : "LOINC 106860-0: Perceived stress scale-10 total score [PSS-10]"
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
      "name" : "ProcessPss10",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "pss10Group",
        "condition" : "linkId = 'pss10'"
      }],
      "rule" : [{
        "name" : "MapQ1",
        "source" : [{
          "context" : "pss10Group",
          "element" : "item",
          "variable" : "q1",
          "condition" : "linkId = 'pss10-q1'"
        }],
        "dependent" : [{
          "name" : "MapPss10Q1",
          "variable" : ["q1", "tgt"]
        }],
        "documentation" : "Map individual item codings → Observation components (raw categorical answers)"
      },
      {
        "name" : "MapQ2",
        "source" : [{
          "context" : "pss10Group",
          "element" : "item",
          "variable" : "q2",
          "condition" : "linkId = 'pss10-q2'"
        }],
        "dependent" : [{
          "name" : "MapPss10Q2",
          "variable" : ["q2", "tgt"]
        }]
      },
      {
        "name" : "MapQ3",
        "source" : [{
          "context" : "pss10Group",
          "element" : "item",
          "variable" : "q3",
          "condition" : "linkId = 'pss10-q3'"
        }],
        "dependent" : [{
          "name" : "MapPss10Q3",
          "variable" : ["q3", "tgt"]
        }]
      },
      {
        "name" : "MapQ4",
        "source" : [{
          "context" : "pss10Group",
          "element" : "item",
          "variable" : "q4",
          "condition" : "linkId = 'pss10-q4'"
        }],
        "dependent" : [{
          "name" : "MapPss10Q4",
          "variable" : ["q4", "tgt"]
        }]
      },
      {
        "name" : "MapQ5",
        "source" : [{
          "context" : "pss10Group",
          "element" : "item",
          "variable" : "q5",
          "condition" : "linkId = 'pss10-q5'"
        }],
        "dependent" : [{
          "name" : "MapPss10Q5",
          "variable" : ["q5", "tgt"]
        }]
      },
      {
        "name" : "MapQ6",
        "source" : [{
          "context" : "pss10Group",
          "element" : "item",
          "variable" : "q6",
          "condition" : "linkId = 'pss10-q6'"
        }],
        "dependent" : [{
          "name" : "MapPss10Q6",
          "variable" : ["q6", "tgt"]
        }]
      },
      {
        "name" : "MapQ7",
        "source" : [{
          "context" : "pss10Group",
          "element" : "item",
          "variable" : "q7",
          "condition" : "linkId = 'pss10-q7'"
        }],
        "dependent" : [{
          "name" : "MapPss10Q7",
          "variable" : ["q7", "tgt"]
        }]
      },
      {
        "name" : "MapQ8",
        "source" : [{
          "context" : "pss10Group",
          "element" : "item",
          "variable" : "q8",
          "condition" : "linkId = 'pss10-q8'"
        }],
        "dependent" : [{
          "name" : "MapPss10Q8",
          "variable" : ["q8", "tgt"]
        }]
      },
      {
        "name" : "MapQ9",
        "source" : [{
          "context" : "pss10Group",
          "element" : "item",
          "variable" : "q9",
          "condition" : "linkId = 'pss10-q9'"
        }],
        "dependent" : [{
          "name" : "MapPss10Q9",
          "variable" : ["q9", "tgt"]
        }]
      },
      {
        "name" : "MapQ10",
        "source" : [{
          "context" : "pss10Group",
          "element" : "item",
          "variable" : "q10",
          "condition" : "linkId = 'pss10-q10'"
        }],
        "dependent" : [{
          "name" : "MapPss10Q10",
          "variable" : ["q10", "tgt"]
        }]
      },
      {
        "name" : "MapTotal",
        "source" : [{
          "context" : "pss10Group",
          "element" : "item",
          "variable" : "totalItem",
          "condition" : "linkId = 'pss10-total-score'"
        }],
        "dependent" : [{
          "name" : "MapPss10TotalScore",
          "variable" : ["totalItem", "tgt"]
        }],
        "documentation" : "Map pre-computed total score → Observation.value"
      }]
    }]
  },
  {
    "name" : "MapPss10Q1",
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
            "valueString" : "pss10-q1"
          },
          {
            "valueString" : "PSS-10 Item 1"
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
    "name" : "MapPss10Q2",
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
            "valueString" : "pss10-q2"
          },
          {
            "valueString" : "PSS-10 Item 2"
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
    "name" : "MapPss10Q3",
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
            "valueString" : "pss10-q3"
          },
          {
            "valueString" : "PSS-10 Item 3"
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
    "name" : "MapPss10Q4",
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
            "valueString" : "pss10-q4"
          },
          {
            "valueString" : "PSS-10 Item 4 (positiv)"
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
    "name" : "MapPss10Q5",
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
            "valueString" : "pss10-q5"
          },
          {
            "valueString" : "PSS-10 Item 5 (positiv)"
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
    "name" : "MapPss10Q6",
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
            "valueString" : "pss10-q6"
          },
          {
            "valueString" : "PSS-10 Item 6"
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
    "name" : "MapPss10Q7",
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
            "valueString" : "pss10-q7"
          },
          {
            "valueString" : "PSS-10 Item 7 (positiv)"
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
    "name" : "MapPss10Q8",
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
            "valueString" : "pss10-q8"
          },
          {
            "valueString" : "PSS-10 Item 8 (positiv)"
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
    "name" : "MapPss10Q9",
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
            "valueString" : "pss10-q9"
          },
          {
            "valueString" : "PSS-10 Item 9"
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
    "name" : "MapPss10Q10",
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
            "valueString" : "pss10-q10"
          },
          {
            "valueString" : "PSS-10 Item 10"
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
    "name" : "MapPss10TotalScore",
    "typeMode" : "none",
    "documentation" : "Pre-computed integer total score from the hidden pss10-total-score QR item.\r\nTwo-level .value unwrap (integer) — MaLaC-HD safe pattern (no evaluate()).",
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
