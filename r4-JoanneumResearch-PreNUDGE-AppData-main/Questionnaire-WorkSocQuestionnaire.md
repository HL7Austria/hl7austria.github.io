# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Arbeitsbezogenes Kohärenzgefühl (Work-SoC) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Arbeitsbezogenes Kohärenzgefühl (Work-SoC)**

## Questionnaire: Arbeitsbezogenes Kohärenzgefühl (Work-SoC) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/WorkSocQuestionnaire | *Version*:0.1.0 | |
| Active as of 2026-07-22 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:WorkSocQuestionnaire |

 
Work-related Sense of Coherence (Work-SoC) questionnaire. The raw item responses are collected in the QuestionnaireResponse. Category scores are defined as SDC calculated expressions and may be mapped to a Work-SoC score Observation. 

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
  "resourceType" : "Questionnaire",
  "id" : "WorkSocQuestionnaire",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire"]
  },
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/WorkSocQuestionnaire",
  "version" : "0.1.0",
  "name" : "WorkSocQuestionnaire",
  "title" : "Arbeitsbezogenes Kohärenzgefühl (Work-SoC)",
  "status" : "active",
  "experimental" : false,
  "subjectType" : ["Patient"],
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
  "description" : "Work-related Sense of Coherence (Work-SoC) questionnaire. The raw item responses are collected in the QuestionnaireResponse. Category scores are defined as SDC calculated expressions and may be mapped to a Work-SoC score Observation.",
  "item" : [{
    "linkId" : "work-soc",
    "code" : [{
      "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability",
      "code" : "work-soc-questionnaire",
      "display" : "Work-SoC Questionnaire"
    }],
    "text" : "Wie empfinden Sie persönlich Ihre momentane Arbeit bzw. Arbeitssituation im Allgemeinen?",
    "type" : "group",
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueInteger" : 1
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueInteger" : 7
      }],
      "linkId" : "work-soc-1",
      "code" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability",
        "code" : "work-soc-item-1",
        "display" : "Work-SoC item 1"
      }],
      "text" : "bewältigbar (1) - nicht bewältigbar (7)",
      "type" : "integer",
      "required" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueInteger" : 1
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueInteger" : 7
      }],
      "linkId" : "work-soc-2",
      "code" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability",
        "code" : "work-soc-item-2",
        "display" : "Work-SoC item 2"
      }],
      "text" : "sinnlos (1) - sinnvoll (7)",
      "type" : "integer",
      "required" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueInteger" : 1
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueInteger" : 7
      }],
      "linkId" : "work-soc-3",
      "code" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability",
        "code" : "work-soc-item-3",
        "display" : "Work-SoC item 3"
      }],
      "text" : "strukturiert (1) - chaotisch (7)",
      "type" : "integer",
      "required" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueInteger" : 1
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueInteger" : 7
      }],
      "linkId" : "work-soc-4",
      "code" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability",
        "code" : "work-soc-item-4",
        "display" : "Work-SoC item 4"
      }],
      "text" : "beeinflussbar (1) - unbeeinflussbar (7)",
      "type" : "integer",
      "required" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueInteger" : 1
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueInteger" : 7
      }],
      "linkId" : "work-soc-5",
      "code" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability",
        "code" : "work-soc-item-5",
        "display" : "Work-SoC item 5"
      }],
      "text" : "unbedeutend (1) - bedeutend (7)",
      "type" : "integer",
      "required" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueInteger" : 1
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueInteger" : 7
      }],
      "linkId" : "work-soc-6",
      "code" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability",
        "code" : "work-soc-item-6",
        "display" : "Work-SoC item 6"
      }],
      "text" : "übersichtlich (1) - unübersichtlich (7)",
      "type" : "integer",
      "required" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueInteger" : 1
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueInteger" : 7
      }],
      "linkId" : "work-soc-7",
      "code" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability",
        "code" : "work-soc-item-7",
        "display" : "Work-SoC item 7"
      }],
      "text" : "steuerbar (1) - nicht steuerbar (7)",
      "type" : "integer",
      "required" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueInteger" : 1
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueInteger" : 7
      }],
      "linkId" : "work-soc-8",
      "code" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability",
        "code" : "work-soc-item-8",
        "display" : "Work-SoC item 8"
      }],
      "text" : "nicht lohnend (1) - lohnenswert (7)",
      "type" : "integer",
      "required" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueInteger" : 1
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueInteger" : 7
      }],
      "linkId" : "work-soc-9",
      "code" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability",
        "code" : "work-soc-item-9",
        "display" : "Work-SoC item 9"
      }],
      "text" : "vorhersehbar (1) - unvorhersehbar (7)",
      "type" : "integer",
      "required" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "(%resource.item.where(linkId = 'work-soc').item.where(linkId = 'work-soc-1').answer.valueInteger.first() + %resource.item.where(linkId = 'work-soc').item.where(linkId = 'work-soc-3').answer.valueInteger.first() + %resource.item.where(linkId = 'work-soc').item.where(linkId = 'work-soc-6').answer.valueInteger.first() + %resource.item.where(linkId = 'work-soc').item.where(linkId = 'work-soc-9').answer.valueInteger.first()) / 4"
        }
      }],
      "linkId" : "work-soc-comprehensibility-score",
      "code" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability",
        "code" : "work-soc-comprehensibility",
        "display" : "Work-SoC comprehensibility score"
      }],
      "text" : "Score Verstehbarkeit: (Item 1 + Item 3 + Item 6 + Item 9) / 4",
      "type" : "decimal",
      "required" : false,
      "readOnly" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "(%resource.item.where(linkId = 'work-soc').item.where(linkId = 'work-soc-4').answer.valueInteger.first() + %resource.item.where(linkId = 'work-soc').item.where(linkId = 'work-soc-7').answer.valueInteger.first()) / 2"
        }
      }],
      "linkId" : "work-soc-manageability-score",
      "code" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability",
        "code" : "work-soc-manageability",
        "display" : "Work-SoC manageability score"
      }],
      "text" : "Score Handhabbarkeit: (Item 4 + Item 7) / 2",
      "type" : "decimal",
      "required" : false,
      "readOnly" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "(%resource.item.where(linkId = 'work-soc').item.where(linkId = 'work-soc-2').answer.valueInteger.first() + %resource.item.where(linkId = 'work-soc').item.where(linkId = 'work-soc-5').answer.valueInteger.first() + %resource.item.where(linkId = 'work-soc').item.where(linkId = 'work-soc-8').answer.valueInteger.first()) / 3"
        }
      }],
      "linkId" : "work-soc-meaningfulness-score",
      "code" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability",
        "code" : "work-soc-meaningfulness",
        "display" : "Work-SoC meaningfulness score"
      }],
      "text" : "Score Sinnhaftigkeit: (Item 2 + Item 5 + Item 8) / 3",
      "type" : "decimal",
      "required" : false,
      "readOnly" : true
    },
    {
      "linkId" : "comment",
      "text" : "Haben Sie zu Ihren Antworten noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  }]
}

```
