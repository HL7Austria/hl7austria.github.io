# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Sleep Quality Base (WHOQOL-BREF scale to LOINC) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sleep Quality Base (WHOQOL-BREF scale to LOINC)**

## StructureMap: Sleep Quality Base (WHOQOL-BREF scale to LOINC) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/SleepQualityBase | *Version*:0.1.0 | |
| Active as of 2026-06-18 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:SleepQualityBase |

 
Sleep Quality Base (WHOQOL-BREF scale to LOINC) 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-06-18

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "SleepQualityBase",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/SleepQualityBase",
  "version" : "0.1.0",
  "name" : "SleepQualityBase",
  "title" : "Sleep Quality Base (WHOQOL-BREF scale to LOINC)",
  "status" : "active",
  "date" : "2026-06-18T13:38:50+00:00",
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
  "description" : "Sleep Quality Base (WHOQOL-BREF scale to LOINC)",
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
    "name" : "SetSleepQualityObservation",
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
          "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-sleep-quality-observation"
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
          "valueString" : "61987-4"
        },
        {
          "valueString" : "My sleep quality was...in past 7 days [PROMIS]"
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
    }]
  },
  {
    "name" : "MapWhoQolToLoinc",
    "typeMode" : "none",
    "documentation" : "https://loinc.org/61987-4 My sleep quality was...in past 7 days [PROMIS]\r\nhttps://loinc.org/LL1023-2 [PROMIS] Very poor|Poor|Fair|Good|Very good",
    "input" : [{
      "name" : "coding",
      "type" : "Coding",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Obs",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "MapS1",
      "source" : [{
        "context" : "coding",
        "element" : "code",
        "variable" : "c",
        "condition" : "$this = 'S1'"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "value",
        "variable" : "cc",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "CodeableConcept"
        }]
      },
      {
        "context" : "cc",
        "contextType" : "variable",
        "element" : "coding",
        "variable" : "loinc",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Coding"
        }]
      },
      {
        "context" : "loinc",
        "contextType" : "variable",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "http://loinc.org"
        }]
      },
      {
        "context" : "loinc",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "LA9615-1"
        }]
      },
      {
        "context" : "loinc",
        "contextType" : "variable",
        "element" : "display",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "Very poor"
        }]
      }]
    },
    {
      "name" : "MapS2",
      "source" : [{
        "context" : "coding",
        "element" : "code",
        "variable" : "c",
        "condition" : "$this = 'S2'"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "value",
        "variable" : "cc",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "CodeableConcept"
        }]
      },
      {
        "context" : "cc",
        "contextType" : "variable",
        "element" : "coding",
        "variable" : "loinc",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Coding"
        }]
      },
      {
        "context" : "loinc",
        "contextType" : "variable",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "http://loinc.org"
        }]
      },
      {
        "context" : "loinc",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "LA8969-3"
        }]
      },
      {
        "context" : "loinc",
        "contextType" : "variable",
        "element" : "display",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "Poor"
        }]
      }]
    },
    {
      "name" : "MapS3",
      "source" : [{
        "context" : "coding",
        "element" : "code",
        "variable" : "c",
        "condition" : "$this = 'S3'"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "value",
        "variable" : "cc",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "CodeableConcept"
        }]
      },
      {
        "context" : "cc",
        "contextType" : "variable",
        "element" : "coding",
        "variable" : "loinc",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Coding"
        }]
      },
      {
        "context" : "loinc",
        "contextType" : "variable",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "http://loinc.org"
        }]
      },
      {
        "context" : "loinc",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "LA8968-5"
        }]
      },
      {
        "context" : "loinc",
        "contextType" : "variable",
        "element" : "display",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "Fair"
        }]
      }]
    },
    {
      "name" : "MapS4",
      "source" : [{
        "context" : "coding",
        "element" : "code",
        "variable" : "c",
        "condition" : "$this = 'S4'"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "value",
        "variable" : "cc",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "CodeableConcept"
        }]
      },
      {
        "context" : "cc",
        "contextType" : "variable",
        "element" : "coding",
        "variable" : "loinc",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Coding"
        }]
      },
      {
        "context" : "loinc",
        "contextType" : "variable",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "http://loinc.org"
        }]
      },
      {
        "context" : "loinc",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "LA8967-7"
        }]
      },
      {
        "context" : "loinc",
        "contextType" : "variable",
        "element" : "display",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "Good"
        }]
      }]
    },
    {
      "name" : "MapS5",
      "source" : [{
        "context" : "coding",
        "element" : "code",
        "variable" : "c",
        "condition" : "$this = 'S5'"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "value",
        "variable" : "cc",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "CodeableConcept"
        }]
      },
      {
        "context" : "cc",
        "contextType" : "variable",
        "element" : "coding",
        "variable" : "loinc",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Coding"
        }]
      },
      {
        "context" : "loinc",
        "contextType" : "variable",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "http://loinc.org"
        }]
      },
      {
        "context" : "loinc",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "LA13913-1"
        }]
      },
      {
        "context" : "loinc",
        "contextType" : "variable",
        "element" : "display",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "Very Good"
        }]
      }]
    }]
  }]
}

```
