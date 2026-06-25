# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE EHIS-PAQ Answer Set - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE EHIS-PAQ Answer Set**

## CodeSystem: AT PreNUDGE EHIS-PAQ Answer Set 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-physicalactivity-codesystem-ehispaq | *Version*:0.1.0 | |
| Retired as of 2026-06-25 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeEhisPaqScale |
| **Copyright/Legal**: European Health Interview Survey Physical Activity Questionnaire (EHIS-PAQ). Eurostat / STATISTIK AUSTRIA. Reproduziert für das PreNUDGE Forschungsprojekt. | | |

 
Consolidated CodeSystem for all options from the EHIS-PAQ questionnaires (European Health Interview Survey Physical Activity Questionnaire) used in PreNUDGE. Contains two answer scales: days per week (Q4, Q6 in EhisPaqPhysicalActivityQuestionnaire; also Q2 in StepCountEhisPaqQuestionnaire) and activity duration per day (Q3 in StepCountEhisPaqQuestionnaire, Q5 in EhisPaqPhysicalActivityQuestionnaire). Codes are in English; display values remain in German. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-06-25

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "at-prenudge-physicalactivity-codesystem-ehispaq",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-physicalactivity-codesystem-ehispaq",
  "version" : "0.1.0",
  "name" : "AtPrenudgeEhisPaqScale",
  "title" : "AT PreNUDGE EHIS-PAQ Answer Set",
  "status" : "retired",
  "experimental" : false,
  "date" : "2026-06-25T12:51:02+00:00",
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
  "description" : "Consolidated CodeSystem for all options from the EHIS-PAQ questionnaires (European Health Interview Survey Physical Activity Questionnaire) used in PreNUDGE. Contains two answer scales: days per week (Q4, Q6 in EhisPaqPhysicalActivityQuestionnaire; also Q2 in StepCountEhisPaqQuestionnaire) and activity duration per day (Q3 in StepCountEhisPaqQuestionnaire, Q5 in EhisPaqPhysicalActivityQuestionnaire). Codes are in English; display values remain in German.",
  "copyright" : "European Health Interview Survey Physical Activity Questionnaire (EHIS-PAQ). Eurostat / STATISTIK AUSTRIA. Reproduziert für das PreNUDGE Forschungsprojekt.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 14,
  "concept" : [{
    "code" : "ehis-never-or-rarely",
    "display" : "Nie oder seltener als einmal pro Woche"
  },
  {
    "code" : "ehis-1-day",
    "display" : "1 Tag pro Woche"
  },
  {
    "code" : "ehis-2-days",
    "display" : "2 Tage pro Woche"
  },
  {
    "code" : "ehis-3-days",
    "display" : "3 Tage pro Woche"
  },
  {
    "code" : "ehis-4-days",
    "display" : "4 Tage pro Woche"
  },
  {
    "code" : "ehis-5-days",
    "display" : "5 Tage pro Woche"
  },
  {
    "code" : "ehis-6-days",
    "display" : "6 Tage pro Woche"
  },
  {
    "code" : "ehis-7-days",
    "display" : "7 Tage pro Woche"
  },
  {
    "code" : "ehis-0-9-min",
    "display" : "0–9 Minuten pro Tag",
    "definition" : "Aktivitätsdauer unter 10 Minuten. Gilt ausschließlich für Q3-walking-duration."
  },
  {
    "code" : "ehis-10-29-min",
    "display" : "10–29 Minuten pro Tag"
  },
  {
    "code" : "ehis-30-59-min",
    "display" : "30–59 Minuten pro Tag"
  },
  {
    "code" : "ehis-1h-under-2h",
    "display" : "1 Stunde bis unter 2 Stunden pro Tag"
  },
  {
    "code" : "ehis-2h-under-3h",
    "display" : "2 Stunden bis unter 3 Stunden pro Tag"
  },
  {
    "code" : "ehis-3h-or-more",
    "display" : "3 Stunden pro Tag oder mehr"
  }]
}

```
