# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Höchster abgeschlossener Bildungsabschluss - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Höchster abgeschlossener Bildungsabschluss**

## Questionnaire: Höchster abgeschlossener Bildungsabschluss 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/EducationQuestionnaire | *Version*:0.1.0 | |
| Active as of 2026-08-18 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:EducationQuestionnaire |

 
A simple questionnaire asking for the person's highest completed education level using eight ISCED-based answer categories. 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-08-18

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
  "date" : "2026-08-18T12:35:51+00:00",
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
  "description" : "A simple questionnaire asking for the person's highest completed education level using eight ISCED-based answer categories.",
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
        "code" : "isced-1",
        "display" : "ISCED 1: Volksschule"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level",
        "code" : "isced-2",
        "display" : "ISCED 2: Hauptschule, Mittelschulen, Unterstufen von AHS"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level",
        "code" : "isced-3a",
        "display" : "ISCED 3a: Polytechnische Schule"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level",
        "code" : "isced-3b",
        "display" : "ISCED 3b: Berufsbildende mittlere Schulen (HASCH, Fachschulen)"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level",
        "code" : "isced-3c",
        "display" : "ISCED 3c: Berufsbildende höhere Schulen (HAK, HBLA, HTL) und AHS-Oberstufe"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level",
        "code" : "isced-4",
        "display" : "ISCED 4: Lehre mit Matura, Gesundheits- und Krankenpflegeschule (nicht-tertiär), Meister- oder Diplomprüfung"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level",
        "code" : "isced-5",
        "display" : "ISCED 5: Kolleg, tertiäre Hebammenakademien bzw. medizinisch-technische Ausbildungen im Kurzzyklus"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level",
        "code" : "isced-6-8",
        "display" : "ISCED 6–8: Hochschulabschlüsse (Bachelor, Master, Doktor)"
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
