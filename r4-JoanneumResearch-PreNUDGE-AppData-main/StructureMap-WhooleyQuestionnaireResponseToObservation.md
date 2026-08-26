# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\PHQ-2/Whooley Q to O - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PHQ-2/Whooley Q to O**

## StructureMap: PHQ-2/Whooley Q to O 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/WhooleyQuestionnaireResponseToObservation | *Version*:0.1.0 | |
| Active as of 2026-08-26 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:WhooleyQuestionnaireResponseToObservation |

 
PHQ-2/Whooley Q to O 

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
  "id" : "WhooleyQuestionnaireResponseToObservation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/WhooleyQuestionnaireResponseToObservation",
  "version" : "0.1.0",
  "name" : "WhooleyQuestionnaireResponseToObservation",
  "title" : "PHQ-2/Whooley Q to O",
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
  "description" : "PHQ-2/Whooley Q to O",
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
    "name" : "WhooleyQuestionnaireResponseToObservation",
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
      "name" : "copyIdentifier",
      "source" : [{
        "context" : "src",
        "element" : "identifier",
        "variable" : "identifier"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "identifier",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "identifier"
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
      "name" : "setCode",
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
          "valueString" : "73832-8"
        },
        {
          "valueString" : "Adult depression screening assessment"
        }]
      }],
      "documentation" : "LOINC 55757-9: closest available code for a PHQ-2 screening result.\r\nThe Whooley Ja/Nein variant over the last month differs from the standard scored PHQ-2."
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
    },
    {
      "name" : "mapWhooleyGroup",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "whooleyGroup",
        "condition" : "whooleyGroup.linkId = 'whooley'"
      }],
      "dependent" : [{
        "name" : "WhooleyGroupToObservation",
        "variable" : ["whooleyGroup", "tgt"]
      }]
    }]
  },
  {
    "name" : "WhooleyGroupToObservation",
    "typeMode" : "none",
    "documentation" : "Routes based on q1 answer.\r\nIf q1 = SNOMED 373066001 (Ja): delegates to WhooleyQ2Check to test q2.\r\nIf q1 = SNOMED 373067005 (Nein): sets Negative result immediately.",
    "input" : [{
      "name" : "groupItem",
      "type" : "QR",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Obs",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "q1Ja",
      "source" : [{
        "context" : "groupItem",
        "element" : "item",
        "variable" : "q1",
        "condition" : "q1.linkId = '/whooley-q1'"
      }],
      "rule" : [{
        "name" : "whenQ1Ja",
        "source" : [{
          "context" : "q1",
          "element" : "answer",
          "variable" : "a1",
          "condition" : "a1.valueCoding.code = '373066001'"
        }],
        "dependent" : [{
          "name" : "WhooleyQ2Check",
          "variable" : ["groupItem", "tgt"]
        }]
      }]
    },
    {
      "name" : "q1Nein",
      "source" : [{
        "context" : "groupItem",
        "element" : "item",
        "variable" : "q1",
        "condition" : "q1.linkId = '/whooley-q1'"
      }],
      "rule" : [{
        "name" : "q1Nein",
        "source" : [{
          "context" : "q1",
          "element" : "answer",
          "variable" : "a1",
          "condition" : "a1.valueCoding.code = '373067005'"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "valueCodeableConcept",
          "transform" : "cc",
          "parameter" : [{
            "valueString" : "http://snomed.info/sct"
          },
          {
            "valueString" : "260385009"
          },
          {
            "valueString" : "Negative (qualifier value)"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "WhooleyQ2Check",
    "typeMode" : "none",
    "documentation" : "Called only when q1 = Ja. Sets Positive if q2 = Ja, Negative if q2 = Nein.",
    "input" : [{
      "name" : "groupItem",
      "type" : "QR",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Obs",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "processQ2",
      "source" : [{
        "context" : "groupItem",
        "element" : "item",
        "variable" : "q2",
        "condition" : "q2.linkId = '/whooley-q2'"
      }],
      "rule" : [{
        "name" : "bothJa",
        "source" : [{
          "context" : "q2",
          "element" : "answer",
          "variable" : "a2",
          "condition" : "a2.valueCoding.code = '373066001'"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "valueCodeableConcept",
          "transform" : "cc",
          "parameter" : [{
            "valueString" : "http://snomed.info/sct"
          },
          {
            "valueString" : "10828004"
          },
          {
            "valueString" : "Positive (qualifier value)"
          }]
        }]
      },
      {
        "name" : "q2Nein",
        "source" : [{
          "context" : "q2",
          "element" : "answer",
          "variable" : "a2",
          "condition" : "a2.valueCoding.code = '373067005'"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "valueCodeableConcept",
          "transform" : "cc",
          "parameter" : [{
            "valueString" : "http://snomed.info/sct"
          },
          {
            "valueString" : "260385009"
          },
          {
            "valueString" : "Negative (qualifier value)"
          }]
        }]
      }]
    }]
  }]
}

```
