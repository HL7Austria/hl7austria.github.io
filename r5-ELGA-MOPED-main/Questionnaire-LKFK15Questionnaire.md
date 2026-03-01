# ELGA.MOPED\LKF K15 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF K15 Questionnaire**

## Questionnaire: LKF K15 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFK15Questionnaire | *Version*:0.1.0 | |
| Active as of 2026-03-01 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
LKF K15 Questionnaire - Kalkulatorischer Anhang – Allgemeine Kostenbereiche 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFK15Questionnaire",
  "url" : "https://elga.moped.at/Questionnaire/LKFK15Questionnaire",
  "version" : "0.1.0",
  "title" : "LKF K15 Questionnaire",
  "status" : "active",
  "date" : "2026-03-01T19:57:07+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "LKF K15 Questionnaire - Kalkulatorischer Anhang – Allgemeine Kostenbereiche",
  "item" : [{
    "linkId" : "satzartenkennzeichen",
    "text" : "Satzartenkennzeichen",
    "type" : "string",
    "readOnly" : true,
    "maxLength" : 3,
    "initial" : [{
      "valueString" : "K15"
    }]
  },
  {
    "linkId" : "jahr",
    "text" : "Jahr",
    "type" : "integer",
    "maxLength" : 4
  },
  {
    "linkId" : "krankenanstaltennummer",
    "text" : "Krankenanstaltennummer",
    "type" : "string",
    "maxLength" : 6
  },
  {
    "linkId" : "kostenbereichs-kennzahlenindex",
    "text" : "Kostenbereichs-Kennzahlenindex",
    "type" : "coding",
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "K1",
        "display" : "Küche – Tablettsystem"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "K2",
        "display" : "Küche – Schöpfsystem"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "K3",
        "display" : "Küche – Cook and Chill"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://tbd.at/LKF",
        "code" : "K9",
        "display" : "Seite 158 Handbuch zur Dokumentation – Anhang 1 (Aufbau und Inhalt der Datenmeldungen) 4.30 Satzart K15 – Kalkulatorischer Anhang – Allgemeine Kosten- bereiche Hinweis: Verweise auf das „Handbuch zur Dokumentation von Kostendaten in landesgesundheitsfondsfinanzierten Krankenanstalten“ erfolgen mit der Kurz- bezeichnung „KORE-Handbuch“. 4.30.1 Satzartenkennzeichen Das Datenfeld kennzeichnet die aktuelle Satzart und ist mit \"K15\" zu befüllen. 4.30.2 Jahr Das Berichtsjahr ist 4-stellig einzugeben (JJJJ). 4.30.3 Krankenanstaltennummer Dieses Datenfeld ist mit der jeweiligen Krankenanstaltennummer zu befüllen („Kxxx“). Die entsprechende Liste wird vom für das Gesundheitswesen zuständigen Bundesministerium zur Verfügung gestellt. 4.30.4 Kostenbereichs-Kennzahlenindex Es ist der Allgemeine Kostenbereich entsprechend folgender Tabelle anzugeben: Index Allgemeiner Kostenbereich K1 Küche – Tablettsystem K2 Küche – Schöpfsystem K3 Küche – Cook and Chill K9"
      }
    }]
  },
  {
    "linkId" : "kosten",
    "text" : "Kosten",
    "type" : "integer",
    "maxLength" : 10
  },
  {
    "linkId" : "bezugsgröße",
    "text" : "Bezugsgröße",
    "type" : "integer",
    "maxLength" : 10
  }]
}

```
