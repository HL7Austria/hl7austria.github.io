# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Rauchstatus und Nikotinkonsum - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Rauchstatus und Nikotinkonsum**

## Questionnaire: Rauchstatus und Nikotinkonsum 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/SmokingStatusQuestionnaire | *Version*:0.1.0 | |
| Active as of 2026-05-20 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:SmokingStatusQuestionnaire |

 
ATHIS-based questionnaire module for smoking status, cigarette consumption, duration of daily smoking, tobacco heaters, electronic cigarettes or similar electronic products, and nicotine pouches. A derived IPS-compatible Observation can be created from SK1 and the past tobacco smoking question. 



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
  "description" : "ATHIS-based questionnaire module for smoking status, cigarette consumption, duration of daily smoking, tobacco heaters, electronic cigarettes or similar electronic products, and nicotine pouches. A derived IPS-compatible Observation can be created from SK1 and the past tobacco smoking question.",
  "item" : [{
    "linkId" : "smoking-status-athis",
    "text" : "Rauchstatus und Nikotinkonsum",
    "type" : "group",
    "item" : [{
      "linkId" : "sk1",
      "text" : "Rauchen Sie Tabakprodukte (Zigaretten, Zigarren, Pfeife)? Nicht gemeint sind E-Zigaretten oder ähnliche elektronische Produkte.",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-athis-smoking",
          "code" : "status-no",
          "display" : "Nein"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-athis-smoking",
          "code" : "status-occasional",
          "display" : "Ja, gelegentlich"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-athis-smoking",
          "code" : "status-daily",
          "display" : "Ja, täglich"
        }
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
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-athis-smoking",
          "code" : "status-daily",
          "display" : "Ja, täglich"
        }
      }],
      "required" : false,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-athis-smoking",
          "code" : "yes",
          "display" : "Ja"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-athis-smoking",
          "code" : "no",
          "display" : "Nein"
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
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-athis-smoking",
          "code" : "yes",
          "display" : "Ja"
        }
      }],
      "required" : false
    },
    {
      "linkId" : "past-tobacco-smoking",
      "text" : "Haben Sie in der Vergangenheit Tabakprodukte geraucht?",
      "type" : "choice",
      "enableWhen" : [{
        "question" : "sk1",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-athis-smoking",
          "code" : "status-no",
          "display" : "Nein"
        }
      }],
      "required" : false,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-athis-smoking",
          "code" : "status-no",
          "display" : "Nein"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-athis-smoking",
          "code" : "status-occasional",
          "display" : "Ja, gelegentlich"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-athis-smoking",
          "code" : "status-daily",
          "display" : "Ja, täglich"
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
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-athis-smoking",
          "code" : "status-daily",
          "display" : "Ja, täglich"
        }
      },
      {
        "question" : "past-tobacco-smoking",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-athis-smoking",
          "code" : "status-occasional",
          "display" : "Ja, gelegentlich"
        }
      }],
      "enableBehavior" : "any",
      "required" : false
    },
    {
      "linkId" : "sk4",
      "text" : "Wie viele Jahre lang haben Sie täglich geraucht? Zählen Sie alle Zeitabschnitte, an denen Sie täglich geraucht haben, zusammen. Wenn Sie sich nicht an die genaue Anzahl der Jahre erinnern können, geben Sie bitte eine Schätzung an.",
      "type" : "integer",
      "enableWhen" : [{
        "question" : "past-tobacco-smoking",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-athis-smoking",
          "code" : "status-daily",
          "display" : "Ja, täglich"
        }
      }],
      "required" : false
    },
    {
      "linkId" : "sk6a",
      "text" : "Nutzen Sie aktuell Tabakerhitzer, bei denen Tabaksticks oder loser Tabak erhitzt werden, zum Beispiel der Marken IQOS, glo, Ploom oder PAX?",
      "type" : "choice",
      "required" : false,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-athis-smoking",
          "code" : "status-daily",
          "display" : "Ja, täglich"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-athis-smoking",
          "code" : "status-occasional",
          "display" : "Ja, gelegentlich"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-athis-smoking",
          "code" : "use-former",
          "display" : "Nein, aber früher"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-athis-smoking",
          "code" : "use-never",
          "display" : "Nein, noch nie konsumiert"
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
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-athis-smoking",
          "code" : "status-daily",
          "display" : "Ja, täglich"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-athis-smoking",
          "code" : "status-occasional",
          "display" : "Ja, gelegentlich"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-athis-smoking",
          "code" : "use-former",
          "display" : "Nein, aber früher"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-athis-smoking",
          "code" : "use-never",
          "display" : "Nein, noch nie konsumiert"
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
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-athis-smoking",
          "code" : "status-daily",
          "display" : "Ja, täglich"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-athis-smoking",
          "code" : "status-occasional",
          "display" : "Ja, gelegentlich"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-athis-smoking",
          "code" : "use-former",
          "display" : "Nein, aber früher"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-athis-smoking",
          "code" : "use-never",
          "display" : "Nein, noch nie konsumiert"
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
