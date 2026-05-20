# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Blutzucker bei der letzten Messung - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Blutzucker bei der letzten Messung**

## Questionnaire: Blutzucker bei der letzten Messung 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/BloodGlucoseQuestionnaire | *Version*:0.1.0 | |
| Active as of 2026-05-20 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:BloodGlucoseQuestionnaire |

 
A simple questionnaire for asking how high the blood glucose level is right now. The blood glucose option only allows values inbetween 0 and 999 mg/dL. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "BloodGlucoseQuestionnaire",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire"]
  },
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/BloodGlucoseQuestionnaire",
  "version" : "0.1.0",
  "name" : "BloodGlucoseQuestionnaire",
  "title" : "Blutzucker bei der letzten Messung",
  "status" : "active",
  "experimental" : false,
  "subjectType" : ["Patient"],
  "date" : "2026-05-20T09:08:27+00:00",
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
  "description" : "A simple questionnaire for asking how high the blood glucose level is right now. The blood glucose option only allows values inbetween 0 and 999 mg/dL.",
  "item" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption",
      "valueCoding" : {
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/dL",
        "display" : "mg/dL"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueDecimal" : 0
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
      "valueDecimal" : 999
    }],
    "linkId" : "blood-glucose",
    "code" : [{
      "system" : "http://loinc.org",
      "code" : "41653-7",
      "display" : "Glucose [Mass/volume] in Capillary blood by Glucometer"
    }],
    "text" : "Wie hoch ist Ihr Blutzucker aktuell (mg/dL)?",
    "type" : "quantity",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "meal-context",
      "text" : "Wurde dieser Wert nüchtern, vor dem Essen oder nach dem Essen gemessen?",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/prenudge-bloodglucose-mealcontext"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "now().toString()"
        }
      }],
      "linkId" : "datetime",
      "text" : "Wann haben sie diesen Wert gemessen?",
      "type" : "dateTime",
      "required" : true
    },
    {
      "linkId" : "comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  }]
}

```
