# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Rauchstatus und Nikotinkonsum - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Rauchstatus und Nikotinkonsum**

## Questionnaire: Rauchstatus und Nikotinkonsum 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/SmokingStatusQuestionnaire | *Version*:0.1.0 | |
| Active as of 2026-06-18 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:SmokingStatusQuestionnaire |

 
ATHIS 2025-based questionnaire module for smoking status, cigarette consumption, duration of daily smoking, tobacco heaters, electronic cigarettes or similar electronic products, and nicotine pouches. A derived IPS-compatible Observation can be created from SK1 and the past tobacco smoking question. 

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
  "resourceType" : "Questionnaire",
  "id" : "SmokingStatusQuestionnaire",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire"]
  },
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/SmokingStatusQuestionnaire",
  "version" : "0.1.0",
  "name" : "SmokingStatusQuestionnaire",
  "title" : "Rauchstatus und Nikotinkonsum",
  "status" : "active",
  "subjectType" : ["Patient"],
  "date" : "2026-06-18T08:24:24+00:00",
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
  "description" : "ATHIS 2025-based questionnaire module for smoking status, cigarette consumption, duration of daily smoking, tobacco heaters, electronic cigarettes or similar electronic products, and nicotine pouches. A derived IPS-compatible Observation can be created from SK1 and the past tobacco smoking question.",
  "item" : [{
    "linkId" : "smoking-status-athis",
    "text" : "Rauchstatus und Nikotinkonsum",
    "type" : "group",
    "item" : [{
      "linkId" : "sk1",
      "text" : "Rauchen Sie Tabakprodukte? Nicht gemeint sind Tabakerhitzer, elektronische Zigaretten oder ähnliche elektronische Produkte",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "yn-yes-daily",
          "display" : "Ja, täglich"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "yn-yes-occasionally",
          "display" : "Ja, gelegentlich"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "yn-no-not-at-all",
          "display" : "Nein, überhaupt nicht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "meta-unknown",
          "display" : "Weiß nicht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "meta-not-stated",
          "display" : "Keine Angabe"
        }
      }],
      "item" : [{
        "linkId" : "sk1-help",
        "text" : "Tabakprodukte sind: Zigaretten (aus der Schachtel und/oder selbstgedreht), Zigarren (einschließlich Zigarillos), Pfeife. Nicht dazu zählen: Tabakschnupfen oder Tabakkauen, Shisha, Elektronische Zigaretten oder ähnliche elektronische Produkte, Cannabis gemischt mit Tabak",
        "type" : "display"
      }]
    },
    {
      "linkId" : "sk2a",
      "text" : "Rauchen Sie täglich Zigaretten aus der Schachtel oder selbstgedrehte Zigaretten?",
      "type" : "choice",
      "enableWhen" : [{
        "question" : "sk1",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "yn-yes-daily",
          "display" : "Ja, täglich"
        }
      }],
      "required" : false,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "yn-yes",
          "display" : "Ja"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "yn-no",
          "display" : "Nein"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "meta-unknown",
          "display" : "Weiß nicht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "meta-not-stated",
          "display" : "Keine Angabe"
        }
      }]
    },
    {
      "linkId" : "sk2b",
      "text" : "Wie viele Zigaretten rauchen Sie durchschnittlich pro Tag?",
      "type" : "integer",
      "enableWhen" : [{
        "question" : "sk2a",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "yn-yes",
          "display" : "Ja"
        }
      }],
      "required" : false,
      "item" : [{
        "linkId" : "sk2-help",
        "text" : "Bitte um Angabe von Zigaretten, nicht von Packungen. In einer Zigarettenschachtel sind meist 20 Zigaretten enthalten.",
        "type" : "display"
      }]
    },
    {
      "linkId" : "past-tobacco-smoking",
      "text" : "Haben Sie in der Vergangenheit Tabakprodukte geraucht?",
      "type" : "choice",
      "enableWhen" : [{
        "question" : "sk1",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "yn-no-not-at-all",
          "display" : "Nein, überhaupt nicht"
        }
      }],
      "required" : false,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "yn-no",
          "display" : "Nein"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "yn-yes-occasionally",
          "display" : "Ja, gelegentlich"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "yn-yes-daily",
          "display" : "Ja, täglich"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "meta-unknown",
          "display" : "Weiß nicht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "meta-not-stated",
          "display" : "Keine Angabe"
        }
      }]
    },
    {
      "linkId" : "past-cigarettes-per-day",
      "text" : "Wie viele Zigaretten haben Sie durchschnittlich pro Tag geraucht?",
      "type" : "integer",
      "enableWhen" : [{
        "question" : "past-tobacco-smoking",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "yn-yes-daily",
          "display" : "Ja, täglich"
        }
      },
      {
        "question" : "past-tobacco-smoking",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "yn-yes-occasionally",
          "display" : "Ja, gelegentlich"
        }
      }],
      "enableBehavior" : "any",
      "required" : false
    },
    {
      "linkId" : "sk4",
      "text" : "Wie viele Jahre haben Sie täglich geraucht? Bitte zählen Sie alle Zeiträume von täglichem Rauchen zusammen.",
      "type" : "integer",
      "enableWhen" : [{
        "question" : "past-tobacco-smoking",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "yn-yes-daily",
          "display" : "Ja, täglich"
        }
      }],
      "required" : false,
      "item" : [{
        "linkId" : "sk4-help",
        "text" : "Wenn Sie sich nicht an die genaue Anzahl der Jahre erinnern, geben Sie bitte eine Schätzung ab.",
        "type" : "display"
      }]
    },
    {
      "linkId" : "sk6a",
      "text" : "Nutzen Sie derzeit Tabakerhitzer, bei denen Tabaksticks oder loser Tabak erhitzt werden, zum Beispiel der Marken IQOS, glo, Ploom oder PAX?",
      "type" : "choice",
      "required" : false,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "yn-yes-daily",
          "display" : "Ja, täglich"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "yn-yes-occasionally",
          "display" : "Ja, gelegentlich"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "yn-no-but-formerly",
          "display" : "Nein, aber früher"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "yn-no-never",
          "display" : "Nein, noch nie genutzt/konsumiert"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "meta-unknown",
          "display" : "Weiß nicht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "meta-not-stated",
          "display" : "Keine Angabe"
        }
      }]
    },
    {
      "linkId" : "sk6b",
      "text" : "Konsumieren Sie derzeit elektronische Zigaretten oder ähnliche elektronische Produkte? Zum Beispiel E-Shisha oder E-Pfeife.",
      "type" : "choice",
      "required" : false,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "yn-yes-daily",
          "display" : "Ja, täglich"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "yn-yes-occasionally",
          "display" : "Ja, gelegentlich"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "yn-no-but-formerly",
          "display" : "Nein, aber früher"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "yn-no-never",
          "display" : "Nein, noch nie genutzt/konsumiert"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "meta-unknown",
          "display" : "Weiß nicht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "meta-not-stated",
          "display" : "Keine Angabe"
        }
      }]
    },
    {
      "linkId" : "sk6c",
      "text" : "Konsumieren Sie derzeit Nikotinbeutel?",
      "type" : "choice",
      "required" : false,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "yn-yes-daily",
          "display" : "Ja, täglich"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "yn-yes-occasionally",
          "display" : "Ja, gelegentlich"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "yn-no-but-formerly",
          "display" : "Nein, aber früher"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "yn-no-never",
          "display" : "Nein, noch nie genutzt/konsumiert"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "meta-unknown",
          "display" : "Weiß nicht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
          "code" : "meta-not-stated",
          "display" : "Keine Angabe"
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
