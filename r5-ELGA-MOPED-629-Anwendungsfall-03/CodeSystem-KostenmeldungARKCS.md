# ELGA.MOPED\Kostenmeldung für (A/R/K) - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Kostenmeldung für (A/R/K)**

## CodeSystem: Kostenmeldung für (A/R/K) (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/KostenmeldungARKCS | *Version*:0.1.0 | |
| Active as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:KostenmeldungARKCS |

 
CodeSystem für die Art der Kostenmeldung 

 This Code system is referenced in the content logical definition of the following value sets: 

* [KostenmeldungARKVS](ValueSet-KostenmeldungARKVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "KostenmeldungARKCS",
  "url" : "https://elga.moped.at/CodeSystem/KostenmeldungARKCS",
  "version" : "0.1.0",
  "name" : "KostenmeldungARKCS",
  "title" : "Kostenmeldung für (A/R/K)",
  "status" : "active",
  "experimental" : true,
  "date" : "2025-10-15T12:16:02+00:00",
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
  "description" : "CodeSystem für die Art der Kostenmeldung",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "A",
      "display" : "Ausländerverrechnung"
    },
    {
      "code" : "R",
      "display" : "Regressangelegenheiten"
    },
    {
      "code" : "K",
      "display" : "Kosteninformation"
    }
  ]
}

```
