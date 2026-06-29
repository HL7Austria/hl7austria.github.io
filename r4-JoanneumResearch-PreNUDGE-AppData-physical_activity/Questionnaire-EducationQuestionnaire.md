# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Höchster abgeschlossener Bildungsabschluss - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Höchster abgeschlossener Bildungsabschluss**

## Questionnaire: Höchster abgeschlossener Bildungsabschluss 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/EducationQuestionnaire | *Version*:0.1.0 | |
| Active as of 2026-06-29 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:EducationQuestionnaire |

 
A simple questionnaire asking for the person's highest completed education level using ISCED 2011 levels. 

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
  "id" : "EducationQuestionnaire",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire"]
  },
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/EducationQuestionnaire",
  "version" : "0.1.0",
  "name" : "EducationQuestionnaire",
  "title" : "Höchster abgeschlossener Bildungsabschluss",
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
  "description" : "A simple questionnaire asking for the person's highest completed education level using ISCED 2011 levels.",
  "item" : [{
    "linkId" : "highest-completed-education",
    "code" : [{
      "system" : "http://loinc.org",
      "code" : "82589-3",
      "display" : "Highest level of education"
    }],
    "text" : "Was ist Ihr höchster abgeschlossener Bildungsabschluss?",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level",
        "code" : "isced-0",
        "display" : "ISCED 0 - Elementarbereich"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level",
        "code" : "isced-1",
        "display" : "ISCED 1 - Primarbereich"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level",
        "code" : "isced-2",
        "display" : "ISCED 2 - Sekundarbereich I"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level",
        "code" : "isced-3",
        "display" : "ISCED 3 - Sekundarbereich II"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level",
        "code" : "isced-4",
        "display" : "ISCED 4 - Postsekundarer, nicht tertiärer Bereich"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level",
        "code" : "isced-5",
        "display" : "ISCED 5 - Kurzes tertiäres Bildungsprogramm"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level",
        "code" : "isced-6",
        "display" : "ISCED 6 - Bachelor- bzw. gleichwertiges Bildungsprogramm"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level",
        "code" : "isced-7",
        "display" : "ISCED 7 - Master- bzw. gleichwertiges Bildungsprogramm"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level",
        "code" : "isced-8",
        "display" : "ISCED 8 - Promotion bzw. gleichwertiges Bildungsprogramm"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level",
        "code" : "unknown",
        "display" : "Weiß nicht"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level",
        "code" : "not-stated",
        "display" : "Keine Angabe"
      }
    }],
    "item" : [{
      "linkId" : "highest-completed-education-help",
      "text" : "Orientierungshilfe mit typischen Beispielen: ISCED 0 Kindergarten, Vorschule; ISCED 1 Volksschule; ISCED 2 Mittelschule, AHS-Unterstufe; ISCED 3 Polytechnische Schule, berufsbildende mittlere oder höhere Schule, AHS-Oberstufe; ISCED 4 Lehre mit Matura, Gesundheits- und Krankenpflegeschule, Meister- oder Diplomprüfung; ISCED 5 Kolleg, tertiäre Hebammenakademie bzw. medizinisch-technische Ausbildungen im Kurzzyklus; ISCED 6 Bachelor; ISCED 7 Master oder Diplomstudium; ISCED 8 Doktorat oder PhD.",
      "type" : "display"
    },
    {
      "linkId" : "comment",
      "text" : "Haben Sie zu Ihrer Antwort noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  }]
}

```
