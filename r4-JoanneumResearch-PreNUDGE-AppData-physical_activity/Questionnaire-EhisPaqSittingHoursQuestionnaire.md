# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\EHIS-PAQ Q9 / ATHIS PE9: Sitzen und Ruhen - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EHIS-PAQ Q9 / ATHIS PE9: Sitzen und Ruhen**

## Questionnaire: EHIS-PAQ Q9 / ATHIS PE9: Sitzen und Ruhen 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/EhisPaqSittingHoursQuestionnaire | *Version*:0.1.0 | |
| Active as of 2026-06-29 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:EhisPaqSittingHoursQuestionnaire |

 
EHIS-PAQ Q9 / ATHIS PE9: total time spent sitting or resting on a typical day (excluding sleep), captured as two integer sub-items (hours 0–23, minutes 0–60). Mapped to AtPrenudgeObservationSittingHours via SittingHoursQuestionnaireResponseToObservation (hours + minutes/60 → valueQuantity in h). 

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
  "id" : "EhisPaqSittingHoursQuestionnaire",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire"]
  },
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/EhisPaqSittingHoursQuestionnaire",
  "version" : "0.1.0",
  "name" : "EhisPaqSittingHoursQuestionnaire",
  "title" : "EHIS-PAQ Q9 / ATHIS PE9: Sitzen und Ruhen",
  "status" : "active",
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
  "description" : "EHIS-PAQ Q9 / ATHIS PE9: total time spent sitting or resting on a\ntypical day (excluding sleep), captured as two integer sub-items (hours 0–23,\nminutes 0–60). Mapped to AtPrenudgeObservationSittingHours via\nSittingHoursQuestionnaireResponseToObservation (hours + minutes/60 → valueQuantity\nin h).",
  "item" : [{
    "linkId" : "Intro_Q9",
    "text" : "Bei der nächsten Frage geht es um die Zeit, die Sie mit Sitzen oder Ruhen verbringen, bei der Arbeit, zu Hause, zur Fortbewegung oder mit Freund:innen, zum Beispiel am Schreibtisch sitzen, mit Freund:innen zusammensitzen.",
    "type" : "display",
    "required" : false
  },
  {
    "linkId" : "Q9",
    "code" : [{
      "system" : "http://loinc.org",
      "code" : "87705-0",
      "display" : "Sedentary activity 24 hour"
    }],
    "text" : "Wie viel Zeit verbringen Sie insgesamt an einem typischen Tag mit Sitzen oder Ruhen? Die Zeit, die Sie mit Schlafen verbringen, soll ausgeschlossen werden.",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "Q9-help",
      "text" : "Angabe von Stunden und Minuten pro Tag",
      "type" : "display",
      "required" : false
    },
    {
      "linkId" : "Q9-examples",
      "text" : "Beispiele für „Sitzen und Ruhen\" sind: Am Schreibtisch sitzen, Mit der Familie oder mit Freund:innen zusammensitzen, Auto, Bus, Zug fahren, Lesen, Fernsehen",
      "type" : "display",
      "required" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueInteger" : 0
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueInteger" : 23
      }],
      "linkId" : "Q9-hours",
      "text" : "Stunden",
      "type" : "integer",
      "required" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueInteger" : 0
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueInteger" : 60
      }],
      "linkId" : "Q9-minutes",
      "text" : "Minuten",
      "type" : "integer",
      "required" : true
    },
    {
      "linkId" : "Q9-comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string",
      "required" : false
    }]
  }]
}

```
