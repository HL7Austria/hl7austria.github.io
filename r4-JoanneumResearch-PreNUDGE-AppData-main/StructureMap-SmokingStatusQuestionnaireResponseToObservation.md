# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\ATHIS-based Smoking Status Q to O - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ATHIS-based Smoking Status Q to O**

## StructureMap: ATHIS-based Smoking Status Q to O 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/SmokingStatusQuestionnaireResponseToObservation | *Version*:0.1.0 | |
| Active as of 2026-07-22 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:SmokingStatusQuestionnaireResponseToObservation |

 
ATHIS-based Smoking Status Q to O 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-07-22

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

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
  "date" : "2026-07-22T10:33:49+00:00",
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
      }],
      "documentation" : "Administrative metadata. Implementations may replace or enrich the identifier\r\nif the Observation needs a separate stable business identifier."
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
      }],
      "documentation" : "IPS/APS-style tobacco smoking status coding."
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
      }],
      "documentation" : "User-entered QuestionnaireResponse data is considered manual input."
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
      }],
      "documentation" : "Keep the derivation from QuestionnaireResponse to Observation traceable."
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
      }],
      "documentation" : "ATHIS answer mapping to the clinical SNOMED CT valueCodeableConcept."
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
      }],
      "documentation" : "SK1 = Ja, täglich -> current every day smoker."
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
      }],
      "documentation" : "SK1 = Ja, gelegentlich -> current occasional smoker."
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
      }],
      "documentation" : "SK1 = Nein and past tobacco smoking = Ja, täglich or Ja, gelegentlich -> former smoker.\r\nThe past-tobacco-smoking item is enabled only when SK1 is negative."
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
      }],
      "documentation" : "SK1 = Nein and past tobacco smoking = Nein -> never smoker."
    },
    {
      "name" : "sk1Unknown",
      "source" : [{
        "context" : "groupItem",
        "element" : "item",
        "variable" : "sk1",
        "condition" : "sk1.linkId = 'sk1'"
      }],
      "rule" : [{
        "name" : "evaluateSk1Unknown",
        "source" : [{
          "context" : "sk1",
          "element" : "answer",
          "variable" : "answer"
        }],
        "rule" : [{
          "name" : "mapSk1Unknown",
          "source" : [{
            "context" : "answer",
            "element" : "valueCoding",
            "variable" : "coding",
            "condition" : "(coding.system = 'https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers') and (coding.code = 'meta-unknown')"
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
        }]
      }],
      "documentation" : "SK1 = Weiß nicht"
    },
    {
      "name" : "sk1NotStated",
      "source" : [{
        "context" : "groupItem",
        "element" : "item",
        "variable" : "sk1",
        "condition" : "sk1.linkId = 'sk1'"
      }],
      "rule" : [{
        "name" : "evaluateSk1NotStated",
        "source" : [{
          "context" : "sk1",
          "element" : "answer",
          "variable" : "answer"
        }],
        "rule" : [{
          "name" : "mapSk1NotStated",
          "source" : [{
            "context" : "answer",
            "element" : "valueCoding",
            "variable" : "coding",
            "condition" : "(coding.system = 'https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers') and (coding.code = 'meta-not-stated')"
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
      }],
      "documentation" : "SK1 = Keine Angabe"
    }]
  }]
}

```
