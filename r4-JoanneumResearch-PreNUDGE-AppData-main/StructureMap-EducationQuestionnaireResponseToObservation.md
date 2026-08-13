# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Highest Completed Education Q to O - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Highest Completed Education Q to O**

## StructureMap: Highest Completed Education Q to O 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/EducationQuestionnaireResponseToObservation | *Version*:0.1.0 | |
| Active as of 2026-08-13 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:EducationQuestionnaireResponseToObservation |

 
Highest Completed Education Q to O 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-08-13

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "EducationQuestionnaireResponseToObservation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureMap/EducationQuestionnaireResponseToObservation",
  "version" : "0.1.0",
  "name" : "EducationQuestionnaireResponseToObservation",
  "title" : "Highest Completed Education Q to O",
  "status" : "active",
  "date" : "2026-08-13T06:23:48+00:00",
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
  "description" : "Highest Completed Education Q to O",
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
    "name" : "EducationQuestionnaireResponseToObservation",
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
      "name" : "setEducationCode",
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
          "valueString" : "82589-3"
        },
        {
          "valueString" : "Highest level of education"
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
      "name" : "mapEducationItem",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "educationItem",
        "condition" : "educationItem.linkId = 'highest-completed-education'"
      }],
      "rule" : [{
        "name" : "mapIsced1",
        "source" : [{
          "context" : "educationItem",
          "element" : "answer",
          "variable" : "answer",
          "condition" : "answer.valueCoding.code = 'isced-1'"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "valueCodeableConcept",
          "transform" : "cc",
          "parameter" : [{
            "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level"
          },
          {
            "valueString" : "isced-1"
          },
          {
            "valueString" : "ISCED 1: Volksschule"
          }]
        }]
      },
      {
        "name" : "mapIsced2",
        "source" : [{
          "context" : "educationItem",
          "element" : "answer",
          "variable" : "answer",
          "condition" : "answer.valueCoding.code = 'isced-2'"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "valueCodeableConcept",
          "transform" : "cc",
          "parameter" : [{
            "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level"
          },
          {
            "valueString" : "isced-2"
          },
          {
            "valueString" : "ISCED 2: Hauptschule, Mittelschulen, Unterstufen von AHS"
          }]
        }]
      },
      {
        "name" : "mapIsced3a",
        "source" : [{
          "context" : "educationItem",
          "element" : "answer",
          "variable" : "answer",
          "condition" : "answer.valueCoding.code = 'isced-3a'"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "valueCodeableConcept",
          "transform" : "cc",
          "parameter" : [{
            "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level"
          },
          {
            "valueString" : "isced-3a"
          },
          {
            "valueString" : "ISCED 3a: Polytechnische Schule"
          }]
        }]
      },
      {
        "name" : "mapIsced3b",
        "source" : [{
          "context" : "educationItem",
          "element" : "answer",
          "variable" : "answer",
          "condition" : "answer.valueCoding.code = 'isced-3b'"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "valueCodeableConcept",
          "transform" : "cc",
          "parameter" : [{
            "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level"
          },
          {
            "valueString" : "isced-3b"
          },
          {
            "valueString" : "ISCED 3b: Berufsbildende mittlere Schulen (HASCH, Fachschulen)"
          }]
        }]
      },
      {
        "name" : "mapIsced3c",
        "source" : [{
          "context" : "educationItem",
          "element" : "answer",
          "variable" : "answer",
          "condition" : "answer.valueCoding.code = 'isced-3c'"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "valueCodeableConcept",
          "transform" : "cc",
          "parameter" : [{
            "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level"
          },
          {
            "valueString" : "isced-3c"
          },
          {
            "valueString" : "ISCED 3c: Berufsbildende höhere Schulen (HAK, HBLA, HTL) und AHS-Oberstufe"
          }]
        }]
      },
      {
        "name" : "mapIsced4",
        "source" : [{
          "context" : "educationItem",
          "element" : "answer",
          "variable" : "answer",
          "condition" : "answer.valueCoding.code = 'isced-4'"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "valueCodeableConcept",
          "transform" : "cc",
          "parameter" : [{
            "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level"
          },
          {
            "valueString" : "isced-4"
          },
          {
            "valueString" : "ISCED 4: Lehre mit Matura, Gesundheits- und Krankenpflegeschule (nicht-tertiär), Meister- oder Diplomprüfung"
          }]
        }]
      },
      {
        "name" : "mapIsced5",
        "source" : [{
          "context" : "educationItem",
          "element" : "answer",
          "variable" : "answer",
          "condition" : "answer.valueCoding.code = 'isced-5'"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "valueCodeableConcept",
          "transform" : "cc",
          "parameter" : [{
            "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level"
          },
          {
            "valueString" : "isced-5"
          },
          {
            "valueString" : "ISCED 5: Kolleg, tertiäre Hebammenakademien bzw. medizinisch-technische Ausbildungen im Kurzzyklus"
          }]
        }]
      },
      {
        "name" : "mapIsced6To8",
        "source" : [{
          "context" : "educationItem",
          "element" : "answer",
          "variable" : "answer",
          "condition" : "answer.valueCoding.code = 'isced-6-8'"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "valueCodeableConcept",
          "transform" : "cc",
          "parameter" : [{
            "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level"
          },
          {
            "valueString" : "isced-6-8"
          },
          {
            "valueString" : "ISCED 6–8: Hochschulabschlüsse (Bachelor, Master, Doktor)"
          }]
        }]
      }]
    }]
  }]
}

```
