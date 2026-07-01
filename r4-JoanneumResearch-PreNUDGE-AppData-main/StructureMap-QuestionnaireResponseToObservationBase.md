# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Shared base for Q to O - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Shared base for Q to O**

## StructureMap: Shared base for Q to O 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/QuestionnaireResponseToObservationBase | *Version*:0.1.0 | |
| Active as of 2026-07-01 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:QuestionnaireResponseToObservationBase |

 
Shared base for Q to O 

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
  "id" : "QuestionnaireResponseToObservationBase",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/QuestionnaireResponseToObservationBase",
  "version" : "0.1.0",
  "name" : "QuestionnaireResponseToObservationBase",
  "title" : "Shared base for Q to O",
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
  "description" : "Shared base for Q to O",
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
  "group" : [{
    "name" : "SetObservationBase",
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
      "name" : "SetMethod",
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
      "name" : "CopyIdentifier",
      "source" : [{
        "context" : "src",
        "element" : "identifier",
        "variable" : "srcId"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "identifier",
        "variable" : "tgtId",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Identifier"
        }]
      }],
      "rule" : [{
        "name" : "CopyIdSystem",
        "source" : [{
          "context" : "srcId",
          "element" : "system",
          "variable" : "s"
        }],
        "target" : [{
          "context" : "tgtId",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "s"
          }]
        }]
      },
      {
        "name" : "CopyIdValue",
        "source" : [{
          "context" : "srcId",
          "element" : "value",
          "variable" : "v"
        }],
        "target" : [{
          "context" : "tgtId",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "v"
          }]
        }]
      },
      {
        "name" : "CopyIdUse",
        "source" : [{
          "context" : "srcId",
          "element" : "use",
          "variable" : "u"
        }],
        "target" : [{
          "context" : "tgtId",
          "contextType" : "variable",
          "element" : "use",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "u"
          }]
        }]
      }]
    },
    {
      "name" : "SetDerivedFrom",
      "source" : [{
        "context" : "src",
        "element" : "id",
        "variable" : "srcRefId"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "derivedFrom",
        "variable" : "ref",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Reference"
        }]
      },
      {
        "context" : "ref",
        "contextType" : "variable",
        "element" : "reference",
        "transform" : "append",
        "parameter" : [{
          "valueString" : "QuestionnaireResponse/"
        },
        {
          "valueId" : "srcRefId"
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
        "variable" : "ref",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Reference"
        }]
      }],
      "rule" : [{
        "name" : "CopySubjectRef",
        "source" : [{
          "context" : "subject",
          "element" : "reference",
          "variable" : "r"
        }],
        "target" : [{
          "context" : "ref",
          "contextType" : "variable",
          "element" : "reference",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "r"
          }]
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
        "element" : "issued",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "authored"
        }]
      }]
    }]
  }]
}

```
