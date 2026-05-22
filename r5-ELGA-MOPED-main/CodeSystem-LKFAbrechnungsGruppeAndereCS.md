# ELGA.MOPED\LKF Abrechnungsgruppe Andere - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF Abrechnungsgruppe Andere**

## CodeSystem: LKF Abrechnungsgruppe Andere (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/LKFAbrechnungsGruppeAndereCS | *Version*:0.1.0 | |
| Active as of 2026-05-22 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:LKFAbrechnungsGruppeAndereCS |

 
LKF Abrechnungsgruppe Andere 

 This Code system is referenced in the content logical definition of the following value sets: 

* [LKFAbrechnungsGruppeVS](ValueSet-LKFAbrechnungsGruppeVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "LKFAbrechnungsGruppeAndereCS",
  "url" : "https://elga.moped.at/CodeSystem/LKFAbrechnungsGruppeAndereCS",
  "version" : "0.1.0",
  "name" : "LKFAbrechnungsGruppeAndereCS",
  "title" : "LKF Abrechnungsgruppe Andere",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-05-22T08:08:56+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "LKF Abrechnungsgruppe Andere",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 11,
  "concept" : [{
    "code" : "DIAG0PKT",
    "display" : "bei Patient:innen, deren codierte Hauptdiagnose für einen stationären Aufenthalt alleine nicht plausibel ist"
  },
  {
    "code" : "FEHLER",
    "display" : "bei fehlerhaften Datensätzen"
  },
  {
    "code" : "GERIAT",
    "display" : "bei Patient:innen mit ausschließlichem Aufenthalt auf einer Einheit für Akutgeriatrie/Remobilisation"
  },
  {
    "code" : "HKLE",
    "display" : "bei Patient:innen mit ausschließlichem Aufenthalt auf einer Einheit für hochkontagiöse lebensbedrohliche Erkrankungen"
  },
  {
    "code" : "KJP",
    "display" : "bei Patient:innen mit ausschließlichem Aufenthalt auf einer Einheit für Kinder- und Jugendpsychiatrie"
  },
  {
    "code" : "LANGZEIT",
    "display" : "bei der Aufnahmeart \"L\""
  },
  {
    "code" : "NEURO",
    "display" : "bei Patient:innen mit ausschließlichem Aufenthalt auf einer Einheit für Akut-Nachbehandlung von neurologischen Patienten"
  },
  {
    "code" : "PALLIAT",
    "display" : "bei Patient:innen mit ausschließlichem Aufenthalt auf einer palliativmedizinischen Einheit"
  },
  {
    "code" : "PFLEGE",
    "display" : "bei der Aufnahmeart \"P\""
  },
  {
    "code" : "REMOB",
    "display" : "bei Patient:innen mit ausschließlichem Aufenthalt auf einer Einheit für Remobilisation/Nachsorge"
  },
  {
    "code" : "VERBLEIB",
    "display" : "bei am Jahresende verbleibenden Patient:innen"
  }]
}

```
