# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Quality of life by RAND 36-Item Health Survey 1.0 (SF-36) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Quality of life by RAND 36-Item Health Survey 1.0 (SF-36)**

## Questionnaire: Quality of life by RAND 36-Item Health Survey 1.0 (SF-36) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/QolQuestionnaire | *Version*:0.1.0 | |
| Active as of 2026-02-26 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:QoLByRandSF36v1 |



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "QolQuestionnaire",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire"]
  },
  "language" : "de-AT",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/QolQuestionnaire",
  "version" : "0.1.0",
  "name" : "QoLByRandSF36v1",
  "title" : "Quality of life by RAND 36-Item Health Survey 1.0 (SF-36)",
  "status" : "active",
  "subjectType" : ["Patient"],
  "date" : "2026-02-26T10:01:13+00:00",
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
  "item" : [{
    "linkId" : "Q1",
    "text" : "Wie würden Sie Ihren Gesundheitszustand im Allgemeinen beschreiben?",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "health-excellent",
        "display" : "Ausgezeichnet"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "health-very-good",
        "display" : "Sehr gut"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "health-good",
        "display" : "Gut"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "health-fair",
        "display" : "Weniger gut"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "health-poor",
        "display" : "Schlecht"
      }
    }],
    "item" : [{
      "linkId" : "Q1-comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  },
  {
    "linkId" : "Q2",
    "text" : "Im Vergleich zum vergangenen Jahr, wie würden Sie Ihren derzeitigen Gesundheitszustand beschreiben?",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "change-much-better",
        "display" : "Derzeit viel besser als vor einem Jahr"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "change-somewhat-better",
        "display" : "Derzeit etwas besser als vor einem Jahr"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "change-same",
        "display" : "Etwa so wie vor einem Jahr"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "change-somewhat-worse",
        "display" : "Derzeit etwas schlechter als vor einem Jahr"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "change-much-worse",
        "display" : "Derzeit viel schlechter als vor einem Jahr"
      }
    }],
    "item" : [{
      "linkId" : "Q2-comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  },
  {
    "linkId" : "Q3",
    "text" : "Im Folgenden sind einige Tätigkeiten beschrieben, die Sie vielleicht an einem normalen Tag ausüben. Sind Sie durch Ihren derzeitigen Gesundheitszustand bei diesen Tätigkeiten eingeschränkt? Wenn ja, wie stark?",
    "type" : "group",
    "item" : [{
      "linkId" : "Q3a",
      "text" : "Anstrengende Tätigkeiten, z.B. schnell laufen, schwere Gegenstände heben, anstrengenden Sport treiben",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "limited-a-lot",
          "display" : "Ja, stark eingeschränkt"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "limited-a-little",
          "display" : "Ja, etwas eingeschränkt"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "not-limited",
          "display" : "Nein, überhaupt nicht eingeschränkt"
        }
      }]
    },
    {
      "linkId" : "Q3b",
      "text" : "Mittelschwere Tätigkeiten, z.B. einen Tisch verschieben, staubsaugen, kegeln, Golf spielen",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "limited-a-lot",
          "display" : "Ja, stark eingeschränkt"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "limited-a-little",
          "display" : "Ja, etwas eingeschränkt"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "not-limited",
          "display" : "Nein, überhaupt nicht eingeschränkt"
        }
      }]
    },
    {
      "linkId" : "Q3c",
      "text" : "Einkaufstaschen heben oder tragen",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "limited-a-lot",
          "display" : "Ja, stark eingeschränkt"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "limited-a-little",
          "display" : "Ja, etwas eingeschränkt"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "not-limited",
          "display" : "Nein, überhaupt nicht eingeschränkt"
        }
      }]
    },
    {
      "linkId" : "Q3d",
      "text" : "Mehrere Treppenabsätze steigen",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "limited-a-lot",
          "display" : "Ja, stark eingeschränkt"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "limited-a-little",
          "display" : "Ja, etwas eingeschränkt"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "not-limited",
          "display" : "Nein, überhaupt nicht eingeschränkt"
        }
      }]
    },
    {
      "linkId" : "Q3e",
      "text" : "Einen Treppenabsatz steigen",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "limited-a-lot",
          "display" : "Ja, stark eingeschränkt"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "limited-a-little",
          "display" : "Ja, etwas eingeschränkt"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "not-limited",
          "display" : "Nein, überhaupt nicht eingeschränkt"
        }
      }]
    },
    {
      "linkId" : "Q3f",
      "text" : "Sich beugen, knien, bücken",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "limited-a-lot",
          "display" : "Ja, stark eingeschränkt"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "limited-a-little",
          "display" : "Ja, etwas eingeschränkt"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "not-limited",
          "display" : "Nein, überhaupt nicht eingeschränkt"
        }
      }]
    },
    {
      "linkId" : "Q3g",
      "text" : "Mehr als 1 Kilometer zu Fuß gehen",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "limited-a-lot",
          "display" : "Ja, stark eingeschränkt"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "limited-a-little",
          "display" : "Ja, etwas eingeschränkt"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "not-limited",
          "display" : "Nein, überhaupt nicht eingeschränkt"
        }
      }]
    },
    {
      "linkId" : "Q3h",
      "text" : "Mehrere Straßenkreuzungen weit zu Fuß gehen",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "limited-a-lot",
          "display" : "Ja, stark eingeschränkt"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "limited-a-little",
          "display" : "Ja, etwas eingeschränkt"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "not-limited",
          "display" : "Nein, überhaupt nicht eingeschränkt"
        }
      }]
    },
    {
      "linkId" : "Q3i",
      "text" : "Eine Straßenkreuzung weit zu Fuß gehen",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "limited-a-lot",
          "display" : "Ja, stark eingeschränkt"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "limited-a-little",
          "display" : "Ja, etwas eingeschränkt"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "not-limited",
          "display" : "Nein, überhaupt nicht eingeschränkt"
        }
      }]
    },
    {
      "linkId" : "Q3j",
      "text" : "Sich baden oder anziehen",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "limited-a-lot",
          "display" : "Ja, stark eingeschränkt"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "limited-a-little",
          "display" : "Ja, etwas eingeschränkt"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "not-limited",
          "display" : "Nein, überhaupt nicht eingeschränkt"
        }
      }]
    },
    {
      "linkId" : "Q3-comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  },
  {
    "linkId" : "Q4",
    "text" : "Hatten Sie in den vergangenen 4 Wochen aufgrund Ihrer körperlichen Gesundheit irgendwelche Schwierigkeiten bei der Arbeit oder anderen alltäglichen Tätigkeiten im Beruf bzw. zu Hause?",
    "type" : "group",
    "item" : [{
      "linkId" : "Q4a",
      "text" : "Ich konnte nicht so lange wie üblich tätig sein",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "yes",
          "display" : "Ja"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "no",
          "display" : "Nein"
        }
      }]
    },
    {
      "linkId" : "Q4b",
      "text" : "Ich habe weniger geschafft als ich wollte",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "yes",
          "display" : "Ja"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "no",
          "display" : "Nein"
        }
      }]
    },
    {
      "linkId" : "Q4c",
      "text" : "Ich konnte nur bestimmte Dinge tun",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "yes",
          "display" : "Ja"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "no",
          "display" : "Nein"
        }
      }]
    },
    {
      "linkId" : "Q4d",
      "text" : "Ich hatte Schwierigkeiten bei der Ausführung (z.B. ich musste mich besonders anstrengen)",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "yes",
          "display" : "Ja"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "no",
          "display" : "Nein"
        }
      }]
    },
    {
      "linkId" : "Q4-comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  },
  {
    "linkId" : "Q5",
    "text" : "Hatten Sie in den vergangenen 4 Wochen aufgrund seelischer Probleme irgendwelche Schwierigkeiten bei der Arbeit oder anderen alltäglichen Tätigkeiten im Beruf bzw. zu Hause (z.B. weil Sie sich niedergeschlagen oder ängstlich fühlten)?",
    "type" : "group",
    "item" : [{
      "linkId" : "Q5a",
      "text" : "Ich konnte nicht so lange wie üblich tätig sein",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "yes",
          "display" : "Ja"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "no",
          "display" : "Nein"
        }
      }]
    },
    {
      "linkId" : "Q5b",
      "text" : "Ich habe weniger geschafft als ich wollte",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "yes",
          "display" : "Ja"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "no",
          "display" : "Nein"
        }
      }]
    },
    {
      "linkId" : "Q5c",
      "text" : "Ich konnte nicht so sorgfältig wie üblich arbeiten",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "yes",
          "display" : "Ja"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "no",
          "display" : "Nein"
        }
      }]
    },
    {
      "linkId" : "Q5-comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  },
  {
    "linkId" : "Q6",
    "text" : "Wie sehr haben Ihre körperliche Gesundheit oder seelischen Probleme in den vergangenen 4 Wochen Ihre normalen Kontakte zu Familienangehörigen, Freunden, Nachbarn oder zum Bekanntenkreis beeinträchtigt?",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "interfere-not-at-all",
        "display" : "Überhaupt nicht"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "interfere-slightly",
        "display" : "Etwas"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "interfere-moderately",
        "display" : "Mäßig"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "interfere-quite-a-bit",
        "display" : "Ziemlich"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "interfere-extremely",
        "display" : "Sehr"
      }
    }],
    "item" : [{
      "linkId" : "Q6-comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  },
  {
    "linkId" : "Q7",
    "text" : "Wie stark waren Ihre Schmerzen in den vergangenen 4 Wochen?",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "pain-none",
        "display" : "Keine Schmerzen"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "pain-very-mild",
        "display" : "Sehr leicht"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "pain-mild",
        "display" : "Leicht"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "pain-moderate",
        "display" : "Mäßig"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "pain-severe",
        "display" : "Stark"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "pain-very-severe",
        "display" : "Sehr stark"
      }
    }],
    "item" : [{
      "linkId" : "Q7-comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  },
  {
    "linkId" : "Q8",
    "text" : "Inwieweit haben die Schmerzen Sie in den vergangenen 4 Wochen bei der Ausübung Ihrer Alltagstätigkeiten zu Hause und im Beruf behindert?",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "interfere-not-at-all",
        "display" : "Überhaupt nicht"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "interfere-slightly",
        "display" : "Etwas"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "interfere-moderately",
        "display" : "Mäßig"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "interfere-quite-a-bit",
        "display" : "Ziemlich"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "interfere-extremely",
        "display" : "Sehr"
      }
    }],
    "item" : [{
      "linkId" : "Q8-comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  },
  {
    "linkId" : "Q9",
    "text" : "In diesen Fragen geht es darum, wie Sie sich fühlen und wie es Ihnen in den vergangenen 4 Wochen gegangen ist. Bitte kreuzen Sie in jeder Zeile die Zahl an, die Ihrem Befinden am ehesten entspricht. Wie oft waren Sie in den vergangenen 4 Wochen...",
    "type" : "group",
    "item" : [{
      "linkId" : "Q9a",
      "text" : "...voller Schwung?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-all",
          "display" : "Immer"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-most",
          "display" : "Meistens"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-good-bit",
          "display" : "Ziemlich oft"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-some",
          "display" : "Manchmal"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-little",
          "display" : "Selten"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-none",
          "display" : "Nie"
        }
      }]
    },
    {
      "linkId" : "Q9b",
      "text" : "...sehr nervös?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-all",
          "display" : "Immer"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-most",
          "display" : "Meistens"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-good-bit",
          "display" : "Ziemlich oft"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-some",
          "display" : "Manchmal"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-little",
          "display" : "Selten"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-none",
          "display" : "Nie"
        }
      }]
    },
    {
      "linkId" : "Q9c",
      "text" : "...so niedergeschlagen, dass Sie nichts aufheitern konnte?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-all",
          "display" : "Immer"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-most",
          "display" : "Meistens"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-good-bit",
          "display" : "Ziemlich oft"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-some",
          "display" : "Manchmal"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-little",
          "display" : "Selten"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-none",
          "display" : "Nie"
        }
      }]
    },
    {
      "linkId" : "Q9d",
      "text" : "...ruhig und gelassen?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-all",
          "display" : "Immer"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-most",
          "display" : "Meistens"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-good-bit",
          "display" : "Ziemlich oft"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-some",
          "display" : "Manchmal"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-little",
          "display" : "Selten"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-none",
          "display" : "Nie"
        }
      }]
    },
    {
      "linkId" : "Q9e",
      "text" : "...voller Energie?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-all",
          "display" : "Immer"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-most",
          "display" : "Meistens"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-good-bit",
          "display" : "Ziemlich oft"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-some",
          "display" : "Manchmal"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-little",
          "display" : "Selten"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-none",
          "display" : "Nie"
        }
      }]
    },
    {
      "linkId" : "Q9f",
      "text" : "...entmutigt und traurig?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-all",
          "display" : "Immer"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-most",
          "display" : "Meistens"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-good-bit",
          "display" : "Ziemlich oft"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-some",
          "display" : "Manchmal"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-little",
          "display" : "Selten"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-none",
          "display" : "Nie"
        }
      }]
    },
    {
      "linkId" : "Q9g",
      "text" : "...erschöpft?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-all",
          "display" : "Immer"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-most",
          "display" : "Meistens"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-good-bit",
          "display" : "Ziemlich oft"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-some",
          "display" : "Manchmal"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-little",
          "display" : "Selten"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-none",
          "display" : "Nie"
        }
      }]
    },
    {
      "linkId" : "Q9h",
      "text" : "...glücklich?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-all",
          "display" : "Immer"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-most",
          "display" : "Meistens"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-good-bit",
          "display" : "Ziemlich oft"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-some",
          "display" : "Manchmal"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-little",
          "display" : "Selten"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-none",
          "display" : "Nie"
        }
      }]
    },
    {
      "linkId" : "Q9i",
      "text" : "...müde?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-all",
          "display" : "Immer"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-most",
          "display" : "Meistens"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-good-bit",
          "display" : "Ziemlich oft"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-some",
          "display" : "Manchmal"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-little",
          "display" : "Selten"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "freq-none",
          "display" : "Nie"
        }
      }]
    },
    {
      "linkId" : "Q9-comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  },
  {
    "linkId" : "Q10",
    "text" : "Wie häufig haben Ihre körperliche Gesundheit oder seelischen Probleme in den vergangenen 4 Wochen Ihre Kontakte zu anderen Menschen (Besuche bei Freunden, Verwandten usw.) beeinträchtigt?",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "freq5-all",
        "display" : "Immer"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "freq5-most",
        "display" : "Meistens"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "freq5-some",
        "display" : "Manchmal"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "freq5-little",
        "display" : "Selten"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
        "code" : "freq5-none",
        "display" : "Nie"
      }
    }],
    "item" : [{
      "linkId" : "Q10-comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  },
  {
    "linkId" : "Q11",
    "text" : "Inwieweit trifft jede der folgenden Aussagen auf Sie zu?",
    "type" : "group",
    "item" : [{
      "linkId" : "Q11a",
      "text" : "Ich scheine etwas leichter als andere krank zu werden",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "agree-definitely-true",
          "display" : "Trifft ganz zu"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "agree-mostly-true",
          "display" : "Trifft weitgehend zu"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "agree-dont-know",
          "display" : "Weiß nicht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "agree-mostly-false",
          "display" : "Trifft weitgehend nicht zu"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "agree-definitely-false",
          "display" : "Trifft überhaupt nicht zu"
        }
      }]
    },
    {
      "linkId" : "Q11b",
      "text" : "Ich bin genauso gesund wie alle anderen, die ich kenne",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "agree-definitely-true",
          "display" : "Trifft ganz zu"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "agree-mostly-true",
          "display" : "Trifft weitgehend zu"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "agree-dont-know",
          "display" : "Weiß nicht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "agree-mostly-false",
          "display" : "Trifft weitgehend nicht zu"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "agree-definitely-false",
          "display" : "Trifft überhaupt nicht zu"
        }
      }]
    },
    {
      "linkId" : "Q11c",
      "text" : "Ich erwarte, dass meine Gesundheit nachlässt",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "agree-definitely-true",
          "display" : "Trifft ganz zu"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "agree-mostly-true",
          "display" : "Trifft weitgehend zu"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "agree-dont-know",
          "display" : "Weiß nicht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "agree-mostly-false",
          "display" : "Trifft weitgehend nicht zu"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "agree-definitely-false",
          "display" : "Trifft überhaupt nicht zu"
        }
      }]
    },
    {
      "linkId" : "Q11d",
      "text" : "Ich erfreue mich ausgezeichneter Gesundheit",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "agree-definitely-true",
          "display" : "Trifft ganz zu"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "agree-mostly-true",
          "display" : "Trifft weitgehend zu"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "agree-dont-know",
          "display" : "Weiß nicht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "agree-mostly-false",
          "display" : "Trifft weitgehend nicht zu"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/rand-sf36-answers",
          "code" : "agree-definitely-false",
          "display" : "Trifft überhaupt nicht zu"
        }
      }]
    },
    {
      "linkId" : "Q11-comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  }]
}

```
