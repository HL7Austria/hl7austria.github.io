# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Konsumhäufigkeit fett-, zucker- und salzreicher Lebensmittel - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Konsumhäufigkeit fett-, zucker- und salzreicher Lebensmittel**

## Questionnaire: Konsumhäufigkeit fett-, zucker- und salzreicher Lebensmittel 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/NutritionSugarSaltyQuestionnaire | *Version*:0.1.0 | |
| Active as of 2026-06-29 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:NutritionSugarSaltyQuestionnaire |

 
Questionnaire based on ATHIS 2025 question DH6 (STATISTIK AUSTRIA) to self-report the weekly consumption frequency of sugary, fatty, and salty foods and energy-dense drinks. 

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
  "id" : "NutritionSugarSaltyQuestionnaire",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire"]
  },
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/NutritionSugarSaltyQuestionnaire",
  "version" : "0.1.0",
  "name" : "NutritionSugarSaltyQuestionnaire",
  "title" : "Konsumhäufigkeit fett-, zucker- und salzreicher Lebensmittel",
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
  "description" : "Questionnaire based on ATHIS 2025 question DH6 (STATISTIK AUSTRIA) to self-report the weekly consumption frequency of sugary, fatty, and salty foods and energy-dense drinks.",
  "item" : [{
    "linkId" : "DH6",
    "text" : "DH6: Wie oft konsumieren Sie fett-, zucker- und salzreiche Lebensmittel, wie Süßigkeiten, Mehlspeisen, Knabbereien und trinken Sie energiereiche Getränke wie Limonaden?\n\nDazu zählen: zuckerhaltige Erfrischungsgetränke (\"Softdrinks\") wie Cola, Fanta, Sprite, Eistee, Energy-Drinks; zuckerhaltige Limonaden; zuckerhaltige Sirup-Getränke.\n\nNicht dazu zählen: Erfrischungsgetränke mit ausschließlich künstlichen Süßstoffen; Diät-, Light- und Zero-Getränke; gezuckerter Tee oder Kaffee.",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
        "code" : "diet-daily-or-more",
        "display" : "Täglich oder mehrmals täglich"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
        "code" : "diet-4-6-per-week",
        "display" : "4 bis 6 Mal pro Woche"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
        "code" : "diet-1-3-per-week",
        "display" : "1 bis 3 Mal pro Woche"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
        "code" : "diet-less-than-once-per-week",
        "display" : "Weniger als einmal pro Woche"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
        "code" : "diet-never",
        "display" : "Nie"
      }
    }],
    "item" : [{
      "linkId" : "DH6-comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  }]
}

```
