# ELGA.MOPED\Moped Aufnahmeart des Patienten - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Moped Aufnahmeart des Patienten**

## CodeSystem: Moped Aufnahmeart des Patienten (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/AufnahmeartCS | *Version*:0.1.0 | |
| Active as of 2026-03-01 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AufnahmeartCS |

 
Zulässige Ausprägungen Aufnahmeart (LKF & KaOrg) 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AufnahmeartVS](ValueSet-AufnahmeartVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "AufnahmeartCS",
  "url" : "https://elga.moped.at/CodeSystem/AufnahmeartCS",
  "version" : "0.1.0",
  "name" : "AufnahmeartCS",
  "title" : "Moped Aufnahmeart des Patienten",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-03-01T19:57:07+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Zulässige Ausprägungen Aufnahmeart (LKF & KaOrg)",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 23,
  "concept" : [{
    "code" : "A",
    "display" : "Aufnahme in den allgemein stationären Bereich inkl. Aufnahme auf Intensiveinheiten"
  },
  {
    "code" : "T",
    "display" : "Transfer von einem anderen Krankenhaus in den allgemein stationären Bereich inkl. Intensiveinheiten"
  },
  {
    "code" : "W",
    "display" : "Wiederaufnahme in den allgemein stationären Bereich inkl. Wiederaufnahme auf Intensiveinheiten"
  },
  {
    "code" : "R",
    "display" : "Aufnahme in den Bereich der Rehabilitation"
  },
  {
    "code" : "K",
    "display" : "Aufnahme eines 0-Tagesfalls"
  },
  {
    "code" : "L",
    "display" : "Kennzeichen der Datensätze, die den Patientenaufenthalt nach dem Zeitpunkt der Asylierung beschreiben"
  },
  {
    "code" : "G",
    "display" : "Aufnahme eines Frühgeborenen/Neugeborenen am Tag der Geburt oder am Folgetag in den allgemein stationären Bereich inkl. Aufnahme auf Intensiveinheiten"
  },
  {
    "code" : "LKF_P",
    "display" : "Aufnahme in den ausschließlichen Bereich der Pflege"
  },
  {
    "code" : "KaOrg_3",
    "display" : "Ambulanzfall"
  },
  {
    "code" : "KaOrg_7",
    "display" : "AUVA Wiederaufnahme (Diagnose der Aufnahme enthält Diagnose der Ersterkrankung. Aufnahmezahl AUFZL enthält jene des Erstberichtes)."
  },
  {
    "code" : "KaOrg_8",
    "display" : "Kurheilverfahren stationär"
  },
  {
    "code" : "KaOrg_9",
    "display" : "Rehabilitationsaufenthalt ambulant"
  },
  {
    "code" : "KaOrg_U",
    "display" : "Urgenz"
  },
  {
    "code" : "KaOrg_1",
    "display" : "Verlängerung"
  },
  {
    "code" : "KaOrg_2",
    "display" : "Asylierung"
  },
  {
    "code" : "KaOrg_E",
    "display" : "Erinnerung (Urgenz von Ambulanzmeldungen)"
  },
  {
    "code" : "LKF_1",
    "display" : "Fremdzuweisung von einem:einer Allgemeinmediziner:in"
  },
  {
    "code" : "LKF_2",
    "display" : "Fremdzuweisung von einem Facharzt/einer Fachärztin"
  },
  {
    "code" : "LKF_3",
    "display" : "Fremdzuweisung von der eigenen/einer anderen Krankenanstalt ohne bestehenden stationären Aufenthalt"
  },
  {
    "code" : "LKF_4",
    "display" : "Fremdzuweisung von einem Notarzt/einer Notärztin"
  },
  {
    "code" : "LKF_5",
    "display" : "Selbstzuweisung (ohne Einweisungsschein)"
  },
  {
    "code" : "LKF_6",
    "display" : "Wiederbestellung"
  },
  {
    "code" : "LKF_9",
    "display" : "Sonstige Zuweisung (durch Behörde, Pflegeeinrichtung, etc.)"
  }]
}

```
