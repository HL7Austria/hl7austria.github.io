# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Muskelkräftigungs-Trainingseinheiten pro Woche (numerisch) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Muskelkräftigungs-Trainingseinheiten pro Woche (numerisch)**

## Questionnaire: Muskelkräftigungs-Trainingseinheiten pro Woche (numerisch) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/MuscleStrengtheningQuantityQuestionnaire | *Version*:0.1.0 | |
| Active as of 2026-08-26 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:MuscleStrengtheningQuantityQuestionnaire |

 
A numeric questionnaire for directly entering the number of muscle-strengthening exercise sessions per week. Designed for direct FML mapping to the AT PreNUDGE Observation Muscle Strengthening Sessions profile via MuscleStrengtheningQuestionnaireResponseToObservation. Use EhisPaqMuscleStrengtheningQuestionnaire for the categorical EHIS-PAQ Q8 / ATHIS PE8 representation. 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-08-26

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MuscleStrengtheningQuantityQuestionnaire",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire"]
  },
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/MuscleStrengtheningQuantityQuestionnaire",
  "version" : "0.1.0",
  "name" : "MuscleStrengtheningQuantityQuestionnaire",
  "title" : "Muskelkräftigungs-Trainingseinheiten pro Woche (numerisch)",
  "status" : "active",
  "experimental" : false,
  "subjectType" : ["Patient"],
  "date" : "2026-08-26T07:28:06+00:00",
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
  "description" : "A numeric questionnaire for directly entering the number of muscle-strengthening exercise sessions per week. Designed for direct FML mapping to the AT PreNUDGE Observation Muscle Strengthening Sessions profile via MuscleStrengtheningQuestionnaireResponseToObservation. Use EhisPaqMuscleStrengtheningQuestionnaire for the categorical EHIS-PAQ Q8 / ATHIS PE8 representation.",
  "item" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption",
      "valueCoding" : {
        "system" : "http://unitsofmeasure.org",
        "code" : "{sessions}/wk",
        "display" : "{sessions}/wk"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueDecimal" : 0
    }],
    "linkId" : "muscle-strengthening-sessions",
    "code" : [{
      "system" : "http://loinc.org",
      "code" : "82291-6",
      "display" : "Frequency of muscle-strengthening physical activity"
    }],
    "text" : "Wie viele Einheiten Muskelkräftigungsübungen (z.B. Krafttraining, Kräftigungsübungen mit Gewichten, Thera-Band oder eigenem Körpergewicht) absolvieren Sie typischerweise pro Woche?",
    "type" : "quantity",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  }]
}

```
