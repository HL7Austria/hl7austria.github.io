# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\ATHIS-based Smoking Status Q to O - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ATHIS-based Smoking Status Q to O**

## StructureMap: ATHIS-based Smoking Status Q to O 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/SmokingStatusQuestionnaireResponseToObservation | *Version*:0.1.0 | |
| Active as of 2026-06-03 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:SmokingStatusQuestionnaireResponseToObservation |

 
ATHIS-based Smoking Status Q to O 



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "SmokingStatusQuestionnaireResponseToObservation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/SmokingStatusQuestionnaireResponseToObservation",
  "version" : "0.1.0",
  "name" : "SmokingStatusQuestionnaireResponseToObservation",
  "title" : "ATHIS-based Smoking Status Q to O",
  "status" : "active",
  "date" : "2026-06-03T13:38:36+00:00",
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
  "description" : "ATHIS-based Smoking Status Q to O",
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
    "name" : "SmokingStatusQuestionnaireResponseToObservation",
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
      "name" : "copyAuthoredToObservationTimes",
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
      },
      {
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
      "name" : "setTobaccoSmokingStatusCode",
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
          "valueString" : "72166-2"
        },
        {
          "valueString" : "Tobacco smoking status"
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
    },
    {
      "name" : "mapSmokingStatusGroup",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "groupItem",
        "condition" : "groupItem.linkId = 'smoking-status-athis'"
      }],
      "dependent" : [{
        "name" : "SmokingStatusGroupToObservation",
        "variable" : ["groupItem", "tgt"]
      }]
    }]
  },
  {
    "name" : "SmokingStatusGroupToObservation",
    "typeMode" : "none",
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
      "name" : "sk1Daily",
      "source" : [{
        "context" : "groupItem",
        "element" : "item",
        "variable" : "sk1",
        "condition" : "sk1.linkId = 'sk1'"
      }],
      "rule" : [{
        "name" : "evaluateSk1Daily",
        "source" : [{
          "context" : "sk1",
          "element" : "answer",
          "variable" : "answer"
        }],
        "rule" : [{
          "name" : "mapCurrentDailySmoker",
          "source" : [{
            "context" : "answer",
            "element" : "valueCoding",
            "variable" : "coding",
            "condition" : "(coding.system = 'https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers') and (coding.code = 'yn-yes-daily')"
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
              "valueString" : "449868002"
            },
            {
              "valueString" : "Smokes tobacco daily"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "sk1Occasional",
      "source" : [{
        "context" : "groupItem",
        "element" : "item",
        "variable" : "sk1",
        "condition" : "sk1.linkId = 'sk1'"
      }],
      "rule" : [{
        "name" : "evaluateSk1Occasional",
        "source" : [{
          "context" : "sk1",
          "element" : "answer",
          "variable" : "answer"
        }],
        "rule" : [{
          "name" : "mapCurrentOccasionalSmoker",
          "source" : [{
            "context" : "answer",
            "element" : "valueCoding",
            "variable" : "coding",
            "condition" : "(coding.system = 'https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers') and (coding.code = 'yn-yes-occasionally')"
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
              "valueString" : "428041000124106"
            },
            {
              "valueString" : "Occasional tobacco smoker"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "pastSmokingFormer",
      "source" : [{
        "context" : "groupItem",
        "element" : "item",
        "variable" : "past",
        "condition" : "past.linkId = 'past-tobacco-smoking'"
      }],
      "rule" : [{
        "name" : "evaluatePastSmoking",
        "source" : [{
          "context" : "past",
          "element" : "answer",
          "variable" : "answer"
        }],
        "rule" : [{
          "name" : "mapPastDailyToFormerSmoker",
          "source" : [{
            "context" : "answer",
            "element" : "valueCoding",
            "variable" : "coding",
            "condition" : "(coding.system = 'https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers') and (coding.code = 'yn-yes-daily')"
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
              "valueString" : "8517006"
            },
            {
              "valueString" : "Ex-smoker"
            }]
          }]
        },
        {
          "name" : "mapPastOccasionalToFormerSmoker",
          "source" : [{
            "context" : "answer",
            "element" : "valueCoding",
            "variable" : "coding",
            "condition" : "(coding.system = 'https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers') and (coding.code = 'yn-yes-occasionally')"
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
              "valueString" : "8517006"
            },
            {
              "valueString" : "Ex-smoker"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "pastSmokingNever",
      "source" : [{
        "context" : "groupItem",
        "element" : "item",
        "variable" : "past",
        "condition" : "past.linkId = 'past-tobacco-smoking'"
      }],
      "rule" : [{
        "name" : "evaluatePastNo",
        "source" : [{
          "context" : "past",
          "element" : "answer",
          "variable" : "answer"
        }],
        "rule" : [{
          "name" : "mapPastNoToNeverSmoker",
          "source" : [{
            "context" : "answer",
            "element" : "valueCoding",
            "variable" : "coding",
            "condition" : "(coding.system = 'https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers') and (coding.code = 'yn-no')"
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
              "valueString" : "266919005"
            },
            {
              "valueString" : "Never smoked tobacco"
            }]
          }]
        }]
      }]
    }]
  }]
}

```
