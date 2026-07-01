# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Schlafqualität – Selbsteinschätzung (WHOQOL-BREF Q16) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Schlafqualität – Selbsteinschätzung (WHOQOL-BREF Q16)**

## Questionnaire: Schlafqualität – Selbsteinschätzung (WHOQOL-BREF Q16) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/SleepQualityQuestionnaire | *Version*:0.1.0 | |
| Active as of 2026-07-01 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:SleepQualityQuestionnaire |

 
Standalone questionnaire for self-assessing sleep quality based on WHOQOL-BREF question Q16 ('Wie zufrieden sind Sie mit Ihrem Schlaf?'). 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-07-01

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "SleepQualityQuestionnaire",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire"]
  },
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/SleepQualityQuestionnaire",
  "version" : "0.1.0",
  "name" : "SleepQualityQuestionnaire",
  "title" : "Schlafqualität – Selbsteinschätzung (WHOQOL-BREF Q16)",
  "status" : "active",
  "experimental" : false,
  "subjectType" : ["Patient"],
  "date" : "2026-07-01T08:47:20+00:00",
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
  "description" : "Standalone questionnaire for self-assessing sleep quality based on WHOQOL-BREF question Q16 ('Wie zufrieden sind Sie mit Ihrem Schlaf?').",
  "item" : [{
    "linkId" : "Q16",
    "text" : "Wie zufrieden sind Sie mit Ihrem Schlaf?",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
        "code" : "S1",
        "display" : "Sehr unzufrieden"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
        "code" : "S2",
        "display" : "Unzufrieden"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
        "code" : "S3",
        "display" : "Weder zufrieden noch unzufrieden"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
        "code" : "S4",
        "display" : "Zufrieden"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
        "code" : "S5",
        "display" : "Sehr zufrieden"
      }
    }],
    "item" : [{
      "linkId" : "comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  }]
}

```
