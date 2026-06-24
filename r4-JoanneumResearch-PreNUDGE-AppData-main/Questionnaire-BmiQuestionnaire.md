# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Körpergröße, Körpergewicht und Body Mass Index (BMI) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Körpergröße, Körpergewicht und Body Mass Index (BMI)**

## Questionnaire: Körpergröße, Körpergewicht und Body Mass Index (BMI) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/BmiQuestionnaire | *Version*:0.1.0 | |
| Active as of 2026-06-24 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:BmiQuestionnaire |

 
Questionnaire for self-reporting body height and body weight. The Body Mass Index (BMI) is defined as an SDC calculated expression based on height in cm and weight in kg. The QuestionnaireResponse may be mapped to separate body height, body weight and BMI Observations. 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-06-24

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "BmiQuestionnaire",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire"]
  },
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/BmiQuestionnaire",
  "version" : "0.1.0",
  "name" : "BmiQuestionnaire",
  "title" : "Körpergröße, Körpergewicht und Body Mass Index (BMI)",
  "status" : "active",
  "experimental" : false,
  "subjectType" : ["Patient"],
  "date" : "2026-06-24T12:07:10+00:00",
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
  "description" : "Questionnaire for self-reporting body height and body weight. The Body Mass Index (BMI) is defined as an SDC calculated expression based on height in cm and weight in kg. The QuestionnaireResponse may be mapped to separate body height, body weight and BMI Observations.",
  "item" : [{
    "linkId" : "bmi",
    "text" : "Body Mass Index (BMI)",
    "type" : "group",
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueDecimal" : 50
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueDecimal" : 250
      }],
      "linkId" : "height-cm",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "8302-2",
        "display" : "Body height"
      }],
      "text" : "Körpergröße in Zentimetern (cm)",
      "type" : "decimal",
      "required" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueDecimal" : 20
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueDecimal" : 300
      }],
      "linkId" : "weight-kg",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "29463-7",
        "display" : "Body weight"
      }],
      "text" : "Körpergewicht in Kilogramm (kg)",
      "type" : "decimal",
      "required" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueDecimal" : 5
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueDecimal" : 100
      },
      {
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "%resource.item.where(linkId = 'bmi').item.where(linkId = 'weight-kg').answer.valueDecimal.first() / ((%resource.item.where(linkId = 'bmi').item.where(linkId = 'height-cm').answer.valueDecimal.first() / 100) * (%resource.item.where(linkId = 'bmi').item.where(linkId = 'height-cm').answer.valueDecimal.first() / 100))"
        }
      }],
      "linkId" : "bmi-kg-m2",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "39156-5",
        "display" : "Body mass index (BMI) [Ratio]"
      }],
      "text" : "Body Mass Index (BMI) in kg/m²",
      "type" : "decimal",
      "required" : false,
      "readOnly" : true
    },
    {
      "linkId" : "comment",
      "text" : "Haben Sie zu Ihren Angaben noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  }]
}

```
