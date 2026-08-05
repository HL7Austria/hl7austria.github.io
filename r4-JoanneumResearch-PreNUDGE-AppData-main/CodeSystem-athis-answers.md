# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\ATHIS – Antwortmöglichkeiten - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ATHIS – Antwortmöglichkeiten**

## CodeSystem: ATHIS – Antwortmöglichkeiten 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/athis-answers | *Version*:0.1.0 | |
| Active as of 2026-08-05 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeCodeSystemAthis |
| **Copyright/Legal**: STATISTIK AUSTRIA – Bundesanstalt Statistik Österreich. Reproduziert für das PreNUDGE Forschungsprojekt. | | |

 
Vollständige Antwortmöglichkeiten aus dem ATHIS Fragebogen (Österreichische Gesundheitsbefragung, STATISTIK AUSTRIA, Version 31.03.2025). Codes sind englisch; Display-Werte bleiben deutsch. Gruppiert nach Skalentypen. Hinweis: Bestehende PreNUDGE CodeSystems bleiben gültig – whoqol-bref-scale (LQ16-Zufriedenheitsskala), prenudge-alcoholuse-frequency (AL1 SNOMED-basiert). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AtPrenudgeValueSetNutritionConsumptionFrequency](ValueSet-prenudge-nutrition-consumption-frequency-vs.md)
* [AtPrenudgeValueSetNutritionSugarSaltyFrequency](ValueSet-prenudge-nutrition-sugarsalty-frequency-vs.md)

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-08-05

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

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
  "date" : "2026-08-05T12:30:06+00:00",
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
  "description" : "Vollständige Antwortmöglichkeiten aus dem ATHIS Fragebogen (Österreichische Gesundheitsbefragung, STATISTIK AUSTRIA, Version 31.03.2025). Codes sind englisch; Display-Werte bleiben deutsch. Gruppiert nach Skalentypen. Hinweis: Bestehende PreNUDGE CodeSystems bleiben gültig – whoqol-bref-scale (LQ16-Zufriedenheitsskala), prenudge-alcoholuse-frequency (AL1 SNOMED-basiert).",
  "copyright" : "STATISTIK AUSTRIA – Bundesanstalt Statistik Österreich. Reproduziert für das PreNUDGE Forschungsprojekt.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 262,
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
    "code" : "yn-severely-visually-impaired",
    "display" : "Ich bin stark sehbehindert oder kann nicht sehen"
  },
  {
    "code" : "yn-severely-hearing-impaired",
    "display" : "Ich bin hochgradig schwerhörig oder gehörlos"
  },
  {
    "code" : "yn-yes-at-least-one",
    "display" : "Ja, bei mindestens einer Tätigkeit"
  },
  {
    "code" : "yn-yes-at-least-once",
    "display" : "Ja, mindestens einmal"
  },
  {
    "code" : "yn-yes-always",
    "display" : "Ja, jedes Mal"
  },
  {
    "code" : "yn-no-not-always",
    "display" : "Nein, mindestens einmal nicht"
  },
  {
    "code" : "yn-no-need",
    "display" : "Kein Bedarf an medizinischer Versorgung"
  },
  {
    "code" : "health-very-good",
    "display" : "Sehr gut"
  },
  {
    "code" : "health-good",
    "display" : "Gut"
  },
  {
    "code" : "health-fair",
    "display" : "Mittelmäßig"
  },
  {
    "code" : "health-poor",
    "display" : "Schlecht"
  },
  {
    "code" : "health-very-poor",
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
    "code" : "diet-daily-or-more",
    "display" : "Täglich oder mehrmals täglich"
  },
  {
    "code" : "diet-4-6-per-week",
    "display" : "4 bis 6 Mal pro Woche"
  },
  {
    "code" : "diet-1-3-per-week",
    "display" : "1 bis 3 Mal pro Woche"
  },
  {
    "code" : "diet-less-than-once-per-week",
    "display" : "Weniger als einmal pro Woche"
  },
  {
    "code" : "diet-never",
    "display" : "Nie"
  },
  {
    "code" : "diet-daily-or-nearly-daily",
    "display" : "Täglich oder beinahe täglich"
  },
  {
    "code" : "diet-less-often-than-once-per-week",
    "display" : "Seltener als einmal pro Woche"
  },
  {
    "code" : "diet-3-4-per-week",
    "display" : "3 bis 4 Mal pro Woche"
  },
  {
    "code" : "diet-1-2-per-week",
    "display" : "1 bis 2 Mal pro Woche"
  },
  {
    "code" : "diet-1-2-per-month",
    "display" : "1 bis 2 Mal pro Monat"
  },
  {
    "code" : "diet-less-than-once-per-month",
    "display" : "Seltener als einmal pro Monat"
  },
  {
    "code" : "activity-never-or-rarely",
    "display" : "Nie oder seltener als einmal pro Woche"
  },
  {
    "code" : "activity-1-day",
    "display" : "1 Tag pro Woche"
  },
  {
    "code" : "activity-2-days",
    "display" : "2 Tage pro Woche"
  },
  {
    "code" : "activity-3-days",
    "display" : "3 Tage pro Woche"
  },
  {
    "code" : "activity-4-days",
    "display" : "4 Tage pro Woche"
  },
  {
    "code" : "activity-5-days",
    "display" : "5 Tage pro Woche"
  },
  {
    "code" : "activity-6-days",
    "display" : "6 Tage pro Woche"
  },
  {
    "code" : "activity-7-days",
    "display" : "7 Tage pro Woche"
  },
  {
    "code" : "activity-10-29-min",
    "display" : "10 bis 29 Minuten pro Tag"
  },
  {
    "code" : "activity-30-59-min",
    "display" : "30 bis 59 Minuten pro Tag"
  },
  {
    "code" : "activity-1h-under-2h",
    "display" : "1 Stunde bis unter 2 Stunden pro Tag"
  },
  {
    "code" : "activity-2h-under-3h",
    "display" : "2 Stunden bis unter 3 Stunden pro Tag"
  },
  {
    "code" : "activity-3h-or-more",
    "display" : "3 Stunden pro Tag oder mehr"
  },
  {
    "code" : "activity-sitting-or-standing",
    "display" : "Vorwiegend sitzen oder stehen"
  },
  {
    "code" : "activity-walking-or-moderate",
    "display" : "Vorwiegend gehen oder mäßig anstrengende körperliche Tätigkeiten"
  },
  {
    "code" : "activity-heavy-physical-work",
    "display" : "Vorwiegend schwere körperliche Arbeit oder körperlich beanspruchende Tätigkeiten"
  },
  {
    "code" : "activity-no-work-activities",
    "display" : "Ich führe keine arbeitsbezogenen Tätigkeiten aus"
  },
  {
    "code" : "smoke-daily-1h-or-more",
    "display" : "Täglich, eine Stunde oder mehr pro Tag"
  },
  {
    "code" : "smoke-daily-less-than-1h",
    "display" : "Täglich, weniger als 1 Stunde pro Tag"
  },
  {
    "code" : "smoke-at-least-weekly",
    "display" : "Mindestens einmal pro Woche (aber nicht täglich)"
  },
  {
    "code" : "smoke-less-than-weekly",
    "display" : "Weniger als einmal pro Woche"
  },
  {
    "code" : "smoke-never-or-rarely",
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
    "code" : "child-never",
    "display" : "Nie"
  },
  {
    "code" : "child-seldom",
    "display" : "Selten"
  },
  {
    "code" : "child-sometimes",
    "display" : "Manchmal"
  },
  {
    "code" : "child-often",
    "display" : "Oft"
  },
  {
    "code" : "child-always",
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
    "code" : "socio-apprentice",
    "display" : "Lehrling"
  },
  {
    "code" : "socio-worker",
    "display" : "Arbeiter:in"
  },
  {
    "code" : "socio-employee",
    "display" : "Angestellte:r"
  },
  {
    "code" : "socio-civil-servant-contract",
    "display" : "Vertragsbedienstete:r"
  },
  {
    "code" : "socio-civil-servant",
    "display" : "Beamt:in"
  },
  {
    "code" : "socio-freelancer",
    "display" : "Freie:r Dienstnehmer:in"
  },
  {
    "code" : "socio-self-employed",
    "display" : "Selbstständige:r"
  },
  {
    "code" : "socio-unpaid-family-helper",
    "display" : "Unbezahlt Mithelfende:r im Familienbetrieb"
  },
  {
    "code" : "socio-part-time",
    "display" : "Teilzeit"
  },
  {
    "code" : "socio-full-time",
    "display" : "Vollzeit"
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
  },
  {
    "code" : "socio-completed",
    "display" : "Abgeschlossen"
  },
  {
    "code" : "socio-not-completed",
    "display" : "Nicht abgeschlossen"
  },
  {
    "code" : "socio-voc-under-2y",
    "display" : "Kürzer als 2 Jahre"
  },
  {
    "code" : "socio-voc-2y-or-more",
    "display" : "2 Jahre und länger"
  },
  {
    "code" : "socio-voc-health-diploma",
    "display" : "Diplomabschluss in der Gesundheits- und Krankenpflege"
  },
  {
    "code" : "socio-matura-ahs",
    "display" : "AHS wie zum Beispiel Gymnasium, Realgymnasium, ORG"
  },
  {
    "code" : "socio-matura-bhs",
    "display" : "BHS wie zum Beispiel HAK, HTL, HBLA"
  },
  {
    "code" : "socio-matura-apprenticeship",
    "display" : "Lehre mit Matura oder Berufsreifeprüfung"
  },
  {
    "code" : "socio-degree-bachelor",
    "display" : "Bachelor/Bakkalaureat"
  },
  {
    "code" : "socio-degree-master",
    "display" : "Master-, Magister-, Diplomabschluss"
  },
  {
    "code" : "socio-degree-doctorate-first",
    "display" : "Doktorat als Erstabschluss"
  },
  {
    "code" : "socio-degree-postgraduate",
    "display" : "Postgradualer Lehrgang wie zum Beispiel MBA, MAS, MSc"
  },
  {
    "code" : "socio-degree-doctorate-after",
    "display" : "Doktorat nach akademischem Abschluss"
  },
  {
    "code" : "socio-other-academy",
    "display" : "Akademie, wie zum Beispiel Pädak, SozAK, Med. Tech. Akad, MilAK"
  },
  {
    "code" : "socio-other-kolleg",
    "display" : "Kolleg, Abiturient:innenlehrgang an einer BHS"
  },
  {
    "code" : "socio-other-uni-lehrgang",
    "display" : "Hochschul-/Universitätslehrgang als akademisch geprüfte:r 'Berufsbezeichnung'"
  },
  {
    "code" : "socio-add-master-craftsperson",
    "display" : "Meister:innen- oder Werkmeister:innenprüfung"
  },
  {
    "code" : "socio-add-health-diploma",
    "display" : "Diplomabschluss der Gesundheits- und Krankenpflege"
  },
  {
    "code" : "socio-add-other",
    "display" : "Anderes"
  },
  {
    "code" : "socio-add-none",
    "display" : "Keine weitere Ausbildung"
  },
  {
    "code" : "socio-income-up-to-600",
    "display" : "Bis 600 Euro"
  },
  {
    "code" : "socio-income-up-to-900",
    "display" : "Bis 900 Euro"
  },
  {
    "code" : "socio-income-up-to-1200",
    "display" : "Bis 1 200 Euro"
  },
  {
    "code" : "socio-income-up-to-1500",
    "display" : "Bis 1 500 Euro"
  },
  {
    "code" : "socio-income-up-to-1800",
    "display" : "Bis 1 800 Euro"
  },
  {
    "code" : "socio-income-up-to-2200",
    "display" : "Bis 2 200 Euro"
  },
  {
    "code" : "socio-income-up-to-2600",
    "display" : "Bis 2 600 Euro"
  },
  {
    "code" : "socio-income-up-to-3000",
    "display" : "Bis 3 000 Euro"
  },
  {
    "code" : "socio-income-up-to-3500",
    "display" : "Bis 3 500 Euro"
  },
  {
    "code" : "socio-income-up-to-4000",
    "display" : "Bis 4 000 Euro"
  },
  {
    "code" : "socio-income-up-to-4500",
    "display" : "Bis 4 500 Euro"
  },
  {
    "code" : "socio-income-up-to-5000",
    "display" : "Bis 5 000 Euro"
  },
  {
    "code" : "socio-income-up-to-6000",
    "display" : "Bis 6 000 Euro"
  },
  {
    "code" : "socio-income-up-to-8000",
    "display" : "Bis 8 000 Euro"
  },
  {
    "code" : "socio-income-over-8000",
    "display" : "Mehr als 8 000 Euro"
  },
  {
    "code" : "sex-male",
    "display" : "Männlich"
  },
  {
    "code" : "sex-female",
    "display" : "Weiblich"
  },
  {
    "code" : "sex-other",
    "display" : "Anderes"
  },
  {
    "code" : "marital-single",
    "display" : "Ledig"
  },
  {
    "code" : "marital-married",
    "display" : "Verheiratet oder eingetragene Partnerschaft"
  },
  {
    "code" : "marital-widowed",
    "display" : "Verwitwet oder hinterbliebene eingetragene Partnerschaft"
  },
  {
    "code" : "marital-divorced",
    "display" : "Geschieden oder aufgelöste eingetragene Partnerschaft"
  },
  {
    "code" : "relation-partner",
    "display" : "Partner:in"
  },
  {
    "code" : "relation-child",
    "display" : "Kind"
  },
  {
    "code" : "relation-parent",
    "display" : "Elternteil"
  },
  {
    "code" : "relation-sibling",
    "display" : "Geschwister"
  },
  {
    "code" : "relation-other-member",
    "display" : "Anderes Haushaltsmitglied"
  },
  {
    "code" : "recency-within-1m",
    "display" : "Während des letzten Monats"
  },
  {
    "code" : "recency-1-3m",
    "display" : "Vor einem bis zu 3 Monaten"
  },
  {
    "code" : "recency-3-12m",
    "display" : "Vor 3 bis zu 12 Monaten"
  },
  {
    "code" : "recency-within-6m",
    "display" : "Vor weniger als 6 Monaten"
  },
  {
    "code" : "recency-6-12m",
    "display" : "Vor 6 bis weniger als 12 Monaten"
  },
  {
    "code" : "recency-within-12m",
    "display" : "Vor weniger als 12 Monaten / Innerhalb der letzten 12 Monate"
  },
  {
    "code" : "recency-12m-or-more",
    "display" : "Vor 12 Monaten oder länger"
  },
  {
    "code" : "recency-over-1y",
    "display" : "Vor mehr als einem Jahr"
  },
  {
    "code" : "recency-1-2y",
    "display" : "Vor 1 bis weniger als 2 Jahren"
  },
  {
    "code" : "recency-1-3y",
    "display" : "Vor 1 bis weniger als 3 Jahren"
  },
  {
    "code" : "recency-1-5y",
    "display" : "Vor 1 bis weniger als 5 Jahren"
  },
  {
    "code" : "recency-2-3y",
    "display" : "Vor 2 bis weniger als 3 Jahren"
  },
  {
    "code" : "recency-3-5y",
    "display" : "Vor 3 bis weniger als 5 Jahren"
  },
  {
    "code" : "recency-3y-or-more",
    "display" : "Vor 3 Jahren oder länger"
  },
  {
    "code" : "recency-5-10y",
    "display" : "Vor 5 bis weniger als 10 Jahren"
  },
  {
    "code" : "recency-5y-or-more",
    "display" : "Vor 5 Jahren oder länger"
  },
  {
    "code" : "recency-10y-or-more",
    "display" : "Vor 10 Jahren oder länger"
  },
  {
    "code" : "recency-never",
    "display" : "Nie / Noch nie"
  },
  {
    "code" : "wait-days-up-to-1",
    "display" : "Bis zu 1 Tag"
  },
  {
    "code" : "wait-days-2-7",
    "display" : "2 bis 7 Tage"
  },
  {
    "code" : "wait-days-8-14",
    "display" : "8 bis 14 Tage"
  },
  {
    "code" : "wait-days-3-4-weeks",
    "display" : "3 bis 4 Wochen"
  },
  {
    "code" : "wait-days-5-8-weeks",
    "display" : "5 bis 8 Wochen"
  },
  {
    "code" : "wait-days-over-8-weeks",
    "display" : "Mehr als 8 Wochen"
  },
  {
    "code" : "wait-op-up-to-2-weeks",
    "display" : "Bis zu 2 Wochen"
  },
  {
    "code" : "wait-op-2w-under-1m",
    "display" : "2 Wochen bis unter 1 Monat"
  },
  {
    "code" : "wait-op-1m-under-2m",
    "display" : "1 Monat bis unter 2 Monate"
  },
  {
    "code" : "wait-op-2m-under-3m",
    "display" : "2 Monate bis unter 3 Monate"
  },
  {
    "code" : "wait-op-3m-under-6m",
    "display" : "3 Monate bis unter 6 Monate"
  },
  {
    "code" : "wait-op-6m-or-more",
    "display" : "6 Monate oder mehr"
  },
  {
    "code" : "care-hours-under-5",
    "display" : "Weniger als 5 Stunden pro Woche"
  },
  {
    "code" : "care-hours-5-10",
    "display" : "5 Stunden bis weniger als 10 Stunden pro Woche"
  },
  {
    "code" : "care-hours-10-20",
    "display" : "10 Stunden bis weniger als 20 Stunden pro Woche"
  },
  {
    "code" : "care-hours-20-30",
    "display" : "20 Stunden bis weniger als 30 Stunden pro Woche"
  },
  {
    "code" : "care-hours-30-40",
    "display" : "30 Stunden bis weniger als 40 Stunden pro Woche"
  },
  {
    "code" : "care-hours-40-or-more",
    "display" : "40 Stunden pro Woche oder mehr"
  },
  {
    "code" : "care-provider-family",
    "display" : "Ja, hauptsächlich durch ein Familienmitglied"
  },
  {
    "code" : "care-provider-non-family",
    "display" : "Ja, hauptsächlich durch ein Nicht-Familienmitglied"
  },
  {
    "code" : "care-provider-none",
    "display" : "Nein"
  },
  {
    "code" : "satisfaction-quality-excellent",
    "display" : "Hervorragend"
  },
  {
    "code" : "satisfaction-quality-very-good",
    "display" : "Sehr gut"
  },
  {
    "code" : "satisfaction-quality-good",
    "display" : "Gut"
  },
  {
    "code" : "satisfaction-quality-adequate",
    "display" : "Ausreichend"
  },
  {
    "code" : "satisfaction-quality-poor",
    "display" : "Schlecht"
  },
  {
    "code" : "satisfaction-service-very-satisfied",
    "display" : "Sehr zufrieden"
  },
  {
    "code" : "satisfaction-service-rather-satisfied",
    "display" : "Eher zufrieden"
  },
  {
    "code" : "satisfaction-service-moderate",
    "display" : "Mittelmäßig"
  },
  {
    "code" : "satisfaction-service-rather-unsatisfied",
    "display" : "Eher unzufrieden"
  },
  {
    "code" : "satisfaction-service-very-unsatisfied",
    "display" : "Sehr unzufrieden"
  },
  {
    "code" : "satisfaction-service-not-applicable",
    "display" : "Nicht zutreffend"
  },
  {
    "code" : "social-support-none",
    "display" : "Keine"
  },
  {
    "code" : "social-support-1-2",
    "display" : "1 oder 2 Personen"
  },
  {
    "code" : "social-support-3-5",
    "display" : "3 bis 5 Personen"
  },
  {
    "code" : "social-support-6-or-more",
    "display" : "6 Personen oder mehr"
  },
  {
    "code" : "social-interest-a-lot",
    "display" : "Viel"
  },
  {
    "code" : "social-interest-some",
    "display" : "Etwas"
  },
  {
    "code" : "social-interest-neither",
    "display" : "Weder viel noch wenig"
  },
  {
    "code" : "social-interest-little",
    "display" : "Wenig"
  },
  {
    "code" : "social-interest-none",
    "display" : "Keinerlei Anteilnahme und Interesse"
  },
  {
    "code" : "social-help-very-easy",
    "display" : "Sehr einfach"
  },
  {
    "code" : "social-help-easy",
    "display" : "Einfach"
  },
  {
    "code" : "social-help-possible",
    "display" : "Möglich"
  },
  {
    "code" : "social-help-difficult",
    "display" : "Schwierig"
  },
  {
    "code" : "social-help-very-difficult",
    "display" : "Sehr schwierig"
  },
  {
    "code" : "alcohol-wkday-all-4",
    "display" : "An allen 4 Tagen"
  },
  {
    "code" : "alcohol-wkday-3",
    "display" : "An 3 Tagen"
  },
  {
    "code" : "alcohol-wkday-2",
    "display" : "An 2 Tagen"
  },
  {
    "code" : "alcohol-wkday-1",
    "display" : "An 1 Tag"
  },
  {
    "code" : "alcohol-wkday-none",
    "display" : "An keinem dieser 4 Tage"
  },
  {
    "code" : "alcohol-wkend-all-3",
    "display" : "An allen 3 Tagen"
  },
  {
    "code" : "alcohol-wkend-2",
    "display" : "An 2 Tagen"
  },
  {
    "code" : "alcohol-wkend-1",
    "display" : "An 1 Tag"
  },
  {
    "code" : "alcohol-wkend-none",
    "display" : "An keinem dieser 3 Tage"
  },
  {
    "code" : "practice-health-fund",
    "display" : "Kassenordination"
  },
  {
    "code" : "practice-private",
    "display" : "Wahlordination/Privatordination"
  },
  {
    "code" : "insurance-fully-covered",
    "display" : "Ja, die gesamten Kosten wurden übernommen"
  },
  {
    "code" : "insurance-partially-covered",
    "display" : "Ja, ein Teil der Kosten wurde übernommen"
  },
  {
    "code" : "insurance-not-covered",
    "display" : "Nein, die Kosten wurden nicht übernommen"
  },
  {
    "code" : "barrier-too-expensive",
    "display" : "Konnte es mir nicht leisten (zu teuer oder nicht von der Krankenkasse übernommen)"
  },
  {
    "code" : "barrier-waiting-list",
    "display" : "Warteliste"
  },
  {
    "code" : "barrier-no-time",
    "display" : "Keine Zeit wegen Arbeit/Betreuung von Kindern oder anderen Personen"
  },
  {
    "code" : "barrier-too-far",
    "display" : "Zu weite Anreise/kein Verkehrsmittel verfügbar"
  },
  {
    "code" : "barrier-confidentiality-concerns",
    "display" : "Bedenken hinsichtlich Vertraulichkeit und Diskretion"
  },
  {
    "code" : "barrier-fear-of-reactions",
    "display" : "Angst vor negativen Reaktionen oder Kommentaren von Familie, Freund:innen oder Kolleg:innen"
  },
  {
    "code" : "barrier-fear-of-treatment",
    "display" : "Angst vor der Beratung oder Behandlung (zum Beispiel Angst vor einem negativen Ausgang oder Angst vor den Nebenwirkungen von Medikamenten)"
  },
  {
    "code" : "barrier-no-knowledge",
    "display" : "Kein Wissen darüber, wo man Hilfe suchen kann"
  },
  {
    "code" : "barrier-other-reason",
    "display" : "Anderer Grund"
  }]
}

```
