# ELGA.MOPED\Moped Aufnahmeart des Patienten - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Moped Aufnahmeart des Patienten**

## CodeSystem: Moped Aufnahmeart des Patienten (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/AbgangsartCS | *Version*:0.1.0 | |
| Active as of 2026-01-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AbgangsartCS |

 
Zulässige Ausprägungen Aufnahmeart (LKF & KaOrg) 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AbgangsartVS](ValueSet-AbgangsartVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "AbgangsartCS",
  "url" : "https://elga.moped.at/CodeSystem/AbgangsartCS",
  "version" : "0.1.0",
  "name" : "AbgangsartCS",
  "title" : "Moped Aufnahmeart des Patienten",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-01-07T10:11:40+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://elga.gv.at"
        }
      ]
    }
  ],
  "description" : "Zulässige Ausprägungen Aufnahmeart (LKF & KaOrg)",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "1",
      "display" : "Lebend"
    },
    {
      "code" : "2",
      "display" : "Lebend mit Therapiereduktion"
    },
    {
      "code" : "3",
      "display" : "Gestorben"
    },
    {
      "code" : "4",
      "display" : "Gestorben mit Therapiereduktion"
    }
  ]
}

```
