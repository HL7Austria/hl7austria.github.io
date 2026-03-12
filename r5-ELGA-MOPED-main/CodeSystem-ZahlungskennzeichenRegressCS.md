# ELGA.MOPED\CodeSystem Zahlungskennzeichen Regress - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CodeSystem Zahlungskennzeichen Regress**

## CodeSystem: CodeSystem Zahlungskennzeichen Regress (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/ZahlungskennzeichenRegressCS | *Version*:0.1.0 | |
| Active as of 2026-03-12 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:ZahlungskennzeichenRegressCS |

 
CodeSystem Zahlungskennzeichen Regress 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ZahlungskennzeichenVS](ValueSet-ZahlungskennzeichenVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ZahlungskennzeichenRegressCS",
  "url" : "https://elga.moped.at/CodeSystem/ZahlungskennzeichenRegressCS",
  "version" : "0.1.0",
  "name" : "ZahlungskennzeichenRegressCS",
  "title" : "CodeSystem Zahlungskennzeichen Regress",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-03-12T09:42:23+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "CodeSystem Zahlungskennzeichen Regress",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "K",
    "display" : "kein Regress (letzte Meldung)"
  },
  {
    "code" : "T",
    "display" : "Teilzahlung"
  },
  {
    "code" : "N",
    "display" : "Nicht Einbringlich-Abschreibung (letzte Mel-\ndung)"
  },
  {
    "code" : "E",
    "display" : "Endzahlung"
  }]
}

```
