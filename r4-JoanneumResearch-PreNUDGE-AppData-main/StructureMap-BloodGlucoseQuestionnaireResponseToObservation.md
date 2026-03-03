# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Blood Glucose Q to O - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Blood Glucose Q to O**

## StructureMap: Blood Glucose Q to O 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/BloodGlucoseQuestionnaireResponseToObservation | *Version*:0.1.0 | |
| Active as of 2026-03-03 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:BloodGlucoseQuestionnaireResponseToObservation |

 
Blood Glucose Q to O 



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "BloodGlucoseQuestionnaireResponseToObservation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/BloodGlucoseQuestionnaireResponseToObservation",
  "version" : "0.1.0",
  "name" : "BloodGlucoseQuestionnaireResponseToObservation",
  "title" : "Blood Glucose Q to O",
  "status" : "active",
  "date" : "2026-03-03T20:10:31+00:00",
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
  "description" : "Blood Glucose Q to O",
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
    "url" : "http://hl7.org/fhir/StructureDefinition/Quantity",
    "mode" : "source",
    "alias" : "Quantity"
  }],
  "import" : ["http://hl7.org/fhir/StructureMap/*",
  "https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/QuestionnaireResponseToObservationBase"],
  "group" : [{
    "name" : "BloodGlucoseQuestionnaireResponseToObservation",
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
          "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-bloodglucose-observation"
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
          "valueString" : "1556-0"
        },
        {
          "valueString" : "Fasting glucose [Mass/volume] in Capillary blood"
        }]
      }]
    },
    {
      "name" : "ProcessItem",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'blood-glucose-now'"
      }],
      "dependent" : [{
        "name" : "MapBloodGlucose",
        "variable" : ["item", "tgt"]
      }]
    }]
  },
  {
    "name" : "MapBloodGlucose",
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
        "name" : "MapValueQuantity",
        "source" : [{
          "context" : "answer",
          "element" : "valueQuantity",
          "variable" : "srcQty"
        }],
        "dependent" : [{
          "name" : "MapBloodGlucoseQuantity",
          "variable" : ["srcQty", "tgt"]
        }]
      }]
    }]
  },
  {
    "name" : "MapBloodGlucoseQuantity",
    "typeMode" : "none",
    "input" : [{
      "name" : "srcQty",
      "type" : "Quantity",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Obs",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "ExtractValue",
      "source" : [{
        "context" : "srcQty",
        "element" : "value",
        "variable" : "v"
      }],
      "rule" : [{
        "name" : "SetQuantity",
        "source" : [{
          "context" : "v",
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
            "valueString" : "mg/dL"
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
            "valueString" : "mg/dL"
          }]
        }]
      }]
    }]
  }]
}

```
