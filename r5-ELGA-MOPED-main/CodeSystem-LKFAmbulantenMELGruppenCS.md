# ELGA.MOPED\LKF Ambulante MEL-Gruppen - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF Ambulante MEL-Gruppen**

## CodeSystem: LKF Ambulante MEL-Gruppen (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/LKFAmbulantenMELGruppenCS | *Version*:0.1.0 | |
| Active as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:LKFAmbulantenMELGruppenCS |

 
LKF Ambulante MEL-Gruppen 

 This Code system is referenced in the content logical definition of the following value sets: 

* [LKFAbrechnungsGruppeVS](ValueSet-LKFAbrechnungsGruppeVS.md)
* [LKFAmbulantenMELGruppenVS](ValueSet-LKFAmbulantenMELGruppenVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "LKFAmbulantenMELGruppenCS",
  "url" : "https://elga.moped.at/CodeSystem/LKFAmbulantenMELGruppenCS",
  "version" : "0.1.0",
  "name" : "LKFAmbulantenMELGruppenCS",
  "title" : "LKF Ambulante MEL-Gruppen",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-04-07T10:38:55+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "LKF Ambulante MEL-Gruppen",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 15,
  "concept" : [{
    "code" : "AMG00.90",
    "display" : "Ambulanter Kontakt mit anderen, nicht-tagesklinischen Leistungen aus dem stationären Bepunktungsmodell"
  },
  {
    "code" : "AMG20.05",
    "display" : "Ambulante Tagesbehandlung in der Psychiatrie"
  },
  {
    "code" : "AMG20.06",
    "display" : "Ambulante tagesstrukturierende Behandlung in der Psychiatrie"
  },
  {
    "code" : "AMG20.07",
    "display" : "Ambulante Tagesbehandlung in der Kinder- und Jugendpsychiatrie (KJP)"
  },
  {
    "code" : "AMG20.08",
    "display" : "Ambulante tagesstrukturierende Behandlung in der Kinder- und Jugendpsychiatrie (KJP)"
  },
  {
    "code" : "AMG20.11",
    "display" : "Ambulante Tagesbehandlung in der Akutgeriatrie/Remobilisation (AG/R)"
  },
  {
    "code" : "AMG20.12",
    "display" : "Ambulante Tagesbehandlung auf einer Einheit für PSO (Erwachsene)"
  },
  {
    "code" : "AMG20.13",
    "display" : "Ambulante Tagesbehandlung auf einer Einheit für PSO (Kinder und Jugendliche)"
  },
  {
    "code" : "AMG21.15",
    "display" : "Andere, zusätzliche oder begleitende onkologische Therapie - Antimykotika"
  },
  {
    "code" : "AMG21.25",
    "display" : "Andere, zusätzliche oder begleitende onkologische Therapie - antivirale Therapie"
  },
  {
    "code" : "AMG21.51",
    "display" : "Zusätzliche onkologische Therapie - bestrahltes Erythrozytenkonzentrat"
  },
  {
    "code" : "AMG21.52",
    "display" : "Zusätzliche onkologische Therapie - Leukozytenkonzentrat"
  },
  {
    "code" : "AMG21.53",
    "display" : "Behandlung mit unspezifischen IgG 10-35g"
  },
  {
    "code" : "AMG21.54",
    "display" : "Behandlung mit unspezifischen IgG > 35g"
  },
  {
    "code" : "AMG21.55",
    "display" : "Antilymphozytenglobulin bei aplastischer Anämie"
  }]
}

```
