# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\ATHIS – Antwortmöglichkeiten - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ATHIS – Antwortmöglichkeiten**

## CodeSystem: ATHIS – Antwortmöglichkeiten 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers | *Version*:0.1.0 | |
| Active as of 2026-06-03 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeCodeSystemAthis |
| **Copyright/Legal**: STATISTIK AUSTRIA – Bundesanstalt Statistik Österreich. Reproduziert für das PreNUDGE Forschungsprojekt. | | |

 
Antwortmöglichkeiten aus dem ATHIS Fragebogen (Österreichische Gesundheitsbefragung, STATISTIK AUSTRIA). Version vom 31.03.2025; Codes sind englisch; Display-Werte bleiben deutsch. Gruppiert nach Skalentypen für die Wiederverwendung in PreNUDGE Questionnaires. Hinweis: Bestehende PreNUDGE CodeSystems bleiben gültig – whoqol-bref-scale (LQ16-Zufriedenheitsskala), prenudge-nutrition-consumption-frequency (DH1/DH3 numerische ATHIS-Codes), prenudge-alcoholuse-frequency (AL1 SNOMED-basiert). 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "athis-answers",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers",
  "version" : "0.1.0",
  "name" : "AtPrenudgeCodeSystemAthis",
  "title" : "ATHIS – Antwortmöglichkeiten",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-03T09:07:40+00:00",
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
  "description" : "Antwortmöglichkeiten aus dem ATHIS Fragebogen (Österreichische Gesundheitsbefragung, STATISTIK AUSTRIA). Version vom 31.03.2025; Codes sind englisch; Display-Werte bleiben deutsch. Gruppiert nach Skalentypen für die Wiederverwendung in PreNUDGE Questionnaires. Hinweis: Bestehende PreNUDGE CodeSystems bleiben gültig – whoqol-bref-scale (LQ16-Zufriedenheitsskala), prenudge-nutrition-consumption-frequency (DH1/DH3 numerische ATHIS-Codes), prenudge-alcoholuse-frequency (AL1 SNOMED-basiert).",
  "copyright" : "STATISTIK AUSTRIA – Bundesanstalt Statistik Österreich. Reproduziert für das PreNUDGE Forschungsprojekt.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 111,
  "concept" : [{
    "code" : "meta-unknown",
    "display" : "Weiß nicht"
  },
  {
    "code" : "meta-not-stated",
    "display" : "Keine Angabe"
  },
  {
    "code" : "yn-yes",
    "display" : "Ja"
  },
  {
    "code" : "yn-no",
    "display" : "Nein"
  },
  {
    "code" : "yn-yes-daily",
    "display" : "Ja, täglich"
  },
  {
    "code" : "yn-yes-occasionally",
    "display" : "Ja, gelegentlich"
  },
  {
    "code" : "yn-no-not-at-all",
    "display" : "Nein, überhaupt nicht"
  },
  {
    "code" : "yn-no-but-formerly",
    "display" : "Nein, aber früher"
  },
  {
    "code" : "yn-no-never",
    "display" : "Nein, noch nie genutzt/konsumiert"
  },
  {
    "code" : "hs-very-good",
    "display" : "Sehr gut"
  },
  {
    "code" : "hs-good",
    "display" : "Gut"
  },
  {
    "code" : "hs-fair",
    "display" : "Mittelmäßig"
  },
  {
    "code" : "hs-poor",
    "display" : "Schlecht"
  },
  {
    "code" : "hs-very-poor",
    "display" : "Sehr schlecht"
  },
  {
    "code" : "func-no-difficulty",
    "display" : "Keine Schwierigkeiten"
  },
  {
    "code" : "func-some-difficulty",
    "display" : "Einige Schwierigkeiten"
  },
  {
    "code" : "func-a-lot-of-difficulty",
    "display" : "Große Schwierigkeiten"
  },
  {
    "code" : "func-cannot-do-at-all",
    "display" : "Es ist zu schwierig, ich kann es gar nicht"
  },
  {
    "code" : "func-not-applicable",
    "display" : "Nicht zutreffend"
  },
  {
    "code" : "func-not-interested",
    "display" : "Kein Interesse an dieser Aktivität, möchte ich nicht tun"
  },
  {
    "code" : "func-limited-severely",
    "display" : "Stark eingeschränkt"
  },
  {
    "code" : "func-limited-somewhat",
    "display" : "Etwas eingeschränkt"
  },
  {
    "code" : "func-not-limited",
    "display" : "Nicht eingeschränkt"
  },
  {
    "code" : "pain-none",
    "display" : "Keine Schmerzen"
  },
  {
    "code" : "pain-very-mild",
    "display" : "Sehr leicht"
  },
  {
    "code" : "pain-mild",
    "display" : "Leicht"
  },
  {
    "code" : "pain-moderate",
    "display" : "Mäßig"
  },
  {
    "code" : "pain-severe",
    "display" : "Stark"
  },
  {
    "code" : "pain-very-severe",
    "display" : "Sehr stark"
  },
  {
    "code" : "pain-interf-not-at-all",
    "display" : "Überhaupt nicht"
  },
  {
    "code" : "pain-interf-slightly",
    "display" : "Etwas"
  },
  {
    "code" : "pain-interf-moderately",
    "display" : "Mäßig"
  },
  {
    "code" : "pain-interf-quite-a-bit",
    "display" : "Ziemlich"
  },
  {
    "code" : "pain-interf-extremely",
    "display" : "Äußerst"
  },
  {
    "code" : "phq-never",
    "display" : "Nie"
  },
  {
    "code" : "phq-several-days",
    "display" : "An manchen Tagen"
  },
  {
    "code" : "phq-more-than-half-the-days",
    "display" : "An mehr als der Hälfte der Tage"
  },
  {
    "code" : "phq-nearly-every-day",
    "display" : "Beinahe jeden Tag"
  },
  {
    "code" : "who5-all-the-time",
    "display" : "Die ganze Zeit"
  },
  {
    "code" : "who5-most-of-the-time",
    "display" : "Meistens"
  },
  {
    "code" : "who5-more-than-half-the-time",
    "display" : "Etwas mehr als die Hälfte der Zeit"
  },
  {
    "code" : "who5-less-than-half-the-time",
    "display" : "Etwas weniger als die Hälfte der Zeit"
  },
  {
    "code" : "who5-some-of-the-time",
    "display" : "Ab und zu"
  },
  {
    "code" : "who5-none-of-the-time",
    "display" : "Zu keinem Zeitpunkt"
  },
  {
    "code" : "dh-daily-or-more",
    "display" : "Täglich oder mehrmals täglich"
  },
  {
    "code" : "dh-4-6-per-week",
    "display" : "4 bis 6 Mal pro Woche"
  },
  {
    "code" : "dh-1-3-per-week",
    "display" : "1 bis 3 Mal pro Woche"
  },
  {
    "code" : "dh-less-than-once-per-week",
    "display" : "Weniger als einmal pro Woche"
  },
  {
    "code" : "dh-never",
    "display" : "Nie"
  },
  {
    "code" : "dh-daily-or-nearly-daily",
    "display" : "Täglich oder beinahe täglich"
  },
  {
    "code" : "dh-less-often-than-once-per-week",
    "display" : "Seltener als einmal pro Woche"
  },
  {
    "code" : "dh-3-4-per-week",
    "display" : "3 bis 4 Mal pro Woche"
  },
  {
    "code" : "dh-1-2-per-week",
    "display" : "1 bis 2 Mal pro Woche"
  },
  {
    "code" : "dh-1-2-per-month",
    "display" : "1 bis 2 Mal pro Monat"
  },
  {
    "code" : "dh-less-than-once-per-month",
    "display" : "Seltener als einmal pro Monat"
  },
  {
    "code" : "pe-never-or-rarely",
    "display" : "Nie oder seltener als einmal pro Woche"
  },
  {
    "code" : "pe-1-day",
    "display" : "1 Tag pro Woche"
  },
  {
    "code" : "pe-2-days",
    "display" : "2 Tage pro Woche"
  },
  {
    "code" : "pe-3-days",
    "display" : "3 Tage pro Woche"
  },
  {
    "code" : "pe-4-days",
    "display" : "4 Tage pro Woche"
  },
  {
    "code" : "pe-5-days",
    "display" : "5 Tage pro Woche"
  },
  {
    "code" : "pe-6-days",
    "display" : "6 Tage pro Woche"
  },
  {
    "code" : "pe-7-days",
    "display" : "7 Tage pro Woche"
  },
  {
    "code" : "pe-10-29-min",
    "display" : "10 bis 29 Minuten pro Tag"
  },
  {
    "code" : "pe-30-59-min",
    "display" : "30 bis 59 Minuten pro Tag"
  },
  {
    "code" : "pe-1h-under-2h",
    "display" : "1 Stunde bis unter 2 Stunden pro Tag"
  },
  {
    "code" : "pe-2h-under-3h",
    "display" : "2 Stunden bis unter 3 Stunden pro Tag"
  },
  {
    "code" : "pe-3h-or-more",
    "display" : "3 Stunden pro Tag oder mehr"
  },
  {
    "code" : "pe-sitting-or-standing",
    "display" : "Vorwiegend sitzen oder stehen"
  },
  {
    "code" : "pe-walking-or-moderate",
    "display" : "Vorwiegend gehen oder mäßig anstrengende körperliche Tätigkeiten"
  },
  {
    "code" : "pe-heavy-physical-work",
    "display" : "Vorwiegend schwere körperliche Arbeit oder körperlich beanspruchende Tätigkeiten"
  },
  {
    "code" : "pe-no-work-activities",
    "display" : "Ich führe keine arbeitsbezogenen Tätigkeiten aus"
  },
  {
    "code" : "sk5-daily-1h-or-more",
    "display" : "Täglich, eine Stunde oder mehr pro Tag"
  },
  {
    "code" : "sk5-daily-less-than-1h",
    "display" : "Täglich, weniger als 1 Stunde pro Tag"
  },
  {
    "code" : "sk5-at-least-weekly",
    "display" : "Mindestens einmal pro Woche (aber nicht täglich)"
  },
  {
    "code" : "sk5-less-than-weekly",
    "display" : "Weniger als einmal pro Woche"
  },
  {
    "code" : "sk5-never-or-rarely",
    "display" : "Nie oder fast nie"
  },
  {
    "code" : "whoqol-int-not-at-all",
    "display" : "Überhaupt nicht"
  },
  {
    "code" : "whoqol-int-a-little",
    "display" : "Ein wenig"
  },
  {
    "code" : "whoqol-int-moderately",
    "display" : "Mittelmäßig"
  },
  {
    "code" : "whoqol-int-quite",
    "display" : "Ziemlich"
  },
  {
    "code" : "whoqol-int-extremely",
    "display" : "Äußerst"
  },
  {
    "code" : "whoqol-cap-not-at-all",
    "display" : "Überhaupt nicht"
  },
  {
    "code" : "whoqol-cap-not-really",
    "display" : "Eher nicht"
  },
  {
    "code" : "whoqol-cap-moderately",
    "display" : "Halbwegs"
  },
  {
    "code" : "whoqol-cap-mostly",
    "display" : "Überwiegend"
  },
  {
    "code" : "whoqol-cap-completely",
    "display" : "Völlig"
  },
  {
    "code" : "whoqol-neg-never",
    "display" : "Niemals"
  },
  {
    "code" : "whoqol-neg-not-often",
    "display" : "Nicht oft"
  },
  {
    "code" : "whoqol-neg-sometimes",
    "display" : "Zeitweilig"
  },
  {
    "code" : "whoqol-neg-often",
    "display" : "Oftmals"
  },
  {
    "code" : "whoqol-neg-always",
    "display" : "Immer"
  },
  {
    "code" : "kig-never",
    "display" : "Nie"
  },
  {
    "code" : "kig-seldom",
    "display" : "Selten"
  },
  {
    "code" : "kig-sometimes",
    "display" : "Manchmal"
  },
  {
    "code" : "kig-often",
    "display" : "Oft"
  },
  {
    "code" : "kig-always",
    "display" : "Immer"
  },
  {
    "code" : "socio-employed",
    "display" : "Erwerbstätig oder Lehrling"
  },
  {
    "code" : "socio-unemployed",
    "display" : "Arbeitssuchend, arbeitslos"
  },
  {
    "code" : "socio-retired",
    "display" : "In Pension"
  },
  {
    "code" : "socio-permanently-disabled",
    "display" : "Dauerhaft arbeitsunfähig aus gesundheitlichen Gründen"
  },
  {
    "code" : "socio-in-education",
    "display" : "In Ausbildung"
  },
  {
    "code" : "socio-homemaker",
    "display" : "Haushaltsführend"
  },
  {
    "code" : "socio-military-or-civil-service",
    "display" : "Im Präsenz- oder Zivildienst"
  },
  {
    "code" : "socio-other",
    "display" : "Sonstiges"
  },
  {
    "code" : "socio-compulsory-school",
    "display" : "Pflichtschule"
  },
  {
    "code" : "socio-apprenticeship",
    "display" : "Lehre mit Berufsschule"
  },
  {
    "code" : "socio-vocational-school",
    "display" : "Fach- oder Handelsschule"
  },
  {
    "code" : "socio-matura",
    "display" : "Matura"
  },
  {
    "code" : "socio-university-degree",
    "display" : "Abschluss an einer Universität oder Hochschule"
  },
  {
    "code" : "socio-other-post-secondary",
    "display" : "Anderer Abschluss nach der Matura"
  }]
}

```
