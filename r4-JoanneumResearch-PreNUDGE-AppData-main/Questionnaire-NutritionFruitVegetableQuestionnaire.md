# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Portionen Obst und Gemüse pro Tag - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Portionen Obst und Gemüse pro Tag**

## Questionnaire: Portionen Obst und Gemüse pro Tag 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/NutritionFruitVegetableQuestionnaire | *Version*:0.1.0 | |
| Active as of 2026-07-23 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:NutritionFruitVegetableQuestionnaire |

 
Questionnaire based on ATHIS 2025 questions DH1–DH4 (STATISTIK AUSTRIA) to self-report daily portions of fruit and vegetables. DH2 is only enabled when DH1 = 'Täglich oder mehrmals täglich'; DH4 is only enabled when DH3 = 'Täglich oder mehrmals täglich'. 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-07-23

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "NutritionFruitVegetableQuestionnaire",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire"]
  },
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/NutritionFruitVegetableQuestionnaire",
  "version" : "0.1.0",
  "name" : "NutritionFruitVegetableQuestionnaire",
  "title" : "Portionen Obst und Gemüse pro Tag",
  "status" : "active",
  "experimental" : false,
  "subjectType" : ["Patient"],
  "date" : "2026-07-23T14:49:55+00:00",
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
  "description" : "Questionnaire based on ATHIS 2025 questions DH1–DH4 (STATISTIK AUSTRIA) to self-report daily portions of fruit and vegetables. DH2 is only enabled when DH1 = 'Täglich oder mehrmals täglich'; DH4 is only enabled when DH3 = 'Täglich oder mehrmals täglich'.",
  "item" : [{
    "linkId" : "DH1",
    "text" : "Zunächst geht es um Obst, das können frische oder gefrorene, getrocknete oder pürierte Früchte sein. Nicht gemeint sind Obstsäfte.\n\nDH1 - Wie oft essen Sie Obst?",
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
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
        "code" : "meta-unknown",
        "display" : "Weiß nicht"
      }
    }],
    "item" : [{
      "linkId" : "DH1-comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
      "valueInteger" : 99
    }],
    "linkId" : "DH2",
    "text" : "DH2: Wie viele Portionen Obst essen Sie pro Tag? Eine Portion entspricht einer Handvoll Obst.\n\nEine Handvoll Obst kann sein:\n- 1 Apfel, 1 Banane, 1 Pfirsich, 2 Zwetschken, 2 Mandarinen, 2 Kiwis, 3 Marillen, 7 Erdbeeren, eine halbe Grapefruit\n- drei große Löffel ungezuckerter Obstsalat\n- bei halben Portionen aufrunden.",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "DH1",
      "operator" : "=",
      "answerCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
        "code" : "diet-daily-or-more"
      }
    }],
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "DH2-comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  },
  {
    "linkId" : "DH3",
    "text" : "Und nun zum Gemüse, das kann frisch oder gefroren, roh oder gekocht sein. Kartoffeln, Gemüsesäfte oder Gemüsesuppen zählen nicht dazu.\n\nDH3: Wie oft essen Sie Gemüse oder Salat?",
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
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
        "code" : "meta-unknown",
        "display" : "Weiß nicht"
      }
    }],
    "item" : [{
      "linkId" : "DH3-comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
      "valueInteger" : 99
    }],
    "linkId" : "DH4",
    "text" : "DH4: Wie viele Portionen Gemüse oder Salat essen Sie pro Tag? Eine Portion entspricht einer Handvoll Gemüse oder Salat.\n\nEine Handvoll Gemüse oder Salat kann sein:\n- 2 Brokkoli-Stämme, 8 Karfiol-Rosen, 4 gehäufte Suppenlöffel Kraut oder Spinat\n- 3 gehäufte Suppenlöffel gedünstetes Gemüse\n- ein mittlerer Paradeiser, ein 5 cm großes Stück Gurke\n- bei halben Portionen aufrunden.",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "DH3",
      "operator" : "=",
      "answerCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
        "code" : "diet-daily-or-more"
      }
    }],
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "DH4-comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  }]
}

```
