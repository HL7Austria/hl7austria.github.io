# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Arbeitsfähigkeit (WAI Kurzmodul) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Arbeitsfähigkeit (WAI Kurzmodul)**

## Questionnaire: Arbeitsfähigkeit (WAI Kurzmodul) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/WorkAbilityIndexQuestionnaire | *Version*:0.1.0 | |
| Active as of 2026-06-29 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:WorkAbilityIndexQuestionnaire |

 
Short Work Ability Index (WAI) questionnaire module based on Tuomi et al. 1998. The raw answers are collected as QuestionnaireResponse. 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-06-29

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "WorkAbilityIndexQuestionnaire",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire"]
  },
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/WorkAbilityIndexQuestionnaire",
  "version" : "0.1.0",
  "name" : "WorkAbilityIndexQuestionnaire",
  "title" : "Arbeitsfähigkeit (WAI Kurzmodul)",
  "status" : "active",
  "experimental" : false,
  "subjectType" : ["Patient"],
  "date" : "2026-06-29T13:58:40+00:00",
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
  "description" : "Short Work Ability Index (WAI) questionnaire module based on Tuomi et al. 1998. The raw answers are collected as QuestionnaireResponse.",
  "item" : [{
    "linkId" : "wai",
    "code" : [{
      "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability",
      "code" : "wai-questionnaire",
      "display" : "Work Ability Index short questionnaire"
    }],
    "text" : "Arbeitsfähigkeit",
    "type" : "group",
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueInteger" : 0
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueInteger" : 10
      }],
      "linkId" : "wai-current-work-ability",
      "code" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability",
        "code" : "wai-current-work-ability",
        "display" : "Current work ability compared with lifetime best"
      }],
      "text" : "Wenn Sie Ihre beste, je erreichte Arbeitsfähigkeit mit 10 Punkten bewerten: Wie viele Punkte würden Sie dann für Ihre derzeitige Arbeitsfähigkeit geben? 0 bedeutet, dass Sie derzeit völlig arbeitsunfähig sind; 10 bedeutet derzeit die beste Arbeitsfähigkeit.",
      "type" : "integer",
      "required" : true
    },
    {
      "linkId" : "wai-physical-demands-work-ability",
      "code" : [{
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-workability",
        "code" : "wai-physical-demands-work-ability",
        "display" : "Current work ability in relation to physical work demands"
      }],
      "text" : "Wie schätzen Sie Ihre derzeitige Arbeitsfähigkeit in Bezug zu den körperlichen Arbeitsanforderungen ein?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-wai-answer",
          "code" : "very-good",
          "display" : "Sehr gut (5)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-wai-answer",
          "code" : "rather-good",
          "display" : "Eher gut (4)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-wai-answer",
          "code" : "moderate",
          "display" : "Mittelmäßig (3)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-wai-answer",
          "code" : "rather-poor",
          "display" : "Eher schlecht (2)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-wai-answer",
          "code" : "very-poor",
          "display" : "Sehr schlecht (1)"
        }
      }]
    },
    {
      "linkId" : "comment",
      "text" : "Haben Sie zu Ihren Antworten noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  }]
}

```
