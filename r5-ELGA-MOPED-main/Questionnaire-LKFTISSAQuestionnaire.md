# ELGA.MOPED\I12 Questionnaire für TISS-A-Daten - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **I12 Questionnaire für TISS-A-Daten**

## Questionnaire: I12 Questionnaire für TISS-A-Daten 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFTISSAQuestionnaire | *Version*:0.1.0 | |
| Active as of 2026-01-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFTISSAQuestionnaire",
  "url" : "https://elga.moped.at/Questionnaire/LKFTISSAQuestionnaire",
  "version" : "0.1.0",
  "title" : "I12 Questionnaire für TISS-A-Daten",
  "status" : "active",
  "subjectType" : ["Patient"],
  "date" : "2026-01-07T10:11:40+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://elga.gv.at"
        }
      ]
    }
  ],
  "item" : [
    {
      "linkId" : "krankenanstaltennummer",
      "text" : "Krankenanstaltennummer",
      "type" : "string",
      "maxLength" : 20
    },
    {
      "linkId" : "aufnahmezahl",
      "text" : "Aufnahmezahl",
      "type" : "string",
      "maxLength" : 12
    },
    {
      "linkId" : "datensatz-id",
      "text" : "Datensatz-ID",
      "type" : "string",
      "maxLength" : 64
    },
    {
      "linkId" : "aufnahme-kontaktdatum",
      "text" : "Aufnahme-/Kontaktdatum",
      "type" : "string",
      "maxLength" : 8
    },
    {
      "linkId" : "bettenfuhrende-hauptkostenstelle-positionsnummer",
      "text" : "Bettenführende Hauptkostenstelle – Positionsnummer",
      "type" : "string",
      "maxLength" : 3
    },
    {
      "linkId" : "erhebungsdatum",
      "text" : "Erhebungsdatum",
      "type" : "string",
      "maxLength" : 8
    },
    {
      "linkId" : "standard-monitoring",
      "text" : "Standard-Monitoring",
      "type" : "boolean"
    },
    {
      "linkId" : "labor",
      "text" : "Labor",
      "type" : "boolean"
    },
    {
      "linkId" : "medikamente",
      "text" : "Medikamente",
      "type" : "coding",
      "answerOption" : [
        {
          "valueCoding" : {
            "code" : "0",
            "display" : "Keine Medikamente/nicht erhoben"
          }
        },
        {
          "valueCoding" : {
            "code" : "1",
            "display" : "Medikamente einfach"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "Medikamente mehrfach"
          }
        }
      ]
    },
    {
      "linkId" : "verbandswechsel",
      "text" : "Verbandswechsel",
      "type" : "coding",
      "answerOption" : [
        {
          "valueCoding" : {
            "code" : "0",
            "display" : "Kein Verbandswechsel/nicht erhoben"
          }
        },
        {
          "valueCoding" : {
            "code" : "1",
            "display" : "Routineverbandswechsel"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "Verbandswechsel häufig"
          }
        },
        {
          "valueCoding" : {
            "code" : "3",
            "display" : "Routineverbandswechsel und Verbandswechsel häufig"
          }
        }
      ]
    },
    {
      "linkId" : "drainagenpflege",
      "text" : "Drainagenpflege",
      "type" : "boolean"
    },
    {
      "linkId" : "atmungsmodus",
      "text" : "Atmungsmodus",
      "type" : "coding",
      "answerOption" : [
        {
          "valueCoding" : {
            "code" : "0",
            "display" : "Spontanatmung/nicht erhoben"
          }
        },
        {
          "valueCoding" : {
            "code" : "1",
            "display" : "BIPAP"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "CPAP"
          }
        },
        {
          "valueCoding" : {
            "code" : "3",
            "display" : "Assistiert"
          }
        },
        {
          "valueCoding" : {
            "code" : "4",
            "display" : "Kontrolliert"
          }
        },
        {
          "valueCoding" : {
            "code" : "5",
            "display" : "HF-Beatmung"
          }
        }
      ]
    },
    {
      "linkId" : "atemwegszugang",
      "text" : "Atemwegszugang",
      "type" : "coding",
      "answerOption" : [
        {
          "valueCoding" : {
            "code" : "0",
            "display" : "Keine Atemwegszugang/nicht erhoben"
          }
        },
        {
          "valueCoding" : {
            "code" : "1",
            "display" : "O2-Maske oder-Brille"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "CPAP-Maske"
          }
        },
        {
          "valueCoding" : {
            "code" : "3",
            "display" : "CPAP-Helm"
          }
        },
        {
          "valueCoding" : {
            "code" : "4",
            "display" : "Tubus"
          }
        },
        {
          "valueCoding" : {
            "code" : "5",
            "display" : "Kanüle"
          }
        }
      ]
    },
    {
      "linkId" : "tubus-stomapflege",
      "text" : "Tubus-/Stomapflege",
      "type" : "boolean"
    },
    {
      "linkId" : "atemtherapie",
      "text" : "Atemtherapie",
      "type" : "boolean"
    },
    {
      "linkId" : "medikamente-vasoaktiv",
      "text" : "Medikamente vasoaktiv",
      "type" : "coding",
      "answerOption" : [
        {
          "valueCoding" : {
            "code" : "0",
            "display" : "Keine Medikamente vasoaktiv/nicht erhoben"
          }
        },
        {
          "valueCoding" : {
            "code" : "1",
            "display" : "Medikamente vasoaktiv einfach"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "Medikamente vasoaktiv mehrfach"
          }
        }
      ]
    },
    {
      "linkId" : "flussigkeitsersatz-massiv",
      "text" : "Flüssigkeitsersatz massiv",
      "type" : "boolean"
    },
    {
      "linkId" : "katheter-arteriell",
      "text" : "Katheter arteriell",
      "type" : "boolean"
    },
    {
      "linkId" : "monitoring-hamodynamisch",
      "text" : "Monitoring hämodynamisch",
      "type" : "coding",
      "answerOption" : [
        {
          "valueCoding" : {
            "code" : "0",
            "display" : "Kein Monitoring hämodynamisch/nicht erhoben"
          }
        },
        {
          "valueCoding" : {
            "code" : "1",
            "display" : "Pulmonaliskatheter"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "Linkstrialer Katheter"
          }
        },
        {
          "valueCoding" : {
            "code" : "3",
            "display" : "Lithium-Dilution"
          }
        },
        {
          "valueCoding" : {
            "code" : "4",
            "display" : "Pulskontur-Analyse"
          }
        },
        {
          "valueCoding" : {
            "code" : "5",
            "display" : "Ösophagus Doppler"
          }
        }
      ]
    },
    {
      "linkId" : "katheter-zentralvenos",
      "text" : "Katheter zentralvenös",
      "type" : "boolean"
    },
    {
      "linkId" : "reanimation-kardiopulmonal",
      "text" : "Reanimation kardiopulmonal",
      "type" : "boolean"
    },
    {
      "linkId" : "nierenersatztherapie",
      "text" : "Nierenersatztherapie",
      "type" : "boolean"
    },
    {
      "linkId" : "harnbilanzierung",
      "text" : "Harnbilanzierung",
      "type" : "boolean"
    },
    {
      "linkId" : "diurese-aktiv",
      "text" : "Diurese aktiv",
      "type" : "boolean"
    },
    {
      "linkId" : "hirndruckmessung",
      "text" : "Hirndruckmessung",
      "type" : "boolean"
    },
    {
      "linkId" : "behandlung-metabolischer-entgleisungen",
      "text" : "Behandlung metabolischer Entgleisungen",
      "type" : "boolean"
    },
    {
      "linkId" : "ernahrung-enteral",
      "text" : "Ernährung enteral",
      "type" : "boolean"
    },
    {
      "linkId" : "ernahrung-parenteral",
      "text" : "Ernährung parenteral",
      "type" : "boolean"
    },
    {
      "linkId" : "interventionen",
      "text" : "Interventionen",
      "type" : "coding",
      "answerOption" : [
        {
          "valueCoding" : {
            "code" : "0",
            "display" : "Keine Intervention einfach/nicht erhoben"
          }
        },
        {
          "valueCoding" : {
            "code" : "1",
            "display" : "Intervention einfach"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "Interventionen mehrfach"
          }
        }
      ]
    },
    {
      "linkId" : "diagnostik-therapie-ausserhalb-ibs",
      "text" : "Diagnostik und Therapie außerhalb der IBS",
      "type" : "boolean"
    },
    {
      "linkId" : "agitation-delirium",
      "text" : "Agitation und Delirium",
      "type" : "coding",
      "answerOption" : [
        {
          "valueCoding" : {
            "code" : "0",
            "display" : "Keine Agitation/Delirium/nicht erhoben"
          }
        },
        {
          "valueCoding" : {
            "code" : "1",
            "display" : "nicht weckbar"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "sehr sediert"
          }
        },
        {
          "valueCoding" : {
            "code" : "3",
            "display" : "sediert"
          }
        },
        {
          "valueCoding" : {
            "code" : "4",
            "display" : "ruhig und kooperativ"
          }
        },
        {
          "valueCoding" : {
            "code" : "5",
            "display" : "agitiert"
          }
        },
        {
          "valueCoding" : {
            "code" : "6",
            "display" : "sehr agitiert"
          }
        },
        {
          "valueCoding" : {
            "code" : "7",
            "display" : "Selbst- oder Fremdgefährdung"
          }
        }
      ]
    },
    {
      "linkId" : "assist-kardial",
      "text" : "Assist kardial",
      "type" : "boolean"
    },
    {
      "linkId" : "assist-pulmonal",
      "text" : "Assist pulmonal",
      "type" : "boolean"
    },
    {
      "linkId" : "hypothermie-therapeutisch",
      "text" : "Hypothermie therapeutisch",
      "type" : "boolean"
    },
    {
      "linkId" : "lebersupport-extrakorporal",
      "text" : "Lebersupport extrakorporal",
      "type" : "boolean"
    },
    {
      "linkId" : "kontinuierliche-intravenose-antikonvulsive-therapie",
      "text" : "Kontinuierliche intravenöse antikonvulsive Therapie",
      "type" : "boolean"
    }
  ]
}

```
