# ELGA.MOPED\Entlassungsart des Patienten - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Entlassungsart des Patienten**

## CodeSystem: Entlassungsart des Patienten (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/EntlassungsartCS | *Version*:0.1.0 | |
| Active as of 2026-03-24 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:EntlassungsartCS |

 
CodeSystem für die Entlassungsart des Patienten 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EntlassungsartAVS](ValueSet-EntlassungsartAVS.md)
* [EntlassungsartSVS](ValueSet-EntlassungsartSVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "EntlassungsartCS",
  "url" : "https://elga.moped.at/CodeSystem/EntlassungsartCS",
  "version" : "0.1.0",
  "name" : "EntlassungsartCS",
  "title" : "Entlassungsart des Patienten",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-03-24T19:35:33+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "CodeSystem für die Entlassungsart des Patienten",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 27,
  "concept" : [{
    "code" : "KaOrg_1",
    "display" : "Urlaub"
  },
  {
    "code" : "KaOrg_2",
    "display" : "Rehabilitation angezeigt"
  },
  {
    "code" : "KaOrg_3",
    "display" : "Asylierung"
  },
  {
    "code" : "4",
    "display" : "Entlassung gegen Revers"
  },
  {
    "code" : "KaOrg_5",
    "display" : "AUVA Ende der Arbeitsunfähigkeit"
  },
  {
    "code" : "KaOrg_6",
    "display" : "AUVA Ende der ambulanten Behandlung"
  },
  {
    "code" : "KaOrg_7",
    "display" : "AUVA Ende der ambulanten Behandlung und Ende der Arbeitsunfähigkeit"
  },
  {
    "code" : "KaOrg_8",
    "display" : "Ende Rehabilitationsaufenthalt stationär"
  },
  {
    "code" : "KaOrg_9",
    "display" : "Ende Rehabilitationsaufenthalt ambulant"
  },
  {
    "code" : "E",
    "display" : "Entlassung aus dem Krankenhaus"
  },
  {
    "code" : "KaOrg_K",
    "display" : "Ende Kurheilverfahren stationär"
  },
  {
    "code" : "T",
    "display" : "Transfer in eine andere Krankenanstalt"
  },
  {
    "code" : "S",
    "display" : "Sterbefall"
  },
  {
    "code" : "A",
    "display" : "Krankenhausinterne Verlegung vom Bereich der Rehabilitation und vom ausschließlichen Bereich der Pflege in den allgemeinen stationären Bereich (inkl. Intensivbereich)"
  },
  {
    "code" : "KaOrg_H",
    "display" : "Abschluss eines Aufenthaltes im halbstationären Bereich oder krankenhausinterne Verlegung in den halbstationären Bereich"
  },
  {
    "code" : "R",
    "display" : "Krankenhausinterne Verlegung in den Bereich der Rehabilitation"
  },
  {
    "code" : "P",
    "display" : "Krankenhausinterne Verlegung in den ausschließlichen Bereich der Pflege"
  },
  {
    "code" : "LKF_L",
    "display" : "Kennzeichen der Datensätze, die zum Zeitpunkt der Asylierung dokumentarisch abgeschlossen werden"
  },
  {
    "code" : "LKF_V",
    "display" : "Kennzeichen für noch nicht abgeschlossene Aufenthalte von am Jahresende verbleibenden Patient:innen"
  },
  {
    "code" : "LKF_1",
    "display" : "Zuweisung an eine:n Allgemeinmediziner:in"
  },
  {
    "code" : "LKF_2",
    "display" : "Zuweisung an einen Facharzt/eine Fachärztin"
  },
  {
    "code" : "LKF_3",
    "display" : "Zuweisung an die eigene/eine andere Krankenanstalt zur ambulanten Weiterbetreuung"
  },
  {
    "code" : "LKF_5",
    "display" : "Zuweisung an die eigene/eine andere Krankenanstalt zur stationären Aufnahme"
  },
  {
    "code" : "LKF_6",
    "display" : "Wiederbestellung"
  },
  {
    "code" : "LKF_7",
    "display" : "Behandlungsende, keine Zuweisung"
  },
  {
    "code" : "LKF_8",
    "display" : "Sterbefall"
  },
  {
    "code" : "LKF_9",
    "display" : "Sonstige Abgangsart"
  }]
}

```
